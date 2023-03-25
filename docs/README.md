# 기능 목록

## baseball.dart

### 3자리 랜덤 숫자 생성

### 숫자 여부 판별

### 중복 여부 판별

### 자릿수 일치 여부 판별

### 1 or 2 일치 여부 판별

### 일치 여부 판별
- [x] 숫자, 위치 모두 일치 하지 않을 경우 - 낫싱
- [x] 숫자는 존재하나 위치가 다를 경우 - 볼
- [x] 숫자, 위치 모두 맞을 경우 - 스트라이크

### 게임 재시작
- [x] 숫자 여부
- [x] 1 여부

### 게임 종료
- [x] 숫자 여부
- [x] 2 여부

# 패키지 구조

lib
* screen
  * home_screen.dart
* component
  * input_view.dart
  * output_view.dart
* model
  * baseball.dart
* controller
  * baseball_controller.dart
* service
  * baseball_serivce.dart
  * baseball_validation.dart


