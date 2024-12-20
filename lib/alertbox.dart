import 'package:alertbox/custom_alertbox.dart';
import 'package:flutter/material.dart';

class Alertbox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Box"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Alert Box"),
                  content: Text("do you want to continue"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomAlertbox()));
                    }, child: Text("Yes")),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No"))
                  ],
                );
              });
            }, child: Text("show alert box")),
          ),
        ],
      ),
    );
  }
}