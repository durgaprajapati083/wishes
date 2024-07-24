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
                              "! Happy Birthday To you my Princess !\n              Jyoti💕\n             🍥🎂",
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
                            "\nHappy Birthday to you 🎂🍰 \n    meri future wife 💕Jyoti",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "OleoScript",
                            ),
                          ),
                          SizedBox(
                            height: 175,
                          ),
                          Text(
                            "Jyoti 💕, Pagli tu har bar bolti hai ki love nahi karta hai, lekin kitna kart hu ye mujhe bhi pata nahi hai aur mai kitan karta hu kabhi dekhaana bhi nahi chahta huu, tum iske through hamre love ko feel kar sakti ho ki kitna karta hu ",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "OleoScript",
                            ),
                          ),
                          SizedBox(
                            height: 175,
                          ),
                          Text(
                            "Jyoti 💕, I'm so Sorry meri Pagli💕, because mai aap ko koi gift🎁 nahi de saka aap k Birthday🎂 pe❣️ aap se bahut dur hu, To socha ki kya du to yehi samajh lena ki gift hai",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "OleoScript",
                            ),
                          ),
                          SizedBox(
                            height: 175,
                          ),
                          Text(
                            "Mai aap ko most expensive gift🧧🎁 to nahi desakta hu but I think most expensive love 💕desakta hu, Mujhe pata hai ki ye sentence padh k aap ko bahut gussa araha hogaa😂🤣kyu ki app soch rahi hongi ki time to deta hi nahi hai aur bol raha hai ki most expensive love deneko 😂😁, dena to chahta hu lekin jab se ghar aaya hu time hi nahi milti hai kabhi idhar jaoo kabhi udhar jaoo bahut sari kaam aajati hai agar yebhi naa karu to ghar wale bhi bolne lagenge aap to samajh sakti ho naa ek ladke k upar kitni 10sion hoti hai, mera bhi man karta hai ki baat karu fully time du lekin mujhe sab soch na padta hai pagli💕, Jyoti please understand me Pagal, Dekh pagali ek ladka ko khaali samajh ne wali Maa💕❣️ hi hoti hai orna uski wife😘 jo samajh sakti hai aur lago to kaam hi nikal naa chahte hai.",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "OleoScript",
                            ),
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
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img6.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img5.jpg"),
                      ),
                      SizedBox(height: 35),
                      Image(
                        image: AssetImage("images/img7.jpg"),
                      ),
                      SizedBox(height: 35),
                      Image(
                        image: AssetImage("images/img8.jpg"),
                      ),
                      SizedBox(height: 35),
                      Image(
                        image: AssetImage("images/img9.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/jgroup.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/a.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/b.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/c.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/e.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/f.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img2.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/j.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/l.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/m.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img3.jpg"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/p.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/q.png"),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Image(
                        image: AssetImage("images/img4.jpg"),
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
