import 'package:flutter/material.dart';
import 'package:gridveiw/gridviewcustom.dart';


class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: Icon(Icons.menu),
      title: Text("Gridviewbuilder"),
      actions: [
        IconButton(onPressed: (){
           Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page3()));
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 30,))
      ],),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 1,
        ), 
        itemCount: name.length,
        
        itemBuilder: (context,index)  {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(children: [
              Container(
              height: 170,width: 170,
              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: CircleAvatar(backgroundImage: NetworkImage(image[index]),)
                    ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(name[index],style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(age[index],style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                  ),
                  
            ],)
              )
            ]
            ),
          ); 
          }
          ),
          );
        }
      }
final List name=[
  "Neymar",
  "Messi",
  "Ronaldo",
  "Dimaria",
  "Lewandowski",
  "Haland",
  "Gavi",
  "Pedri",
  "Ramos",
  "Pepe"
];
List image=[
  "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/603_neymar.jpg",
  "https://img.a.transfermarkt.technology/portrait/big/28003-1694590254.jpg?lm=1",
  "https://etimg.etb2bimg.com/thumb/msid-83569456,imgsize-176089,width-1200,height=765,overlay-etbrandequity/marketing/ronaldo-knocks-off-4-billion-from-coca-colas-value.jpg",
  "https://b.fssta.com/uploads/application/soccer/headshots/871.png",
  "https://m.media-amazon.com/images/M/MV5BZGNiMjM4YWEtZjk0NC00ZjJiLTlhNGYtZmUzOTU5MTNiNzdlXkEyXkFqcGdeQXVyMjUyNDk2ODc@._V1_FMjpg_UX1000_.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQRzacbS5l8o7RDlohdvEb9rZjx3XS6O0jx0NmgyX0YQG9RrQ7a2wkRQQU-I7IK59zIMY&usqp=CAU",
  "https://i2-prod.mirror.co.uk/incoming/article27988318.ece/ALTERNATES/n615/0_GettyImages-1419047197.jpg",
  "https://b.fssta.com/uploads/application/soccer/headshots/72375.png",
  "https://cdn.resfu.com/media/img_news/sergio-ramos--central-del-real-madrid--twitter.jpg?size=1200x&lossy=1",
  "https://b.fssta.com/uploads/application/soccer/headshots/883.vresize.350.350.medium.14.png"
];
List age=[
  "Brazil",
  "Argentina",
  "Portugal",
  "Argentina",
  "Ploand",
  "Norway",
  "Spain",
  "Spain",
  "Spain",
  "Portugal"
];