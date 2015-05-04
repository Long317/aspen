     <%@ taglib prefix="s" uri="/struts-tags" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!--=== Header ===-->    
    <div class="header">
        <!-- Topbar -->
        <div class="topbar">
            <div class="container">
                <!-- Topbar Navigation -->
                <ul class="loginbar pull-right">
                 
                    <li><a href="page_faq.html">Help</a></li>  
                  <s:if test="#session.login== null">       
                     <c:redirect url="index.jsp"/>
                    </s:if>
                    <s:else>     
                        <li style="display:inline">
                        <a href="page_faq.html">Hi,
                            <s:property value="#session.login.first_name" />
                        </a></li>
                         <li style="display:inline"class="topbar-devider"></li>  
                          <li style="display:inline"><a href="signout">sign out</a></li>
                    </s:else>
                </ul>
                <!-- End Topbar Navigation -->
            </div>
        </div>
        <!-- End Topbar -->
    
        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="fa fa-bars"></span>
                    </button>
                    <a class="navbar-brand" href="index.jsp">
                        <img id="logo-header" src="assets/img/logo3.png" alt="Logo">
                    </a>
                </div>
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header ===-->  