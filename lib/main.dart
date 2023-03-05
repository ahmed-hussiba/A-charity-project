import 'package:elgam3ya/WelcomeScreen2.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _textController = TextEditingController();

  // Store user text into a variable
  String userpost = '';

  // Connect the project to the realtime database
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();
  String realTimeValue = '0';
  String getOnceValue = '';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(219, 53, 82, 1),
          title: Text(
            "جمعية السلام",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Positioned.fill(
                child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      "images/im5.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    // display text
                    Text(
                      "مرحبا بك في التطبيق الخاص بجمعية السلام",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "fonts/Lobster-Regular.ttf",
                          fontSize: 40,
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 90,
                    ),

                    // Text input
                    TextField(
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: _textController,
                      decoration: InputDecoration(
                        suffixIconColor: Colors.white70,
                        hintText: "اسم المتسابق ؟",
                        hintStyle: TextStyle(color: Colors.white54),
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                            onPressed: () {
                              //clear what`s currently in the text field
                              _textController.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ),
                    ),
                    SizedBox(
                      height: 120,
                    ),

                    // input button
                    MaterialButton(
                      color: Color.fromRGBO(219, 53, 82, 1),
                      onPressed: () {
                        setState(() {
                          userpost = _textController.text;
                        });
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomeScreen2()),
                        );
                      },
                      child: const Text(
                        "عرض نتيجة المتسابق",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
