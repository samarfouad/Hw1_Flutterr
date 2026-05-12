import 'package:flutter/material.dart';

import 'page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController Username=TextEditingController();
    TextEditingController Password=TextEditingController();
    TextEditingController PhoneN=TextEditingController();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) => Scaffold(

        appBar: AppBar(title:Text("Flutter Assignment"),titleTextStyle:TextStyle(color: Colors.indigoAccent,fontSize: 20,fontWeight:FontWeight.bold),backgroundColor: Colors.amberAccent,centerTitle: true
        ,leading: Icon(Icons.home),),

        body: Padding(
          padding: const EdgeInsets.all(10),

          child: Column(

            children: [
            Text("Welcome To Flutter App",style:TextStyle(color:Colors.indigoAccent,fontSize:30.0,fontWeight:FontWeight.bold)),

              SizedBox(height: 10),

              Image.asset('../asset/images/imageFlutter.png', width: 200, height: 200, fit: BoxFit.contain,),

              SizedBox(height: 10),

              TextField(keyboardType:TextInputType.name,controller:Username,style: TextStyle(color: Colors.indigoAccent,fontSize:20),decoration: InputDecoration(
                  labelText:"Enter UserName",border: OutlineInputBorder(borderRadius:BorderRadius.circular(15.0)),prefixIcon:Icon(Icons.person)
              ),),

              SizedBox(height: 20),
              TextField(keyboardType:TextInputType.number,controller:PhoneN,style: TextStyle(color: Colors.indigoAccent,fontSize:20),decoration: InputDecoration(
                  labelText:"Enter PhoneNumber",border: OutlineInputBorder(borderRadius:BorderRadius.circular(15.0)),prefixIcon:Icon(Icons.phone_android)
              ),),

              SizedBox(height: 20),
              TextField(keyboardType:TextInputType.number,obscureText: true,controller:Password,style: TextStyle(color: Colors.indigoAccent,fontSize:20),decoration: InputDecoration(
                  labelText:"Enter Password",border: OutlineInputBorder(borderRadius:BorderRadius.circular(15.0)),prefixIcon:Icon(Icons.password),suffixIcon:Icon(Icons.visibility)
              ),),

              SizedBox(height: 30),
              ElevatedButton(onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>page2(
                    username:Username.text,
                    PhoneN:PhoneN.text,
                    password:Password.text,
                )));
              },style:ElevatedButton.styleFrom(backgroundColor: Colors.indigoAccent,
                  foregroundColor:Colors.yellowAccent,shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0)),minimumSize: Size(200, 60)),
                  child:Text("Show List ",style: TextStyle(fontSize:20.0,fontWeight:FontWeight.bold))
              ),
            ],
          ),
        )
      ),
    ),
    );
  }
}
