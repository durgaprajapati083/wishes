import 'package:flutter/material.dart';
import 'package:wishes/reels.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pinkAccent,
              bottom: const TabBar(labelStyle: TextStyle(fontSize: 18), tabs: [
                Tab(
                  text: "Message",
                ),
                Tab(
                  text: "Images",
                ),
                Tab(
                  text: "Video",
                ),
              ]),
              centerTitle: true,
              title: const Text(
                "  ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white70,
                ),
              ),
            ),
            body: TabBarView(children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                child: SingleChildScrollView(
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.pinkAccent,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "! Happy Birthday To you my Princess !\n            💕\n             🍥🎂",
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: "OleoScript",
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 175,
                          ),
                          Text(
                            "Meri jaan 💕, Mohabbat to ham aap se hi karenge, Milnaa namilnaa ye to kismat kaa khel hai ,\n            I love you my love ❣️💕"
                            "\nHappy Birthday to you 🎂🍰 \n  💕",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "OleoScript",
                            ),
                          ),
                          SizedBox(
                            height: 175,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pinkAccent,
                  child: ListView(
                    children: const [
                      Image(
                        image: AssetImage("images/img12.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img11.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img10.jpg"),
                      ),
                     
                    ],
                  ),
                ),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 16, top: 36, right: 16, bottom: 36),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.pinkAccent,
                  child: ReelsPage(),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
