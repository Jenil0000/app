import 'package:flutter/material.dart';

class secound extends StatefulWidget {
  const secound({Key? key}) : super(key: key);
  @override
  State<secound> createState() => _secoundState();
}

class _secoundState extends State<secound> {
  List<String> list = [
    "Dosa Butter",
    "Paper Dosa	",
    "Plain Cheese Pizza",
    "Tomato, Onion Pizza",
    "Hot & Sour ",
    "Veg. Noodle Soup",
    "French Fries",
    "Chilli Cheese Toast "
    "Fresh Juices Seasonal",
    "Veg Hakka Noodles",

  ];
  List<String> price = [
    "price=120",
    "price=180",
    "price=190",
    "price=140",
    "price=160",
    "price=170",
    "price=110",
    "price=220",
    "price=240",
    "price=260",

  ];
  List<String> mylist=[
    "mylist/dosa.jpg",
    "mylist/dosa butter.jpg",
    "mylist/pizz.jpg",
    "mylist/pizzaa.jpg",
    "mylist/sup.jpg",
    "mylist/nodelsoup.jpg",
    "mylist/frenfrish.jpg",
    "mylist/toast.jpg",
    "mylist/fresh.jpg",
    "mylist/nodel.jpg",
  ];
bool abc=false;
List<bool> box=[false,false,false,false,false,false,false,false,false,false,];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Menu"),),
    body: Column(children: [
      Expanded(flex: 8,
      child: ListView.separated(
    separatorBuilder:(context, index) {
      return Divider();
    },
    itemCount: list.length,
    itemBuilder: (context,index){
      return ListTile(
         leading: CircleAvatar(
           radius: 48, // Image radius
           backgroundImage: NetworkImage(mylist[index]),
         ),

        title: Text(list[index]),
        subtitle:Text(price[index]),
        trailing: Checkbox(onChanged: (value) {
          setState((){
            box[index]=value!;
          });
            // list=value as List<String>;
        },value: box[index], ),
      );
    },
    ),),
      Expanded(flex: 1,
          child: Row(
        children: [
          Container(
            color: Colors.orange,
            child: Text(style: TextStyle(fontSize: 50),("Total Amount=")),
          )
        ],
      )),
      Expanded(child: Container(

      ))
    ]));
  }
}
