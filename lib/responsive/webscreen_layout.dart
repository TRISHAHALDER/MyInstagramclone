import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/providers/userprovider.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:provider/provider.dart';
import 'package:instagram_clone/model/user.dart' as model;


class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      //   decoration: BoxDecoration(
      //     image: DecorationImage(
      //         image: NetworkImage(user.photoUrl),
      //         fit: BoxFit.fill,
      //         alignment: FractionalOffset.topCenter),
      //   ),

      body: Center(
        child: 
        //Text(user.email,),
        Image(image: NetworkImage(user.photoUrl),
      ),
      ),
    );
  }
}
