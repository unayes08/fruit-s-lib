import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fruits.dart';
class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  var nameList = ["MANGO","APPLE","WATERMELON","GRAPES","ORANGE","BANANA","JACKFRUIT","LITCHI","COCONUT","PAPAYA"];
  var word = ["আম","আপেল","তরমুজ","আঙগুর","কমলা","কলা","কাঠাঁল","লিচু","নারিকেল","পেপেঁ"];
  var imgList = ["img/ftmango.jpg","img/ftapple.jpg","img/ftwatermelon.jpg","img/ftgrapes.jpg","img/ftorange.jpg","img/ftbanana.jpg","img/ftjackfruit.jpg","img/ftlichi.jpg","img/ftcoconut.jpg","img/ftpapaya.jpg"];
  var txt =["","<","<","<","<","<","<","<","<","<",];
  var tex =[">",">",">",">",">",">",">",">",">",""];
  int index =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FRUIT'S",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      backgroundColor: Colors.pinkAccent,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(nameList[index],style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      index=index-1;

                    });
                  },
                  child: Expanded(
                    flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(txt[index],style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                      )
                  ),
                ),
                Expanded(
                  flex: 9,
                    child: Container(
                      alignment: Alignment.center,
                      child: Image.asset(imgList[index],fit: BoxFit.fill,),
                    )
                ),
                InkWell(
                  onTap: (){
                    setState(() {
                      index=index+1;

                    });
                  },
                  child: Expanded(
                    flex: 5,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(tex[index],style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
                      )
                  ),
                ),
              ],

            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(word[index],style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
          ),
          
        ],
      ),
    );
  }
}
