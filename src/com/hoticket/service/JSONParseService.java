package com.hoticket.service;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import org.hibernate.Session;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.hoticket.dao.MovieDAO;
import com.hoticket.modal.Movie;
import com.hoticket.modal.Price_table;
import com.hoticket.modal.Showing;
import com.hoticket.modal.Theatre;
import com.hoticket.util.AddressConverter;
import com.hoticket.util.ConnectionUtil;

public class JSONParseService {

	static Object lock = new Object();
	
	 public boolean parse(String fullPath) {
			Session session = ConnectionUtil.getSessionFactory().openSession();
			FileReader fr = null;
			JSONParser parser = new JSONParser();
			GregorianCalendar calendar = new GregorianCalendar(2015, 4, 5);
			try {
				File f = new File(fullPath);
				fr = new FileReader(f);
				JSONArray shows = (JSONArray) parser.parse(fr);
				System.out.println(shows.size());
				for (int i = 0; i < shows.size(); i++) {
					Theatre t = new Theatre();
					// get address
					String address = ((JSONObject) shows.get(i)).get("addr")
							.toString();
					System.out.println(address);
					// two version of parse address
					String[] addrs = address.split(",");
					String[] ads = address.split(" ");
					// set attribute for theater
					if (ads[ads.length - 1].matches("-?\\d+(\\.\\d+)?")) {
						t.setZipcode(Integer.parseInt(ads[ads.length - 1]));
					}
					t.setState(ads[ads.length - 2]);
					t.setCity(addrs[1]);
					t.setAddress(addrs[0]);
					t.setName((String) ((JSONObject) shows.get(i)).get("name"));
					//get longitude and latitude
					try{
					synchronized (lock) {
					double [] geoData= AddressConverter.convertToLatLong(address);
					t.setLatitude(geoData[0]);
					t.setLongitude(geoData[1]);
					lock.wait(210);
					}
					}catch(Exception e){
						e.printStackTrace();
					}
					session.getTransaction().begin();
					session.save(t);
					session.getTransaction().commit();
					//set price table
					Price_table pt = new Price_table();
					Price_table pt1 = new Price_table();
					Price_table pt2 = new Price_table();
					pt.setTheatre(t);
					pt.setCategory("IMAX");
					pt.setPrice(12.99);
					pt1.setTheatre(t);
					pt1.setCategory("3D");
					pt1.setPrice(15.99);
					pt2.setTheatre(t);
					pt2.setCategory("normal");
					pt2.setPrice(7.99);
					session.getTransaction().begin();
					session.save(pt);
					session.save(pt1);
					session.save(pt2);
					session.getTransaction().commit();
					// get all movies json object
					JSONArray movies = (JSONArray) (((JSONObject) shows.get(i))
							.get("movies"));
					for (int j = 0; j < movies.size(); j++) {
						// Get corresponding movie object
						// variable to check if movie exists
						boolean isExist = false;
						Movie m = new Movie();
						List<Movie> ms = MovieDAO.getInstance().getMovies();
						String mTitle = (String) ((JSONObject) movies.get(j))
								.get("title");
						System.out.println(ms.size());
						if (!ms.isEmpty()) {
							for (int k = 0; k < ms.size(); k++) {
								if (ms.get(k).getName().trim()
										.equals(mTitle.trim())) {
									m = ms.get(k);
									isExist = true;
									break;
								}
							}
						}
						// check if movie has exited
						System.out.println(isExist);
						if (!isExist) {
							m.setImg_url((String) ((JSONObject) movies.get(j))
									.get("imgURL"));
							m.setGenre(((String) ((JSONObject) movies.get(j))
									.get("Genre")));
							String length = ((String) ((JSONObject) movies.get(j))
									.get("runTime"));
							int timeLength = 150;
							if (length.trim().length() == 10) {
								timeLength = (length.trim().charAt(0) - '0') * 60
										+ (length.trim().charAt(5) - '0') * 10
										+ (length.trim().charAt(6) - '0');
							}
							m.setLength(timeLength);
							m.setName(mTitle);
							session.beginTransaction();
							session.save(m);
							session.getTransaction().commit();
						}
						// create showing
						String showTime = ((JSONObject) movies.get(j)).get(
								"movieShowTime").toString();
						System.out.println(showTime);
						String[] showtimes = showTime.substring(2,
								showTime.length() - 2).split(",");
						for (int k = 0; k < showtimes.length; k++) {
							Showing s = new Showing();
							String time = showtimes[k].substring(1,
									showtimes[k].length() - 1);
							System.out.println(time);
							// convert time string to calender time
							if (time.contains("am")) {
								calendar.set(Calendar.AM_PM, Calendar.AM);
							} else {
								calendar.set(Calendar.AM_PM, Calendar.PM);
							}

							calendar.set(Calendar.HOUR,
									Integer.parseInt(time.split(":")[0]));
							if (time.contains("30")) {
								calendar.set(Calendar.MINUTE, 30);
							} else {
								calendar.set(Calendar.MINUTE, 0);
							}
							// set start_time for show
							s.setStart_time(new java.sql.Time(calendar
									.getTimeInMillis()));
							s.setDate(new java.sql.Date(calendar.getTimeInMillis()));
							s.setTicket_number(50);
							s.setTheatre(t);
							s.setMovie(m);
							if (m.getGenre().contains("IMAX")
									&& m.getName().contains("3D")) {
								s.setCategory("IMAX,3D");
							} else if (m.getName().contains("3D")) {
								s.setCategory("3D");
							} else if (m.getGenre().contains("IMAX")) {
								s.setCategory("IMAX");
							} else {
								s.setCategory("normal");
							}
							session.save(s);
						}
					}

				}

				session.close();

				return true;
			} catch (Exception ex) {
				ex.printStackTrace();
				return false;
			} finally {
				try {
					fr.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

		}

	}
