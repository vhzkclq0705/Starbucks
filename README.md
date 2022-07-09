# Starbucks
## 케이스 스터디 2주차 과제(오토레이아웃, 라이프사이클, 데이터 전달 공부하기)
- TableView와 CollectionView 사용 X
- 스타벅스 앱 클론 코딩
- Constraint와 색을 정확하게 구현하기 힘들다고 판단하여 최대한 비슷하게 구현
- ScrollView와 ContainerView를 활용하였다.
- 데이터 전달은 Delegate 프로토콜을 활용하였다.

## 결과

<details>
  <summary> 스토리보드 </summary>
  <div markdown="0">
  
![스토리보드](https://user-images.githubusercontent.com/75382687/178105596-27058800-268b-4f10-ab8b-201eb4a11480.png)

  </div>
</details>

<br>

## 실행 화면 비교

|Starbucks|Clone|
|---|---|
|![스벅](https://user-images.githubusercontent.com/75382687/178105627-5ef1ed4b-cf4b-4c1d-8c76-1dc889f0e4c0.gif)|![클론](https://user-images.githubusercontent.com/75382687/178105629-46a0d37e-ae11-4cbc-a881-82726e4cca43.gif)|

## iPhone 8 / iPhone 13 Pro Max

|iPhone 8|iPhone 13 Pro Max|
|---|---|
|![아이폰8](https://user-images.githubusercontent.com/75382687/178105804-16a0fef7-07f5-4974-8428-44652d67e821.gif)|![아이폰13프로맥스](https://user-images.githubusercontent.com/75382687/178105805-96f7aa44-cfde-47d5-b4f1-a6ce5ee0df71.gif)|

<br>

## 새로 알게된 점

- Resign 상태
  - 앱이 Resign 상태일 때, 화면의 변화를 줄 수 있다.
  - 은행이나 스타벅스 앱의 경우, 화면을 쓸어 올리거나 홈 버튼을 두 번 누르면 앱의 화면이 가려진다.
  - SceneDelegate.swift에서 앱의 상태를 감지하여 변화를 줄 수 있다.

- IBOutlet collections
  - 스토리보드에서 같은 형태의 객체들을 collections를 이용하여 배열로 저장할 수 있다.
  - 배열에서 forEach 문을 이용하여 쉽고 짧으면서 깔끔하게 객체들에게 동일한 속성을 부여할 수 있다.
  
- 계층 구조 확인
  <details>
  <summary> 앱의 계층 구조 </summary>
  <div markdown="0">
  
  ![계층](https://user-images.githubusercontent.com/75382687/178106026-e4122c80-4232-4f27-a9d3-e3dae5d328d7.png)

  </div>
  </details>
  - 앱이 실행 중일 때, 사진에 나와 있는 버튼을 누르면 현재 화면의 계층 구조를 볼 수 있다.
  - 해당 화면에서 현재 레이아웃이 잘못된 부분 등을 확인할 수 있다.

- Line Break 속성
  - Label에서 해당 속성을 통해 줄바꿈의 기준을 정할 수 있다.
  - Character Wrap 속성으로 하면 개별 문자 단위로 줄바꿈을 한다.(원래는 개행 문자 기준)

- 스크롤 위치에 따른 컴포넌트 변화
  - UIScrollViewDelegate를 사용하여 ScrollView의 상태 변화 등을 감지할 수 있다.
  - 스크롤 상태, 위치에 따라 특정 뷰의 위치, 높이 등의 속성을 바꿀 수 있다.

<br>

## 느낀 점

- 생각보다 이미지와 스크롤 뷰의 형태가 많아 시간이 많이 걸렸다.
- 빨리 TableView 또는 CollectionView를 배워 사용하고 싶어졌다.
- 스토리보드로 레이아웃 잡기 너무 어렵다.
- 스토리보드 상에서 레이아웃에 대한 경고가 뜨지 않았지만 앱을 실행했을 때, 콘솔에 레이아웃 에러가 올라오기도 했다.   
  해당 에러는 계층 구조 확인에서 레이아웃 에러가 발생한 컴포넌트들의 메모리 주소를 찾아서 고쳐주었다.(여기서 매우 힘들었다.)
