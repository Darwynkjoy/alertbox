import 'package:flutter/material.dart';

class simpleDialogExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Dialog alertbox"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return SimpleDialog(
                  title: Text("Simple dialog alertbox",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Option 1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Option 2",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                  ],
                );
              });
            }, child: Text("show simple dialog alert box")),
          ],
        ),
      ),
    );
  }
}