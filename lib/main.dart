import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  double LingkaranBesar(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;
  double LingkaranKecil(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffeeee),
      body: Stack(
        children: [
          Positioned(
            top: -LingkaranKecil(context) / 3,
            right: -LingkaranKecil(context) / 3,
            child: Container(
              width: LingkaranKecil(context),
              height: LingkaranKecil(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFF333EBD), Color(0xFF777ECD)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Positioned(
            top: -LingkaranBesar(context) / 4,
            left: -LingkaranKecil(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  "driblle",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Pacifico",
                      color: Colors.white),
                ),
              ),
              width: LingkaranBesar(context),
              height: LingkaranBesar(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFF333EBD), Color(0xFF777ECD)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 250, 20, 15),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.message, color: Color(0xFF333EBD)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF333EBD))),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xFF333EBD))),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.vpn_key, color: Color(0xFF333EBD)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF333EBD))),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Color(0xFF333EBD))),
                    ),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 20, 20),
                      child: Text(
                        "FORGET PASSWORD ?",
                        style: TextStyle(color: Color(0xFF333EBD)),
                      ))),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                colors: [Color(0xFF333EBD), Color(0xFF777ECD)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight)),
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Color(0xFF0D00B8),
                            onTap: () {},
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      elevation: 8,
                      child: Image(
                        image: AssetImage("assets/fb.png"),
                      ),
                    ),
                    FloatingActionButton(
                      onPressed: () {},
                      mini: true,
                      elevation: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/twitter.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "DON'T HAVE AN ACCOUNT ",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Color(0xFF333EBD), fontWeight: FontWeight.w500),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
