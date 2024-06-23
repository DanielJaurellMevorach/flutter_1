import 'package:dribble/pages/exercise_tile.dart';
import 'package:dribble/pages/mood.dart';
import 'package:dribble/pages/moodCard.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 17, 140, 248),
            Color.fromARGB(255, 35, 113, 182),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: SizedBox(
          height: 62,
          child: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/home_icon.png",
                    scale: 1.9,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/person_icon.png",
                    scale: 1.9,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/send_icon.png",
                  scale: 1.9,
                ),
                label: "",
              )
            ],
          ),
        ),
        //backgroundColor: const Color.fromARGB(255, 35, 113, 182),
        body: SafeArea(
          child: Column(
            children: [
              // Upper section
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Text(
                                "Hi, Daniel!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text(
                              "23 June, 2024",
                              style: TextStyle(color: Colors.blue.shade200),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 30, 136, 229),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Icon(Icons.notifications_sharp,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    // End of upper section

                    // Start of search bar
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(200, 92, 166, 226),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.only(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                        child: Row(
                          children: [
                            Transform(
                              transform: Matrix4.identity()
                                ..scale(-1.0, 1.0, 1.0),
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/search_icon.png',
                                color: Colors.white,
                                width: 30,
                              ),
                            ),

                            //Icon(Icons.search, color: Colors.white),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                "Search",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // End of search bar

                    //Start of mood
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(Icons.more_horiz, color: Colors.white),
                        ],
                      ),
                    ),
                    //Cards
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MoodCard(mood: Mood(emoji: '😔', mood: 'Badly')),
                          MoodCard(mood: Mood(emoji: '🙂', mood: 'Fine')),
                          MoodCard(mood: Mood(emoji: '😀', mood: 'Well')),
                          MoodCard(mood: Mood(emoji: '😁', mood: 'Excellent')),
                        ],
                      ),
                    ),
                  ],
                ),
              ), // End of Cards

              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  child: Container(
                    color: Color.fromARGB(255, 244, 244, 244),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 40.0),
                      child: ListView(
                        // Use ListView here
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Exercises",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.more_horiz,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                          ExerciseTile(
                            exercise: "Speaking skills",
                            subtitle: "15 exercises",
                            icon: Icon(Icons.favorite),
                            iconBackground: Colors.amber,
                            iconColor: Colors.white,
                          ),
                          ExerciseTile(
                            exercise: "Reading speed",
                            subtitle: "8 exercises",
                            icon: Icon(Icons.person),
                            iconColor: Colors.white38,
                            iconBackground:
                                const Color.fromARGB(255, 131, 188, 235),
                          ),
                          ExerciseTile(
                            exercise: "Writing skills",
                            subtitle: "20 exercises",
                            icon: Icon(Icons.star),
                            iconColor: Colors.white,
                            iconBackground: Color.fromARGB(255, 236, 29, 132),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ], // End of safearea children
          ),
        ),
      ),
    );
  }
}
