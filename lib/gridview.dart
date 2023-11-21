import 'package:flutter/material.dart';
import 'package:gridveiw/gridveiwbuilder.dart';



class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.green,
      leading: Icon(Icons.menu),
      title: Text("Gridview"),
      actions: [Padding(
        padding: const EdgeInsets.only(right: 20),
        child: IconButton(iconSize: 10,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page1()));
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 40,
                )),)]
  

      ),
      body: 
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 180,),
          children: [
            Card(color: Colors.blue,
            child: Image.network("https://images.template.net/wp-content/uploads/2016/04/27043339/Nature-Wallpaper1.jpg",
            fit: BoxFit.fill,)),
            
            
            Card(color: Colors.blue,
            child: Image.network("https://images.pexels.com/photos/36478/amazing-beautiful-beauty-blue.jpg?cs=srgb&dl=pexels-pixabay-36478.jpg&fm=jpg",
            fit: BoxFit.fill,)),
            Card(color: Colors.blue,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbL0V7zkqgbM8077PkyYNENWrRgAGDjW3EhQ&usqp=CAU",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://m.media-amazon.com/images/I/718-1-VUk7L.jpg",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEkiXDGgNdmaO_jTmGfuAj4meRx6mze1AVcnwlkVWgxkY99Pkf2dnClWZyWA8czb6Y3fI&usqp=CAU",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://getwallpapers.com/wallpaper/full/6/6/4/794110-best-beautiful-nature-background-1920x1200.jpg",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://insertface.com/fb/847/nature-scenery-wallpaper-847469-rq7pe-fb.jpg",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZ_66Ol_Fy-bqlQE9pKQZ6ebv6odTQDiPP4pWFaGEcMbR6h2tMSzwmAK4RWQN7P1v-UdM&usqp=CAU",
            fit: BoxFit.fill,)
            ),
            Card(color: Colors.blue,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvUzV8UGcncX213wFeMUlRGeV_B2GZ-M_gxhVFa9J7F-ZIcVaYaqOnhGAsipLrBfeEFbg&usqp=CAU",
            fit: BoxFit.fill,)
            ),
          ],
          ),
      ),
      
    );
  }
}