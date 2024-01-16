import 'dart:io';
void main(){
  showData();
}

void showData(){
  startTask();
  accessData();
  fetchData();
}

void startTask(){
  String info1 ="요청 수행 시작";
  print(info1);
}

void accessData(){
  String info2 = "데이터 접속중";
  Future<void> test1(){
    print("ha")
  }
  print(info2);

}

void fetchData(){
  String info3 ="잔액은 8500만원 입니다";
  print(info3);

}