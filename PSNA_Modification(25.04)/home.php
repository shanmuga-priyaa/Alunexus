
<?php 
include ('admin/db_connect.php'); 
?>
<html>
<style>

.carousel-item {
    position: relative;
    width: 100%;
    display: none;
    transition: transform 0.6s ease;
}

.carousel-item.active {
    display: block;
}

.carousel-background img {
    width: 100%;
    height: 720px; /* Adjust height as needed */
    object-fit: cover; /* Ensure the image covers the entire container */
}

.carousel-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center; 
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;

}

.carousel-content h2 {
    font-size: 36px; /* Adjust font size as needed */
    margin-bottom: 20px; /* Adjust spacing as needed */
}

.carousel-content p {
    font-size: 25px;
    line-height: 1.5; /* Adjust line height as needed */
    margin-bottom: 30px;
}

.carousel-content a.btn-get-started {
    display: inline-block;
    padding: 10px 20px;
    background-color: #007bff; /* Button background color */
    color: #fff; /* Button text color */
    text-decoration: none;
    border-radius: 5px; /* Adjust border radius as needed */
    transition: background-color 0.3s ease;
}

.carousel-content a.btn-get-started:hover {
    background-color: #0056b3; /* Button background color on hover */
}
#portfolio .img-fluid{
    width: calc(100%);
    height: 30vh;
    z-index: -1;
    position: relative;
    padding: 1em;
}
.event-list{
cursor: pointer;
}
span.hightlight{
    background: yellow;
}
.banner{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 26vh;
        width: calc(30%);
    }
    .banner img{
        width: calc(100%);
        height: calc(100%);
        cursor :pointer;
    }
.event-list{
cursor: pointer;
border: unset;
flex-direction: inherit;
}

.event-list .banner {
    width: calc(40%)
}
.event-list .card-body {
    width: calc(60%)
}
.event-list .banner img {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    min-height: 50vh;
}
span.hightlight{
    background: yellow;
}
.banner{
   min-height: calc(100%)
}
</style>

<main id="main">
            <div class="container-fluid h-75">
                <div class="row h-75 align-items-center justify-content-center text-center">
        <section id="intro">
    <div class="intro-container">
        <div id="introCarousel" class="carousel  slide carousel-fade" data-ride="carousel">

            <ol class="carousel-indicators"></ol>

            <div class="carousel-inner" role="listbox">

                <div class="carousel-item active">
                    <div class="carousel-background"><img src=bg1.jpg  alt="" style="height: 720px;opacity : 0.7; background : rgba(0, 0, 0, 0.5); filter:brightness(50%);"></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 style ="color :#000000"><b>Welcome to the Alumni Social Network</b></h2>
                            <p style="font-size:35px ;color :white">
                                Be a part of a network comprosing of  Colleges. Sign up now and be a part of the massive community of fellow alumni an colleges.
                            </p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="bg5.jpg" alt="" style="height: 720px;opacity : 0.7; background : rgba(0, 0, 0, 0.5); filter:brightness(30%);"></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 style ="color :#000000"><b>Stay in contact of your College</b></h2>
                            <p style="font: size 35px;color :white">
                                Discover what your college is up to. Stay one click away from your Alma Matter.
                        </p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background" ><img src="bg3.jpg" alt="" style="height: 720px;opacity : 0.5;background : rgba(0, 0, 0, 0.5); filter:brightness(50%);"></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 style ="color :#000000"><b>Find old batchmates.</h2>
                            <p style="font-size:35px  ;color : white">
                                Miss your batchmates? Can't find their contact number. Find it right here. All your friends can be found right here.
                        </p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="bg4.png" alt="" style="height: 720px;opacity : 0.5;background : rgba(0, 0, 0, 0.5); filter:brightness(50%);"></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 style ="color :#000000">Officially Supported</h2>
                            <p style="font-size:35px ; color :white">
                                This network is officially supported, and built for you .
                            </p>
                        </div>
                    </div>
                </div>

                <div class="carousel-item">
                    <div class="carousel-background"><img src="bg5.jpg" alt="" style="height: 720px;opacity : 0.7;background : rgba(0, 0, 0, 0.5); filter:brightness(30%);"></div>
                    <div class="carousel-container">
                        <div class="carousel-content">
                            <h2 style ="color :#000000">Participate in events from your college</h2>
                            <p style="font-size:35px;color :white">
                                Monitor events in your college, Participate in events, interact with juniors.
                            </p>
                        </div>
                    </div>
                </div>

            </div>

            <a class="carousel-control-prev" href="#introCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon ion-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>

            <a class="carousel-control-next" href="#introCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon ion-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>
</section>
</div>
    </div>
</main>
</html>
