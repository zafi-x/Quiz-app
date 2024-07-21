import 'package:flutter/material.dart';
import 'package:quiz_app3/home.dart';
import 'package:quiz_app3/main.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

List<String> ques = [
  "Which language is Used in Flutter?",
  "Which language is Used in Flutter?",
  "Which language is Used in Flutter?",
  "Which language is Used in Flutter?",
  "Which language is Used in Flutter?",
];
List<String> option1 = ["Python", "Python", "Python", "Python", "Python"];
List<String> option2 = [
  "Dart",
  "Dart",
  "Dart",
  "Dart",
  "Dart",
];
List<String> option3 = [
  "Java",
  "Java",
  "Java",
  "Java",
  "Java",
];
List<String> option4 = [
  "C++",
  "C++",
  "C++",
  "C++",
  "C++",
];

List<String> temAns = [];
List<String> cAns = [
  "Dart",
  "Dart",
  "Dart",
  "Dart",
  "Dart",
];

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 600,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Qno ${index + 1}) ${ques[index]}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    temAns.insert(index, option1[index]);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 201, 41, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "a) ${option1[index]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    temAns.insert(index, option2[index]);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            255, 201, 41, 1),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: Center(
                                      child: Text(
                                        "b) ${option2[index]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    temAns.insert(
                                      index,
                                      option3[index],
                                    );
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 201, 41, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "c) ${option3[index]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    temAns.insert(
                                      index,
                                      option4[index],
                                    );
                                    print(temAns);
                                  },
                                  child: Container(
                                    height: 35,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(255, 201, 41, 1),
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "d) ${option4[index]}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {
              marks = 0;
              for (int i = 0; i < cAns.length; i++) {
                if (temAns[i] == cAns[i]) {
                  print('Correct');
                  marks++;
                } else {
                  print('Incorrect');
                }
              }
              print("this is temp answer $temAns \n$marks");

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            child: const Center(
              child: Text("Submit"),
            ),
          )
        ],
      ),
    );
  }
}
