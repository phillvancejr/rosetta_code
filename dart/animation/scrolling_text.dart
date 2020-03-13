import 'package:flutter/material.dart';
import 'dart:async' show Timer;
import 'dart:io' show sleep;

void main() async {
  
  var timer = const Duration( milliseconds: 70 );
  
  var text = AnimatedText.text;

  for ( var i = 0; i < 50; i++){
    
    print(text);
    AnimatedText.shiftText();
    text = AnimatedText.text;
    await Future.delayed( timer, () => null );

  }
//   Timer.periodic( timer, (t) {
//     //print(text);
//   });
  
  print('finished!');
}


class AnimatedText {
  static var _text =  'Hello World!  '.runes
    .map( (code) => String.fromCharCode(code) )
    .toList();
  
  static String get text => _text.join('');
  
  static void shiftText() {
        
    var last = _text.removeLast();

    _text.insert( 0, last);
 }
    
}

