import 'package:flutter/cupertino.dart';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 122,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: titles.length,
                      itemBuilder: (context,index){

                    return _sectionCard(icons[index],titles[index]);
                  }),
                ),
              ),
              Text("Popular Food",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Container(
                height: 200,

                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                    itemBuilder: (context,index){
                  return _foodCard();
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

  Widget _foodCard() {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            width: 200,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(

                          image: NetworkImage("https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2550&q=80"),fit: BoxFit.cover,
                        )
                      ),
                      ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pasta With Ham",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                        Row(children: [
                          Text("4.2",style: TextStyle(color: Colors.grey)),
                          Row(children: [
                            Icon(Icons.star,color: Colors.indigo,size: 15,),
                            Icon(Icons.star,color: Colors.indigo,size: 15),
                            Icon(Icons.star,color: Colors.indigo,size: 15),
                            Icon(Icons.star,color: Colors.indigo,size: 15),
                            Icon(Icons.star,color: Colors.grey,size: 15),
                          ],),
                          Text("(12+)",style: TextStyle(color: Colors.grey)),

                        ],)
                      ],
                    ),
                    Text("\$25",style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold)),

                  ],
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
