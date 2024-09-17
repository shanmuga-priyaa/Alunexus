<?php 
include 'admin/db_connect.php'; 
?>
<style>
#portfolio .img-fluid{
    width: calc(100%);
    height: 30vh;
    z-index: -1;
    position: relative;
    padding: 1em;
}
.gallery-list{
cursor: pointer;
border: unset;
flex-direction: inherit;
}
.gallery-img,.gallery-list .card-body {
    width: calc(50%)
}
.gallery-img img{
    border-radius: 5px;
    min-height: 50vh;
    max-width: calc(100%);
}
span.hightlight{
    background: yellow;
}
.carousel,.carousel-inner,.carousel-item{
   min-height: calc(100%)
}
header.masthead,header.masthead:before {
        min-height: 50vh !important;
        height: 50vh !important
    }
.row-items{
    position: relative;
}
.card-left{
    left:0;
}
.card-right{
    right:0;
}
.rtl{
    direction: rtl ;
}
.gallery-text{
    justify-content: center;
    align-items: center ;
}
.masthead{
        min-height: 23vh !important;
        height: 23vh !important;
    }
     .masthead:before{
        min-height: 23vh !important;
        height: 23vh !important;
    }
        /* CSS for styling the buttons */
        button {
            background-color: white; 
            border: none;
            color: black; 
            padding: 20px 30px; /* Padding */
            text-align: center; /* Center text */
            text-decoration: none;
            display: inline-block;
            font-size: 25px; /* Font size */
            margin: 4px 2px; /* Margin */
            cursor: pointer; /* Pointer cursor */
            border-radius: 5px; /* Rounded corners */
            transition-duration: 0.4s; /* Transition duration */
        }

        /* Button hover effect */
        button:hover {
            background-color: white;
        }

        /* Button active effect */
        button:active {
            background-color: #72cdf7; 
            transform: translateY(1px); /* Move button down slightly when clicked */
        }
        .button-container {
            text-align: center;
            margin-top: 10px;
        }
        .image-gallery {
            display: none; /* Hide image gallery by default */
            margin-top: 20px;
            justify-content:center;
        }
        .image-gallery img {
            width: 500px;
            height: 500PX;
            margin-bottom: 10px;
            
        }
       
</style>
        <header class="masthead">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center justify-content-center text-center">
                <div class="col-lg-8 align-self-end mb-5 page-title">
                    <h3 class="text-white">Gallery</h3>
                    <hr class="divider my-4" />
                </div>
            </div>
        </div>
    </header>
   

    <!-- Button container -->
    <div class="button-container">
        <button id="showGallery1">2020-Gallery</button>
        <button id="showGallery2">2021-Gallery</button>
        <button id="showGallery3">2022-Gallery</button>
        <button id="showGallery4">2023-Gallery</button>
        <button id="showGallery5">2024-Gallery</button>
    </div><br><br><br><br>
    <!-- Image galleries -->
    <div class="image-gallery" id="galleryContainer1" style="text-align:center;">
        <img src="admin/assets/uploads/gallery/3_img.jpg" alt="">&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/4_img.jpg" alt="">&nbsp;&nbsp;&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/offstage.jpg" alt="">&nbsp;&nbsp;
    </div>

    <div class="image-gallery" id="galleryContainer2" style="text-align:center;">
        <img src="admin/assets/uploads/gallery/cook.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/onstage.JPG" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/6_img.jpg" alt="">&nbsp;&nbsp;
    </div>

    <div class="image-gallery" id="galleryContainer3" style="text-align:center;">
        <img src="admin/assets/uploads/gallery/coding.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/dance.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/event1.jpg" alt="">&nbsp;&nbsp;
    </div>

    <div class="image-gallery" id="galleryContainer4" style="text-align:center;">
        <img src="admin/assets/uploads/gallery/game.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/idol.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/mehan.jpeg" alt="">&nbsp;&nbsp;
    </div>

    <div class="image-gallery" id="galleryContainer5" style="text-align:center;">
        <img src="admin/assets/uploads/gallery/quiz.png" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/sing.jpg" alt="">&nbsp;&nbsp;
        <img src="admin/assets/uploads/gallery/tech.jpeg" alt="">&nbsp;&nbsp;
    </div>

    <script>
        // Function to hide all galleries
        function hideAllGalleries() {
            var galleries = document.querySelectorAll('.image-gallery');
            galleries.forEach(function(gallery) {
                gallery.style.display = 'none'; // Hide gallery
            });
        }

        // Add event listeners to each button
        document.getElementById('showGallery1').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer1').style.display = 'block'; // Show gallery 1
        });

        document.getElementById('showGallery2').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer2').style.display = 'block'; // Show gallery 2
        });

        document.getElementById('showGallery3').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer3').style.display = 'block'; // Show gallery 1
        });

        document.getElementById('showGallery4').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer4').style.display = 'block'; // Show gallery 1
        });

        document.getElementById('showGallery5').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer5').style.display = 'block'; // Show gallery 1
        });
    </script>
</body>
</html>















 
            