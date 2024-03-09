import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool Personal =true, College=false, Office=false;
  bool suggest =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        backgroundColor: Colors.greenAccent.shade400,
        child: Icon(Icons.add, color: Colors.white,size: 35,),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 70, left: 20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            // Colors.cyanAccent,
            // Colors.yellow,
            // Colors.greenAccent,
            Colors.white,
            Colors.white54,
            Colors.white12,
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Hii",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "MI",
                style: TextStyle(fontSize: 54, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "Let's the work begins",
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Personal ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                        borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Personal",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ):GestureDetector(
                  onTap: (){
                    Personal= true;
                    College = false;
                    Office =false;
                    setState(() {

                    });
                  },
                  child: Text("Personal", style: TextStyle(fontSize: 20),),
                ),

                College ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "College",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ):GestureDetector(
                  onTap: (){
                    Personal= false;
                    College = true;
                    Office =false;
                    setState(() {

                    });
                  },
                  child: Text("College", style: TextStyle(fontSize: 20),),
                ),

                Office ? Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Office",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ):GestureDetector(
                  onTap: (){
                    Personal= false;
                    College = false;
                    Office =true;
                    setState(() {

                    });
                  },
                  child: Text("Office", style: TextStyle(fontSize: 20),),
                ),

              ],
            ),

            SizedBox(height: 20,),

            CheckboxListTile(
              activeColor: Colors.greenAccent.shade400,
              title: Text("Make Youtube videos"),
              value: suggest, onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
            controlAffinity: ListTileControlAffinity.leading,
            ),
            CheckboxListTile(
              activeColor: Colors.greenAccent.shade400,
              title: Text("Go to Gym"),
              value: suggest, onChanged: (newValue){
              setState(() {
                suggest = newValue!;
              });
            },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
      ),
    );
  }
}
