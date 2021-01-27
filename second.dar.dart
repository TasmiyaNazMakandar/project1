import 'package:flutter/material.dart';

import 'MediaQuery.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();

}

class _AppState extends State<App> {
  int _value=1;
  TextEditingController ncomtroller= TextEditingController();
  TextEditingController discrip=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(

        height: SizeConfig.safeBlockVertical , //10 for example
         width: SizeConfig.safeBlockHorizontal,
        padding: EdgeInsets.all(10.0),
        child:Column(
              children: [
                         DropdownButton(
                  value: _value,
            items: [      DropdownMenuItem(child: Text('Low'),value: 1,),
                        DropdownMenuItem(child: Text('High'),value: 2,)],
                 onChanged: (value){
                    setState(() {
                      _value=value;
                    });
                     },),
                Padding(padding: EdgeInsets.all(8),
                child: TextField(
                  controller: ncomtroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your Name',
                  ),
                ),
                ),
      Padding(
        padding: EdgeInsets.all(8),
        child:  TextField(
          controller: discrip,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Description',
          ),
        ),
      ),
          Padding(padding: EdgeInsets.all(5),
          child: Row(
            children: [
              RaisedButton(onPressed: (){},child: Text('Save'),color: Colors.orangeAccent,),
             Padding(padding: EdgeInsets.all(16),
             child:  RaisedButton(onPressed: (){},child: Text('Cancel'),color: Colors.orangeAccent,),)
            ],
          ),),
    ],),
      )



    );
  }
}
