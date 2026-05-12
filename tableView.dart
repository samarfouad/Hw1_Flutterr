import 'package:flutter/material.dart';

class tableView extends StatelessWidget {
  const tableView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Show Table"),titleTextStyle:TextStyle(color: Colors.indigoAccent,fontSize: 20,fontWeight:FontWeight.bold),backgroundColor: Colors.amberAccent,centerTitle: true),

      body:Column(
          children: [
            SizedBox(height: 20),
      Table(border: TableBorder.all(color: Colors.indigoAccent,width: 3), children:[
        TableRow(children:[
          Column(children:[Text("Name",style:TextStyle(color:Colors.amberAccent,fontSize:30.0,fontWeight:FontWeight.bold))]),
          Column(children:[Text("Major",style:TextStyle(color:Colors.amberAccent,fontSize:30.0,fontWeight:FontWeight.bold))]),
          Column(children:[Text("Level",style:TextStyle(color:Colors.amberAccent,fontSize:30.0,fontWeight:FontWeight.bold))]),
        ]),

        TableRow(children:[
          Column(children:[ Text("Samar AlQadi",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("IT",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("4",style:TextStyle(fontSize:20.0))]),
        ]),

        TableRow(children:[
          Column(children:[ Text("Hassan AlQadi",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("IT",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("4",style:TextStyle(fontSize:20.0))]),
        ]),

        TableRow(children:[
          Column(children:[ Text("Remas AlQadi",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("IT",style:TextStyle(fontSize:20.0))]),
          Column(children:[ Text("1",style:TextStyle(fontSize:20.0))]),
        ]),
    ])
      ]),
    );
  }
}