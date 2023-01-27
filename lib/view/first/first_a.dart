import 'package:flutter/material.dart';
import 'package:suitmedia/view/first/first_b.dart';

class FirstA extends StatefulWidget {
  const FirstA({super.key});

  @override
  State<FirstA> createState() => _FirstAState();
}

class _FirstAState extends State<FirstA> {
  TextEditingController nameController = TextEditingController();
  String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 86, 167, 169),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 35, 0, 35),
                child: Image.asset(
                  "assets/image/first/logo.png",
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width * 0.6,
                height: 45,
                color: Colors.white,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: 'Name',
                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width * 0.6,
                height: 45,
                color: Colors.white,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    labelText: 'Palindrome',
                  ),
                  onChanged: (text) {
                    setState(() {
                      fullName = text;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 45),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 45,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FirstB();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Check',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 120, 150, 168),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 45,
                  child: Container(
                    child: Material(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(15),
                        splashColor: Colors.teal.shade200,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return FirstB();
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 120, 150, 168),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
