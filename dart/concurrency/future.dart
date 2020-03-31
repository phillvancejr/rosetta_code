import 'dart:math' show Random;

main(){
	enjoy()   .then((e) => print(e));
	rosetta() .then((r) => print(r));
	code()    .then((c) => print(c));
}

var rng = Random();

enjoy()   => Future.delayed(Duration(milliseconds: rng.nextInt(10)), () => "Enjoy");
rosetta() => Future.delayed(Duration(milliseconds: rng.nextInt(10)), () => "Rosetta");
code()    => Future.delayed(Duration(milliseconds: rng.nextInt(10)), () => "Code");
