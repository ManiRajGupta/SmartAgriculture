// import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:weather_icons/weather_icons.dart';
// import 'package:weather_icons_example/util.dart';


void main() => runApp(const MaterialApp(
  home:Home(),

));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Smart Agriculture",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined),color: Colors.black,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.apps_rounded),color: Colors.black,),
          const CircleAvatar(
            backgroundColor: Colors.amber,
            radius: 10.0,
          ),

        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,40.0 , 10.0, 10.0),
            child: Text(

              "Dashboard",
              style: TextStyle(
                color: Colors.green[900],
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: const Text("All fields",style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(shape: const StadiumBorder(),),

                  ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Wheat",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),),

                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Maize",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),),

                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Rice",style: TextStyle(color: Colors.black),),
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder(),),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Weather forecast",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.north_east_rounded),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon:const Icon(Icons.wb_sunny),
                    iconSize: 40.0,
                    color: Colors.amber,
                  ),
                  Text(
                    "Today: sunny with 39 degree temp",
                    style: TextStyle(
                      color: Colors.green[800],
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Current tasks",
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.north_east_rounded),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                    height: 50.0,
                  width: 50.0,
                  margin: const EdgeInsets.all(0.0),
                    padding: const EdgeInsets.all(5.0),
                  decoration:BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(child: Text("2d due",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2.0,),)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("scheduled spraying was not",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 12.0)),
                      const Text("performed you have t wo days of delay",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 12.0)),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Text("Maize #1",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 10.0),
                      ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,10.0 , 10.0, 10.0),
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    margin: const EdgeInsets.all(0.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration:BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(child: Text("3d left",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2.0,),)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("field fertilization required in               ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 12.0)),
                      Text("3 days",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 12.0)),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(10))

                        ),
                        child: Text("Wheat #1",style: TextStyle(color: Colors.green[900],fontWeight: FontWeight.bold,letterSpacing: 2.0,fontSize: 10.0),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_rounded),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

