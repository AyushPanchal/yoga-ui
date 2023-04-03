
import 'package:flutter/material.dart';
import 'package:yoga_ui/widgets/yoga_types.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> yogaList = ["Morning", "Sleep", "Focus", "Music", "Evening"];
  final List<AssetImage> imageList = [
    const AssetImage('assets/images/img_0.png'),
    const AssetImage('assets/images/img_1.png'),
    const AssetImage('assets/images/img_2.png'),
  ];
  String? image;

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
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
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: const Icon(
                      Icons.menu_outlined,
                      size: 25,
                    ),
                  ),
                  //  Feel better text
                  const Text(
                    "Feel Better",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  //  Circular photo
                  const CircleAvatar(
                    foregroundImage: AssetImage('assets/images/img.png'),
                    radius: 24,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //Text lets start meditation
              const Text(
                "Let's start meditation today for your better day",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
              ),
              const SizedBox(
                height: 20,
              ),
              //  Search bar
              TextField(
                cursorColor: Colors.black,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: Colors.white),
                  ),
                  hintText: "Search Meditation",
                  prefixIcon: const Icon(
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
              SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Select Meditation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,),
                    ),
                  ),
                ],
              ),
              Expanded(

                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  itemBuilder: (i,c){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(26),
                            topRight: Radius.circular(26),
                          ),
                        ),
                        height: 250,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              height: 250-50,
                              decoration: BoxDecoration(
                                image:  DecorationImage(image: imageList[c],fit: BoxFit.cover),
                                // color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(26),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // image: DecorationImage(),
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            'Energize',
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'Meditation',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                height: 5,
                                                width: 5,
                                                decoration: BoxDecoration(
                                                  color: Colors.orange,
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                    50,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              const Text(
                                                '3 - 5 Min',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {},
                                        backgroundColor: Colors.orange,
                                        child: const Icon(Icons.play_circle),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
