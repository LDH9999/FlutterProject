void main() {
  var name1 = '임동현'; //함수나 메소드 내부에 지역변수를 선언 할 때는 var사용한다.  
  String name2 = '임한용'; //class안에 변수나 property를 선언할때는 타입을 지정해준다.
  dynamic name3; // dynamic타입은 변수의 타입을 알 수 없을때 사용 나중에 타입을 정한다. 정말 필요한 경우에만 사용하는 것을 권장
  String? name4;
  name4 = null; // 타입뒤에 ?를 추가하면 해당 변수에 null값이 들어가도 에러가 발생하지 않는다.
  final name5 = '만두'; //final은 해당 변수의 값을 수정할 수 없게 만들어준다.
  late final String name6; // late는 final과 var의 앞에 사용할 수 있고 값이 없는 변수를 선언힐 때 사용한다. 
  const name7 = "새콤"; //const는 프로그램을 배포하기전에 컴파일러가 이미 알고 있어야 하는 값을 지정할 때 사용한다.
}