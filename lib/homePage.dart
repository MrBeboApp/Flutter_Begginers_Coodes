import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List  titles = ["Asian","American","Pizza","Vegan","Sush","Egyption","Coodes"];
  List icons = [Icons.home,Icons.umbrella,Icons.ac_unit_rounded,Icons.access_alarm,Icons.info,Icons.accessible_outlined,Icons.whatshot_outlined];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf3f5f9),
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:3.0,bottom: 10),
                child: Text("Explore",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

              ),
              Container(
                height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find a food or Restaurant",
                        prefixIcon: Icon(Icons.search,color: Colors.indigo,),
                        suffixIcon: Icon(Icons.add_road_rounded,color: Colors.grey,),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,

                      ),
                    ),
                  )),
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: titles.length,
                    itemBuilder: (context,index){

                  return _sectionCard(icons[index],titles[index]);
                }),
              )
            ],
          ),
        ),
      ) ,
    );
  }
  Widget _sectionCard(IconData icon,String title){

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,


                borderRadius: BorderRadius.circular(30)
            ),
            child: Icon(icon,color: Colors.indigo,),),
          SizedBox(height: 10,),
          Text(title)
        ],
      ),
    );
  }
}
