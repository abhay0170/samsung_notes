import 'package:flutter/material.dart';

TextStyle drawerContent =
    TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black);

class AppPadding {
  // ignore: non_constant_identifier_names
  EdgeInsets DrawerContentPadding =
      EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5);
}


//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8),color: Colors.grey),
//                 child: Padding(
//                   padding: AppPadding().DrowerContentPadding,
//                   child: Row(
//                     children: [
//                       Icon(Icons.library_books_outlined),
//                       SizedBox(width: 10,),
//                       Text("All Notes",style: drawerContent,)
//                     ],
//                   ),
//                 ),
//               ),