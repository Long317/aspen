package com.hoticket.modal;

import java.io.Serializable;

import javax.persistence.*;

@Entity
@Table(name="cast")
public class Cast implements Serializable{
	private static final long serialVersionUID = 1L;
	 @Id
	 @GeneratedValue
	 @Column(name="id")
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="img_url")
	private String img_url;
	@Column (name="info_url")
	private String info_url;
    @ManyToOne
    @JoinColumn(name="movie_id")
    private Movie movie;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg_url() {
		return img_url;
	}
	public void setImg_url(String img_url) {
		this.img_url = img_url;
	}
	public String getInfo_url() {
		return info_url;
	}
	public void setInfo_url(String info_url) {
		this.info_url = info_url;
	}
	public Movie getMovie() {
		return movie;
	}
	public void setMovie(Movie movie) {
		this.movie = movie;
	}

}
