import 'package:flutter/material.dart';

class CustomAlertbox extends StatelessWidget{
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
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  backgroundColor: const Color.fromARGB(255, 205, 223, 233),
                  child: Container(
                    height: 250,
                    child: Column(
                      children: [
                        Text("Do you want to continue",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                                }, child: Text("Yes",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                            ElevatedButton(onPressed: (){
                              Navigator.pop(context);
                               }, child: Text("No",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
            }, child: Text("show alert box")),
          ),
        ],
      ),
    );
  }
}

