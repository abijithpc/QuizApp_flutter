import 'package:flutter/material.dart';
import 'package:rolo_quiz/list.dart';
import 'package:rolo_quiz/listqs.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
int questionnumber = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Rolo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 80,
                          color: Color.fromARGB(255, 11, 11, 11),
                          alignment: Alignment.center,
                          child: Text(
                            questionbank[questionnumber].questiontext,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.green),
                        onPressed: () {
                          bool correctanswer =
                              questionbank[questionnumber].questionanswers;
                          if (correctanswer == true) {
                            Skorekeeper.add(Icon(
                              Icons.done,
                              color: Colors.green,
                            ));
                          } else {
                            Skorekeeper.add(Icon(
                              Icons.clear,
                              color: Colors.red,
                            ));
                          }

                          setState(() {
                            questionnumber++;
                            nextQuestion();
                          });
                        },
                        child: Text(
                          "True",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.red),
                        onPressed: () {
                          bool correctanswer =
                              questionbank[questionnumber].questionanswers;
                          if (correctanswer == false) {
                            Skorekeeper.add(Icon(
                              Icons.done,
                              color: Colors.green,
                            ));
                          } else {
                            Skorekeeper.add(Icon(
                              Icons.clear,
                              color: Colors.red,
                            ));
                          }

                          setState(() {
                            questionnumber++;
                            nextQuestion();
                          });
                        },
                        child: Text(
                          "False",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: Skorekeeper,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
