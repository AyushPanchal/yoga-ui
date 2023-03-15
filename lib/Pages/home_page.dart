import 'package:flutter/material.dart';
import 'package:yoga_ui/widgets/yoga_types.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> yogaList = ["Morning", "Sleep", "Focus", "Music", "Evening"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            5.0,
                            0
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Icon(
                      Icons.menu_outlined,
                      size: 25,
                    ),
                  ),
                  //  Feel better text
                  Text(
                    "Feel Better",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  //  Circular photo
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              //Text lets start meditation
              Text(
                "Let's start meditation today for your better day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              SizedBox(
                height: 20,
              ),
              //  Search bar
              TextField(
                cursorColor: Colors.black,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  hintText: "Search Meditation",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Yoga Types
              Container(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: yogaList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            selectedIndex = index;
                          },
                        );
                      },
                      child: YogaType(
                          yogaName: yogaList[index],
                          isSelected: selectedIndex == index),
                    );
                  },
                ),
              ),
              //  selectedMeditation
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Select Meditation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(26),
                          topRight: Radius.circular(26),
                        ),
                      ),
                      height: 250,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 250,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/photo-1544367567-0f2fcb009e0b.avif'),
                              ),
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(26),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 90,
                              decoration: BoxDecoration(
                                // image: DecorationImage(),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// usage of inetadress class
// client server program using tcp sokects to echo the message send by the client
// xplain use of prepared statement and callable statement with example
// list the different types of jdbc drivers. explain thin driver!!
// differentiate ServletConfig || ServeletContext objetcs
// discuss servlet lifecycle methods. explain role of web container
