<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>

<head>
    <title>별점 리뷰 페이지</title>
    <style>
        .rating {
            text-align: center;
        }

        .star {
            display: inline-block;
            margin: 0 5px;
            cursor: pointer;
        }

        .star:before {
            content: '\2605'; /* 별 모양의 유니코드 */
            font-size: 24px;
            color: #ddd;
            /* 별 크기를 반으로 조절 */
            transform: scale(0.5);
            transform-origin: 0 50%;
        }

        .star.checked:before {
            color: #ffcc00; /* 선택된 별의 색상 */
        }

        .star_rating {
            width: 100%;
            box-sizing: border-box;
            display: inline-flex;
            float: left;
            flex-direction: row;
            justify-content: flex-start;
        }

        .star_rating .star {
            width: 25px;
            height: 25px;
            margin-right: 10px;
            display: inline-block;
            background: url('.png') no-repeat;
            background-size: 100%;
            box-sizing: border-box;
        }

        .star_rating .star.on {
            width: 25px;
            height: 25px;
            margin-right: 10px;
            display: inline-block;
            background: url('.png') no-repeat;
            background-size: 100%;
            box-sizing: border-box;
        }

        .star_box {
            width: 400px;
            box-sizing: border-box;
            display: block;
            margin: 15px auto; /* 가운데 정렬을 위한 스타일 추가 */
            background: #F3F4F8;
            border: 0;
            border-radius: 10px;
            height: 100px;
            resize: none;
            padding: 15px;
            font-size: 13px;
            font-family: sans-serif;
            text-align: center; /* 가운데 정렬을 위한 스타일 추가 */
        }

        .btn02 {
            display: block;
            width: 400px;
            font-weight: bold;
            border: 0;
            border-radius: 10px;
            max-height: 50px;
            padding: 15px 0;
            font-size: 1.1em;
            text-align: center;
            background: bisque;
            margin: 15px auto; /* 가운데 정렬을 위한 스타일 추가 */
        }
        
        
        .btn1 {
            display: block;
            width: 80px;
            font-weight: bold;
            border: 1;
            border-radius: 10px;
            max-height: 50px;
            padding: 15px 0;
            font-size: 1.1em;
            text-align: center;
            background: bisque;
            margin: 15px auto; /* 가운데 정렬을 위한 스타일 추가 */
        }
        
          .uploadedImage {
            width: 30%;
            height: 280px;
            margin-right: 5px; /* 이미지 사이의 간격을 조절하는 부분 */
            margin-top: 10px;
        }
        
        
        #modal.modal-overlay {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: rgba(255, 255, 255, 0.25);
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(1.5px);
            -webkit-backdrop-filter: blur(1.5px);
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.18);
        }
        #modal .modal-window {
            background: white; /* rgba( 69, 139, 197, 0.70 ); */
            box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
            backdrop-filter: blur( 13.5px );
            -webkit-backdrop-filter: blur( 13.5px );
            border-radius: 10px;
            border: 1px solid rgba( 255, 255, 255, 0.18 );
            width: 400px;
            height: 200px;
            position: relative;
            top: 10px;
            padding: 10px;
        }
        #modal .title {
            padding-left: 10px;
            display: inline;
            text-shadow: 1px 1px 2px gray;
            color: black;
            
        }
        #modal .title h2 {
            display: inline;
        }
        
        #modal .content {
            margin-top: 20px;
            padding: 0px 10px;
            /* text-shadow: 1px 1px 2px gray; */
            color: black;
        }

        
        
        
        
</style>
    
</head>

<body>
<br><br>


<h2 align="center">별점을 선택하세요:</h2>
<div class="rating" id="starRating">
    <!-- 별점이 왼쪽부터 시작하도록 역순으로 나열 -->
    <span class="star" onclick="rateStar(0.5)"></span>
    <span class="star" onclick="rateStar(1)"></span>
    <span class="star" onclick="rateStar(1.5)"></span>
    <span class="star" onclick="rateStar(2)"></span>
    <span class="star" onclick="rateStar(2.5)"></span>
</div>

