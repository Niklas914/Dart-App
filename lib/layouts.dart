import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget mainWidget(){

  return 
      materialCard();

         
}



Widget materialCard(){
   return SizedBox(
     height:240,
     
     child:Card(
       child: Column(
         children: [
           ListTile(
             title: Text("Eulersche Konstante",
             style: TextStyle(fontWeight: FontWeight.w800)),
             subtitle: Text("phi"),
             leading: Icon(
               Icons.report_problem,
               color: Colors.green[500],
             ),
           ),
           Divider(),
           ListTile(
             title: Text("Eulersche Konstante",
             style: TextStyle(fontWeight: FontWeight.w800)),
             subtitle: Text("phi"),
             leading: Icon(
               Icons.report_problem,
               color: Colors.green[500],
             ),
           ),
           

         ],
       ),
     ),

   );

}
















Widget gridView(){

  return GridView.extent(
    maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4,
    crossAxisSpacing: 4,
    children: _buildGridList(25),
    );
}


List<Widget> _buildGridList(int i) => List.generate(i, (index) => Stack(

  alignment: const Alignment(0.7, 0.5),
    children: [ 
         CircleAvatar(
          backgroundImage: NetworkImage('https://picsum.photos/270'),
          radius: 150,
         ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white60,
          ),
          child: Text("Eulersche phi Funktion",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black26

        )
        )
        )
      ]

   )
);



Widget container(){

  return Expanded(child: Container(
    decoration: BoxDecoration(
      color: const Color(0xF562FF00),
      border: Border.all(
        color: const Color(0x85000000),
        width: 5,

      ),
      borderRadius: BorderRadius.circular(4),
    ),
    
    child: Image.network('https://picsum.photos/270'),
    margin: const EdgeInsets.all(10),//rand zu anderem bild
  )
  );
}