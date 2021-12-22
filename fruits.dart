import 'package:flutter/material.dart';
import 'mainpage.dart';
class fruits extends StatefulWidget {
  const fruits({Key? key}) : super(key: key);
  @override
  _fruitsState createState() => _fruitsState();
}
class _fruitsState extends State<fruits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigoAccent,Colors.deepPurple]
          )
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.25,
            ),
            Container(
              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage('img/fruits.jpg',),),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25)
              ),
              height: MediaQuery.of(context).size.height*0.26,
              width: MediaQuery.of(context).size.width*0.65,
              

            ),SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            InkWell(

              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (builder)=>mainpage()));
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*0.65,
                child: Text("FRUIT'S",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              ),
            )
          ],
        ),

      ),
    );
  }
}