<br>

 <div align="center">
 <!-- 이미지 미리보기 -->
 <div id="uploadedImages"></div> <br><br>
 
 <!-- 여러 장의 이미지 업로드 입력란 -->
 <input type="file" id="imageInput" accept="image/*" multiple onchange="previewImages()" />
 </div><br>


<textarea class="star_box" placeholder="리뷰 내용을 작성해주세요."></textarea>


<!-- 리뷰 등록 버튼 부분 수정 -->
<input type="submit" class="btn02" value="리뷰 등록" onclick="showModal()" />

<!-- 모달 -->
<div id="modal" class="modal-overlay" style="display:none;">
    <div class="modal-window" align="center">
        <div class="title">
            <h2></h2>
        </div>
        <div class="content">리뷰가 정상적으로 등록되었습니다.</div>
        <br><br><br>
        <input type="button" class="btn1" value="확인" onclick="closeModal()">
    </div>
</div>


<script>
	//별점 함수
    function rateStar(rating) {
    	 var stars = document.getElementById('starRating').getElementsByClassName('star');
    	    for (var i = 0; i < stars.length; i++) {
    	        // rating에 따라서 반칸씩 눌러지도록 처리
    	        if (i * 0.5 < rating) {
    	            stars[i].classList.add('checked');
    	        } else {
    	            stars[i].classList.remove('checked');
    	        }
    	    }
    }
   
    // 여러 장의 이미지 미리보기 함수
    function previewImages() {
        var input = document.getElementById('imageInput');
        var imagesContainer = document.getElementById('uploadedImages');
        imagesContainer.innerHTML = ''; // 이전 미리보기 지우기

        if (input.files && input.files.length > 0) {
            for (var i = 0; i < input.files.length; i++) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    // 이미지를 리사이징하여 미리보기에 표시
                    resizeImage(e.target.result, function (resizedDataUrl) {
                        var img = document.createElement('img');
                        img.src = resizedDataUrl;
                        img.className = 'uploadedImage';
                        imagesContainer.appendChild(img);
                    });
                };

                reader.readAsDataURL(input.files[i]);
            }
        }
    }
    

    // 이미지 미리보기 함수
    function previewImage() {
        var input = document.getElementById('imageInput');
        var img = document.getElementById('uploadedImage');

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                // 이미지를 리사이징하여 미리보기에 표시
                resizeImage(e.target.result, function (resizedDataUrl) {
                    img.src = resizedDataUrl;
                });
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    // 이미지 리사이징 함수
    function resizeImage(dataUrl, callback) {
        var img = new Image();
        img.src = dataUrl;

        img.onload = function () {
            // 이미지를 원하는 크기로 조절
            var canvas = document.createElement('canvas');
            var ctx = canvas.getContext('2d');
            canvas.width = 200; // 원하는 너비
            canvas.height = (img.height / img.width) * canvas.width;
            ctx.drawImage(img, 0, 0, canvas.width, canvas.height);

            // 리사이징된 이미지를 data URL로 변환하여 콜백에 전달
            var resizedDataUrl = canvas.toDataURL('image/jpeg'); // JPEG 형식으로 저장
            callback(resizedDataUrl);
        };
    }
</script>


<script>
  const modal = document.getElementById("modal")
  function modalOn() {
      modal.style.display = "flex"
  }
  function isModalOn() {
      return modal.style.display === "flex"
  }
  function modalOff() {
      modal.style.display = "none"
  }
  
  const closeBtn = modal.querySelector(".close-area")
  closeBtn.addEventListener("click", e => {
      modalOff();
  })
})


</script>
  
  
<!-- 모달 관련 스크립트 추가 -->
<script>
    // 모달을 띄우는 함수
    function showModal() {
        modalOn();
    }

    // 모달창을 보여주는 함수
    function modalOn() {
        modal.style.display = "flex";
    }

    // 모달창을 감추는 함수
    function modalOff() {
        modal.style.display = "none";
    }

    // 확인 버튼 클릭 시 모달을 감추는 이벤트 핸들러 추가
    var confirmBtn = document.querySelector(".btn1");
    confirmBtn.addEventListener("click", function() {
        modalOff();
      
        window.open("about:blank","_self").close();
        /* opener.open('ilsik2.jsp','_self').close(); */
       
    });
</script>




 </body>
</html>