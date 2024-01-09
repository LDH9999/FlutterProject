typedef intlist = List<int>; //typedef는 List<int>를 간단하게 표현할 수 있는 별명을 붙여준다.

intlist numList(intlist numlist) {
  var revlist = numlist.reversed;
  return revlist.toList();
}
void sayhello(String name) {
  print('Hello! my name is $name');
}
String sayhi({required String name, required int age, required String country}) {
  return 'my name is $name, age is $age, come to $country';
  } //required는 함수의 파라미터에 null값이 들어갈 수 있으므로 매개변수가 들어오지 않으면 컴파일하지 않도록 해준다.
String sayho(String name, int age, [String? country = 'cuba']) {
  return 'my name is $name, age is $age, come to $country';
} //optional positional parameters는 함수를 호출할 때 매개변수에 null값이 허용되는 경우에 사용한다.
void main() {
  String? name;
  name ??= 'ldh'; //name이 null값이면 ldh를 넣어라
}