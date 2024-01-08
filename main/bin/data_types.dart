void main() {
  var giveMefive = true;
  var numbers = [1, 2, 3, 4,if(giveMefive) 5]; //collectionif는 true면 요소를 삽입하고 false면 삽입하지 않는다.  
  numbers.add(5); //add를 통해 리스트에 요소를 삽입할 수 있음
  var names = 'LDH';
  var ages = 24;
  var talk = 'hello everyone my name is $names, my age is ${ages + 2}'; //문자열에 $변수명을 사용하면 문장을 이을 수 있다.
  var oldfriend = ['kdh', 'lzz'];
  var newfriend = ['pms', 'kdg', 'jyi', for(var friend in oldfriend) '!$friend']; //collectionfor은 다른 리스트의 요소를 해당 리스트의 요소로 추가할 수 있다.
  var maps = {
    'names' : 'ldh', 
    'ages' : 26
  }; //maps는 key와 값으로 이루어져 있는 자료형이다.
  var number = {1, 2, 3, 4}; //sets와 list의 차이점은 각각의 요소들이 유니크한가 유니크하지 않은가에 있다.
}