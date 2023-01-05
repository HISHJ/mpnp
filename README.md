![image](https://user-images.githubusercontent.com/109945384/210264824-c0f883bd-6e5b-4160-9dd7-b73147fd9594.png)
<br>
<br>





## :computer: 프로젝트 소개
* 늘어가는 반려동물시장에 발맞춰 반려동물 쇼핑몰을 좀 더 쉽게 사용하기 위해 기획하였습니다.
* 'AboutPet'을 참고하여 만든 반려동물 쇼핑몰 입니다.

## :watch: 프로젝트 기간
- 2022.10.24~2022.11.29

## :raising_hand: 참여인원
- 4명



## :gear: 사용기술
* <div>
  <img src="https://img.shields.io/badge/Eclipse%20IDE-2C2255.svg?&style=for-the-badge&logo=Eclipse%20IDE&logoColor=white">
  <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">
  <img src="https://img.shields.io/badge/apache tomcat9.0-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
  <img src="https://img.shields.io/badge/linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
  <img src="https://img.shields.io/badge/aws-232F3E?style=for-the-badge&logo=Amazon&20AWS&logoColor=white">
  <img src="https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=aws&logoColor=white">
  
  
  </div>
* <div>
  <img src="https://img.shields.io/badge/JAVA(JDK 1.8)-007396?style=for-the-badge&logo=OpenJDK&logoColor=white">
  <img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=Spring&logoColor=white">
  <img src="https://img.shields.io/badge/oracle(19c)-F80000?style=for-the-badge&logo=oracle&logoColor=white">
  <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black">
  <img src="https://img.shields.io/badge/html-E34F26?style=for-the-badge&logo=html5&logoColor=white">
  <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white">
   <img src="https://img.shields.io/badge/JSP-FF9E0F?style=for-the-badge&logo=Java&logoColor=white">
  
  </div>
* <div>
  <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
  <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white">
  <img src="https://img.shields.io/badge/Ajax-23C8D2?style=for-the-badge&logo=Java&logoColor=white">
  <img src="https://img.shields.io/badge/MyBatis-512BD4?style=for-the-badge&logo=Java&logoColor=white">
   <img src="https://img.shields.io/badge/JSTL-FF6D70?style=for-the-badge&logo=Java&logoColor=white">
</div>

## :pushpin: 담당역할
<br>

### 메인페이지
- Ajax통신으로 대분류 코드에 따라 DB에서 데이터를 가져와 목록들을 출력

#### :desktop_computer: code
- [mainController.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/controller/mainController.java)<br>
- [MainMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/mapper/MainMapper.xml)<br>
- [MainDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/dao/MainDAO.java)

### 검색
- 검색 시 상품의 제목을 DB데이터와 비교하여 데이터를 가져와 Ajax통신으로 검색한 목록들을 페이징 처리하여 출력
- '구매완료'가 많은 제품 top5을 검색결과 옆에 출력 
#### :desktop_computer: code
- [SearchController.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/controller/SearchController.java)<br>
- [SearchMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/mapper/SearchMapper.xml)<br>
- [SearchDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/dao/SearchDAO.java)


### 상품리스트
- 해당 카테고리의 상품을 페이징 처리하여 출력

### 상품상세페이지
- 상품정보와 이미지는 DB에있는 정보를 그대로 가지고 와서 출력.
- Jquery를 사용하여 추가한 상품 수량 증가 및 감소 시 가격 실시간 동적 변경
- session에 있는 정보를 가지고 DB에서 장바구니 찜 여부를 가지고 옴
- bookmark 버튼 클릭시 찜 리스트에 상품 추가 
- 수량 선택 후 장바구니 버튼 클릭시 장바구니에 상품 추가
- 구매하기 버튼 클릭시 주문페이지로 이동

#### :desktop_computer: code
- [ProductController.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/controller/ProductController.java)<br>
- [WishListController.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/controller/WishListController.java)<br>
- [ProductMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/mapper/ProductMapper.xml)<br>
- [ProductReviewMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/mapper/ProductReviewMapper.xml)<br>
- [WishListMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/mapper/WishListMapper.xml)<br>
- [ProductDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/dao/ProductDAO.java)<br>
- [ProductReviewDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/dao/ProductReviewDAO.java)<br>
- [WishListDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/user/dao/WishListDAO.java)<br>

### 상품관리(관리자)
- jQuery를 사용하여 상품명,분류명에 따라 DB에서 데이터를 가지고와 출력
- Ajax통신으로 대분류에 따른 중분류 카테고리를 출력함
- jQuery를 사용해 상품 유효성검사(빈칸여부,사진확장자) 실행
- Ajax를 사용하여 DB로 데이터 전송
- MultipartRequest 를 사용하여 사진 파일 업로드

#### :desktop_computer: code
- [AdminProductController.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/admin/controller/AdminProductController.java)<br>
- [adminMemberMapper.xml](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/admin/mapper/adminMemberMapper.xml)<br>
- [AdminMemberDAO.java](https://github.com/HISHJ/mpnp/blob/main/src/main/java/kr/co/mpnp/admin/dao/AdminMemberDAO.java)<br>

