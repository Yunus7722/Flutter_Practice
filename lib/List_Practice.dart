void main(){
  var ListNo = [10,20,30,40,50];
  print(ListNo);
  ListNo.add(60);
  print(ListNo);
  var ListNo2 = [90,40];
  var names =[]; //only if u declare like these than only you will be able to add homogenous data into List
  //var names =["Luffy","Sanji","zoro"]; //these will not work these will only accept homogenous data
  names = ["Luffy","Sanji","zoro"];
  ListNo.addAll(ListNo2);
  print(ListNo);
  names.add(45);
  names.addAll(ListNo);
  print(names);

  names.insert(5, "Shanks");
  print(names);

  names.insertAll(7, ["Mihawk","Garp","Sengoku"]);

  print(names);

  print(names.getRange(7, 12));
  print(names);
  print(names.reversed);

  names.replaceRange(14, 16, ["WhiteBeard","Roger","Oden","rayliegh"]);

  print(names);

  print('length : ${names.length}');
  print('last : ${names.last}');
  print('first : ${names.first}');
  print('remove Last : ${names.removeLast()}');
  print('Element at index  : ${names.elementAt(4)}');

  print(names);
names[3]="Saitama"; //Re initializing

  print(names);

  names.remove(50);
  print(names);
  print(names.removeAt(11));
  print(names);

  print("--------------------------------");

  var map_name = {
    'key1' : "Jeyaking",
    'key2' : "Luffy",
    'key3' : "Sanji",
    'key4' : "Zoro",
    'key5' : "usopp",

  };

  map_name['key3'] = "Kaido";
  map_name['key7'] = 'madara';

  print(map_name);
  print(map_name['key3']);
  
  print('is Empty : ${map_name.isEmpty}');
  print('is Not Empty : ${map_name.isNotEmpty}');
  print('is Length : ${map_name.length}');
  print('is Keys : ${map_name.keys}');
  print('is Values : ${map_name.values}');
  print('is remove : ${map_name.remove('key2')}');
  print(map_name);
  print('is Length : ${map_name.length}');


  final String mandarin = "ironman";
// mandarin = "captain america"


  //these can happen after declaring we can initialize below
  final  mikasa ;
  mikasa = 'ruby';


  const kakshi = "naruto";
  // kakshi = "uzumaki";

  //these cannot happen after declaring we cannot initialize below
  // const  kira ;
  // kira = 'baka';

  final arr = [
    45,55,66,77
  ];

  const arr2 = [
    45,55,66,77
  ];


  final arr3;
arr3 =  [
  45,55,66,77
];


//these is not possible in const but possible in final
//   const arr4;
//   arr4 =  [
//     45,55,66,77
//   ];



}