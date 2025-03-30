import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:project_first/Appconstant.dart';

import 'api integrate/design_model.dart';
import 'api integrate/designapi.dart';
import 'package:http/http.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  var dropdownValue = 'mango';
  final List<String> items = ['mango', 'banana', 'graphs', 'orange'];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<DesignModel>? designModel;

  bool isLoader = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    designModel = await DesignApi().fetchUsers();
    if(designModel != null){
      setState(() {
        isLoader = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: getDrawer(),
      body: Column(children: [getHeader(), getImgList()]),
    );
  }

  Widget getHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imgGirl1),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Spacer(),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black87),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(
              items:
                  items.map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              value: dropdownValue,
              underline: Container(),
              icon: Icon(Icons.arrow_drop_down),
              isExpanded: true,
              focusColor: Colors.transparent,
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, size: 25),
          ),
        ),
      ],
    );
  }

  Widget getImgList() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10, top: 10),
            width: 100,
            height: 130,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black87),
              image: DecorationImage(
                image: NetworkImage(imgGirl1),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined, color: Colors.white),
                  Text(
                    designModel?[index].body ?? "",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget getDrawer() {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.green), // BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              accountName: Text(
                "Abhishek Mishra",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 165, 255, 137),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ), // Text
              ), // CircleAvatar
            ), // UserAccountDrawerHeader
          ), // DrawerHeader
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text(' My Course '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text(' Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.video_label),
            title: const Text(' Saved Videos '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text(' Edit Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ); //
  }
}
