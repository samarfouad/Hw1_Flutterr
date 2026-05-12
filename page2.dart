import 'package:flutter/material.dart';
import 'package:hw_flutter1/tableView.dart';

class page2 extends StatelessWidget {
  final String username;
  final String PhoneN;
  final String password;
  List<String> list=["Samar","Ahmed","Hassan","Remas"];
  page2({super.key,  required this.username, required this.PhoneN, required this.password });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title:Text("Welcome $username"),titleTextStyle:TextStyle(color: Colors.indigoAccent,fontSize: 20,fontWeight:FontWeight.bold),backgroundColor: Colors.amberAccent,centerTitle: true),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
          children: [
            Text(" Show List ",style:TextStyle(color:Colors.indigoAccent,fontSize:30.0,fontWeight:FontWeight.bold)),

            SizedBox(height: 20),

            ListView.builder(itemCount:list.length, shrinkWrap: true , itemBuilder: (context,index){
              return ListTile(
                leading: Icon(Icons.person),
                title:Text(list[index]),
                subtitle: Text("online"),
              );
            }),

            SizedBox(height:50),

            ElevatedButton(onPressed:(){
              Navigator.push(context, MaterialPageRoute(builder:(context)=>tableView()));},style:ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,
                    foregroundColor:Colors.yellowAccent,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),minimumSize: Size(200, 60)),
                child:Text("Show Table ",style: TextStyle(fontSize:20.0,fontWeight:FontWeight.bold))
            ),
          ]
      ),
    ),
    );
  }
}