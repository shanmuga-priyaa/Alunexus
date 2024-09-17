<?php 
include ('admin/db_connect.php'); 
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
            padding: 20px 30px; 
            text-align: center; 
            text-decoration: none;
            display: inline-block;
            font-size: 25px; 
            margin: 4px 2px; 
            cursor: pointer; 
            border-radius: 5px; 
            transition-duration: 0.4s; 
        }

        /* Button hover effect */
        button:hover {
            background-color: white;
        }

        /* Button active effect */
        button:active {
            background-color: #72cdf7; 
            transform: translateY(1px); 
        }
        .button-container {
            text-align: center;
            margin-top: 10px;
        }
        .image-gallery {
            display: none; 
            margin-top: 20px;
            justify-content:center;
        }
        .image-gallery img {
            width: 500px;
            height: 500PX;
            margin-bottom: 10px;
            
        }
       
</style>
<body><br>
        <header class="masthead">
        <div class="container-fluid h-100">
            <div class="row h-100 align-items-center justify-content-center text-center">
                <div class="col-lg-8 align-self-end mb-5 page-title">
                    <h3 class="text-white"></h3>
                    <hr class="divider my-4" />
                </div>
            </div>
        </div>
    </header>

    <!-- Button container -->
<div class="button-container">
    <!-- <button id="showGallery1" onclick="showGallery('2020')">2020</button>
    <button id="showGallery2" onclick="showGallery('2021')">2021</button>
    <button id="showGallery3" onclick="showGallery('2022')">2022</button>-->
    <button id="showGallery4" onclick="showGallery('2023')">2023</button> 
    <button id="showGallery5" onclick="showGallery('2024')">2024</button>
</div><br>
<!-- Image galleries -->
<!-- <div class="image-gallery" id="galleryContainer1" style="text-align:center;">
    <button onclick="redirectToChat('2020', 'CSE')">CSE</button>
    <button onclick="redirectToChat('2020', 'ECE')">ECE</button>
    <button onclick="redirectToChat('2020', 'IT')">IT</button>
    <button onclick="redirectToChat('2020', 'Mech')">Mech</button>
    <button onclick="redirectToChat('2020', 'EEE')">EEE</button>
</div>
<div class="image-gallery" id="galleryContainer2" style="text-align:center;">
    <button onclick="redirectToChat('2021', 'ECE')">ECE</button>
    <button onclick="redirectToChat('2021', 'IT')">IT</button>
    <button onclick="redirectToChat('2021', 'MECH')">MECH</button>
    <button onclick="redirectToChat('2021', 'CSE')">CSE</button>
    <button onclick="redirectToChat('2021', 'EEE')">EEE</button>
</div>
<div class="image-gallery" id="galleryContainer3" style="text-align:center;">
    <button onclick="redirectToChat('2022', 'CSE')">CSE</button>
    <button onclick="redirectToChat('2022', 'ECE')">ECE</button>
    <button onclick="redirectToChat('2022', 'IT')">IT</button>
    <button onclick="redirectToChat('2022', 'Mech')">Mech</button>
    <button onclick="redirectToChat('2022', 'EEE')">EEE</button>
</div> -->
<div class="image-gallery" id="galleryContainer4" style="text-align:center;">
    <button  id="cse_button" onclick="redirectToChat11('2023', 'CSE')">CSE</button>
    <button id="ece_button" onclick="redirectToChat12('2023', 'ECE')">ECE</button>
    <button  id="eee_button" onclick="redirectToChat13('2023', 'EEE')">EEE</button>
    <button  id="civil_button" onclick="redirectToChat14('2023', 'CIVIL')">CIVIL</button>
</div>
<div class="image-gallery" id="galleryContainer5" style="text-align:center;">
    <button id="cse_button"  onclick="redirectToChat1('2024', 'CSE')">CSE</button>
    <button id="ece_button" onclick="redirectToChat2('2024', 'ECE')">ECE</button>
    <button id="eee_button" onclick="redirectToChat3('2024', 'EEE')">EEE</button>
    <button id="civil_button" onclick="redirectToChat4('2024', 'CIVIL')">CIVIL</button>
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
        // document.getElementById('showGallery1').addEventListener('click', function() {
        //     hideAllGalleries(); // Hide all galleries
        //     document.getElementById('galleryContainer1').style.display = 'block'; // Show gallery 1
        // });

        // document.getElementById('showGallery2').addEventListener('click', function() {
        //     hideAllGalleries(); // Hide all galleries
        //     document.getElementById('galleryContainer2').style.display = 'block'; // Show gallery 2
        // });

        // document.getElementById('showGallery3').addEventListener('click', function() {
        //     hideAllGalleries(); // Hide all galleries
        //     document.getElementById('galleryContainer3').style.display = 'block'; // Show gallery 3
        // });

        document.getElementById('showGallery4').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer4').style.display = 'block'; // Show gallery 4
        });

        document.getElementById('showGallery5').addEventListener('click', function() {
            hideAllGalleries(); // Hide all galleries
            document.getElementById('galleryContainer5').style.display = 'block'; // Show gallery 
        });


    // Function to show gallery based on year
    function showGallery(year) {
        hideAllGalleries();
        document.getElementById('galleryContainer' + year).style.display = 'block';
    }

    // Function to redirect to chat page
    function redirectToChat1(year, department) {
        // Assuming CSE_list.php is in the same directory
        window.location.href = 'index.php?page=chatcse';
    }
    function redirectToChat2(year, department) {
        // Assuming ECE_list.php is in the same directory
        window.location.href = 'index.php?page=chatece';
    }
    function redirectToChat3(year, department) {
        // Assuming EEE_list.php is in the same directory
        window.location.href = 'index.php?page=chateee';
    }
    function redirectToChat4(year, department) {
        // Assuming CIVIL_list.php is in the same directory
        window.location.href = 'index.php?page=chatcivil';
    }
    function redirectToChat11(year, department) {
        // Assuming chatcse23_list.php is in the same directory
        window.location.href = 'index.php?page=chatcse23';
    }
    function redirectToChat12(year, department) {
        // Assuming chatece23_list.php is in the same directory
        window.location.href = 'index.php?page=chatece23';
    }
    function redirectToChat13(year, department) {
        // Assuming chateee23_list.php is in the same directory
        window.location.href = 'index.php?page=chateee23';
    }
    function redirectToChat14(year, department) {
        // Assuming chatcivil23_list.php is in the same directory
        window.location.href = 'index.php?page=chatcivil23';
    }
</script>
</body>
</html>
           
