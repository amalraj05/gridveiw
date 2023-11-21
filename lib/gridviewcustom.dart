import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
    appBar: AppBar(
      leading: Icon(Icons.menu),
      title: Text("GridviewCustom"),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Icon(Icons.search),
      )],
      backgroundColor: Colors.pink,
      ),
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1
          ), 
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return 
               Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(color: Colors.white,border: Border.all(color: Colors.pink)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: CircleAvatar(backgroundImage: NetworkImage(images[index],),),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10),
                     child: Text(head[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 35),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                     child: Text(body[index],style: TextStyle(color: Colors.black),),
                   )
                  ],
                ),
              
            );
           },
           childCount: images.length,
           ),
           shrinkWrap: true,
           )
      );
    }
}

final List images=[
  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/640px-WhatsApp_icon.png",
  "https://img.freepik.com/premium-vector/purple-gradiend-social-media-logo_197792-1883.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Facebook_Logo_2023.png/768px-Facebook_Logo_2023.png",
];
List head=[
  "Whatsapp",
  "Instagram",
  "Facebook",
];
List body=[
  "WhatsApp About is a summary displayed on the profile of the account. \n It allows WhatsApp users to use text, quotes, emojis, and other characters to feed in the bio section. \n By default, WhatsApp set the bio as “Hey there! I am using WhatsApp.” \n So, we have here curated more than 450 quotes, lines, and humour sentences to use on WhatsApp About section for men and women.",
  "An Instagram bio is all about making a strong first impression.Most people decide whether to follow (or ignore) an account based on its bio.If your Instagram bio enticing, they might decide to engage with your content or follow your account. If it isn't, you might lose their interest.In article, we'll look at some Instagram bio ideas that you can literally copy and paste into your profile. You will also learn how an Instagram bio works, how to write one, and some cool Instagram bio tricks",
  "Facebook is a website which allows users, who sign-up for free profiles, to connect with friends, work colleagues or people they don't know, online. It allows users to share pictures, music, videos, and articles, as well as their own thoughts and opinions with however many people they like.",
];