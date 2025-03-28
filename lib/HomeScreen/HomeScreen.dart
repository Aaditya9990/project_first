import 'package:flutter/material.dart';

import 'list_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int? selectIndex;
  int? selectDate;
  bool isCheckbox = false;
  int? selectText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getAppbar(),
          getList(),
          getDateListview(),
          getCheckboxList(),
        ],
      ),
    );
  }

  Widget getAppbar() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(Icons.menu, size: 20),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: Text(
            "October 2024",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(Icons.keyboard_control_outlined, size: 20),
          ),
        ),
      ],
    );
  }

  Widget getList() {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: item.length,
        itemBuilder: (context, index) {
          var Item = item[index];

          Color containerColor =
              selectIndex == index ? Colors.blue : Colors.white;
          return FittedBox(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectIndex = (selectIndex == index) ? null : index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: containerColor,
                  border: Border.all(color: Colors.black87),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.list, size: 16, color: Item.color),
                      SizedBox(width: 10),
                      Text(
                        Item.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget getDateListview() {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: date.length,
        itemBuilder: (context, index) {
          var Date = date[index];
          Color colorSelectDate =
              selectDate == index ? Colors.blue : Colors.white;

          return FittedBox(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectDate = (selectDate == index) ? null : index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorSelectDate,
                  border: Border.all(color: Colors.black87),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        Date.weekdays,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        Date.datenumber,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget getCheckboxList() {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          Color colorText = selectText == index ? Colors.blue : Colors.black;

          return Container(
            margin: EdgeInsets.only(left: 10, top: 10, right: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black87),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectText = (selectText == index) ? null : index;
                      });
                    },
                    child: Text(
                      "Yesterday, 21 oct",
                      style: TextStyle(
                        fontSize: 20,
                        color: colorText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.vertical,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                     return getListAdapter();
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget getListAdapter(){
    return Row(
      children: [
        Container(color: Colors.blue, width: 1, height: 35),
        Checkbox(
          value: isCheckbox,
          onChanged: (bool? value) {
            setState(() {
              isCheckbox = value!;
            });
          },
        ),
        SizedBox(width: 10),
        Text(
          "Text",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
