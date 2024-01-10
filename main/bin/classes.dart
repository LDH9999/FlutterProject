enum Team {red, blue} //enum은 실수를 방지해주는 기능이다 데이터가 들어올 때 enum이 지정한 red와 blue가 아니면 오류가 발생한다.

mixin class Strong {
  final double strength = 1500.11;
}
mixin class Tall {
  final double height = 1.99;
}
mixin class QuickRunner {
  void Run() {
    print('RUUUUUUUUUUUUUUUUN');
  }
} //mixin은 생성자를 가지지 않는 클래스를 말한다.
class play_Human with Tall, Strong, QuickRunner{
} //mixin안의 프로퍼티를 가져오고 싶으면 with를 넣어주면 된다.
abstract class Human {
  void walk();
} //abstract 클래스는 추상화 클래스로 내부를 아무것도 구현하지 않은 클래스를 말한다. 추상 클래스를 상속받는 클래스들은 후상메소드를 강제적으로 구현해야 한다.

class player extends Human {
  String name;
  int xp;
  Team team;
  int age;

  player({
     required this.name, 
     required this.xp, 
     required this.team, 
     required this.age,
     }); //생성자의 매개변수를 다음과 같이 적으면 첫번째 인자는 name에 두번째 인자는 xp에 할당된다. required는 null값을 허용하는 것

  player.creatRedplayer({
    required String name,required int age,}) 
    : this.name = name,
      this.age = age,
      this.team = Team.red,
      this.xp = 1500; //named constructor은 초기화를 수행하는 생성자에 이름을 붙이는 것으로 :의 의미는 매개변수로 클래스안의 변수를 초기화한다는 의미이다.

  void sayhello() {
    print('hi my name is $name');
  }

  void walk() {
    print('player is walk');
  }
}

class coach extends Human {
  void walk() {
    print('coach is walk');
  }
}

void main() {
  var players = player(
    name: 'ldh',
    xp: 1500,
    team: Team.red,
    age: 15,
  ); // dart는 객체를 생성할 때 new를 쓸필요가 없다. named argument를 통해 객체를 생성할 때 매개변수를 지정하여 입력할 수 있음
  var red_players = player.creatRedplayer(
    name: 'ldh', 
    age: 15,) //createRedplayer를 통해 두개의 매개변수로 초기화를 수행한다는 의미이다.
    ..name = 'lhy'; //객체를 생성하고 ;를 붙이지 않고 이어서 ..을 사용하면 객체를 가르키며, 객체안의 변수들의 값을 재설정할 수 있다.
}