import 'dart:io';

void main(){
  /*print("Hi there");
  stdout.write("Whats your name : ");
  var name = stdin.readLineSync();
  print("Welcome , $name");

  //creating objects
  var a = new Human();
  new Human();
  Human();

  print(a.c);
  print(Human().c);

//variables and datatypes

  int g = 344;
  double decimalValue = 23.83;
  String newname = "Otsutsuki";
  bool ischeck = false;
  BigInt longValue = BigInt.parse("1234567890098765432234598765462") ;

  print(ischeck);
  print(longValue);
  print(newname);
  print(g);
  print(decimalValue);

  ischeck=true;

  print(ischeck);

  //num is the super class for both int and double therefore it can store any number of value (decimal or natural values)
  num newDecimal = 56.88;
  print(newDecimal);

//var and dynamic

  var f = "yeager"; //String
 // f=44; //here i cannot give the integer values because while initializing i have declared it as string
  f="eren"; //i can only provide String only for reinitializing //String

  var h ; //dynamic allocation as i have only initialized but not declared  //initialization
 // dynamic h; //i can also write like these -- i can use dynamic keyword to initialize the dynamic values
  //as in these the values are alloted during run time so it can take any type of values during runtime
  h=66;//int
  h='Luffy san';//String
  h=true;//bool*/

  //using of Argumented method for multiple usage upon different arguments
  print(SampleClass().m2(20,78)); //creating the constructor implicitly
  print(SampleClass().m2(33,78));
  print(SampleClass().m2(76,636));
  print(SampleClass().m2(42,90));


}

class Human{
  int c=20;
}


class SampleClass{
  int m2(int x,int y){
    int sum = x+y;
    return sum;
  }
}
