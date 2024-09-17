 <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end mb-4" style="background: #0000002e;">
                    	 <h1 class="text-uppercase text-white font-weight-bold">About Us</h1>
                        <hr class="divider my-4" />
                    </div>
                    
                </div>
            </div>
        </header>
        <section id="about">
        <div class="container">

            <header class="section-header">
                <h3>About The Network</h3>
                <p>
                Alumni management comprises a foundational database for storing alumni information, enabling effective tracking of engagement and seamless sharing of data among colleagues. The systems have traditionally focused on basic communication and event coordination.“ Alunexus” is an innovative web application crafted to redefine alumni engagement. Offering dedicated discussion forums, seamless LinkedIn integration by pytesstract, and a comprehensive news feed with an event calendar, the system serves as a vital hub for alumni interaction and networking. With its intuitive interface, alumni can easily connect with fellow graduates, share insights, and stay updated on upcoming events and news within the alumni community. 
</p>
                <div class="row about-cols">

                    <div class="col-md-4 wow fadeInUp">
                        <div class="about-col">
                            <div class="img">
                                <img src="{%static 'base/img/bg1.jpg'%}" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-speedometer-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Step 1</a></h2>
                            <p>
                                Sign-up now by going to the alumni sign-up page. Choose a username and password.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="about-col">
                            <div class="img">
                                <img src="{%static 'base/img/bg2.jpg'%}" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-list-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Step 2</a></h2>
                            <p>
                                Complete your profile details. Add your work, photo, bio for easy verification from the college.
                            </p>
                        </div>
                    </div>

                    <div class="col-md-4 wow fadeInUp" data-wow-delay="0.2s">
                        <div class="about-col">
                            <div class="img">
                                <img src="{% static 'base/img/bg3.jpg' %}" alt="" class="img-fluid">
                                <div class="icon"><i class="ion-ios-eye-outline"></i></div>
                            </div>
                            <h2 class="title"><a href="#">Step 3</a></h2>
                            <p>
                                Monitor your college and participate in events conducted by your college.
                            </p>
                        </div>
                    </div>

                </div>

        </div>

    <section class="page-section">
        <div class="container">
    <?php echo html_entity_decode($_SESSION['system']['about_content']) ?>        
            
        </div>
        </section>