import 'dart:developer';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      theme: ThemeData(
        backgroundColor: const Color(0XFEF0F0F0),
        fontFamily: 'Lora',
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

const String _url1 = 'https://github.com/ishan04joshi';
const String _url2 = 'https://www.instagram.com/ishan_j0shi/';
const String _url3 = 'https://www.linkedin.com/in/ishan-joshi-0220a9204/';
const String _url4 =
    'https://ishan04joshi.github.io/Ishanjoshi.github.io/main.html';
const String _url5 =
    'mailto:ishanjoshi112004@gmail.com?subject=RegardingFlutter&body=Hello Ishan';
const String _url6 = 'tel:+91 8890966141';

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile',
              style: TextStyle(
                  color: Color(0XFE1C2833),
                  fontSize: 30,
                  fontWeight: FontWeight.bold)),
        ),
        body: ListView(
          children: [
            //
            //
            //
            Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            if (!await launch(_url4))
                              throw 'Could not launch $_url4';
                          },
                          child: Image.asset("assets/Profile.png"),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0XFE138D75),
                              elevation: 3,
                              fixedSize: const Size.square(200.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(200))),
                        ),
                      ],
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/header.png"),
                        fit: BoxFit.cover,
                      ),
                    ))),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              ElevatedButton(
                onPressed: () {
                  log("Statistics", name: "Statistics Buttons");
                },
                child: Image.asset('assets/stats.png'),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEAAB7B8),
                    elevation: 0,
                    fixedSize: const Size.square(40.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              const Text("Ishan Joshi",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0XFE0066ff),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              ElevatedButton(
                onPressed: () {
                  log("Licked", name: "like Buttons");
                },
                child: Image.asset('assets/like.png'),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEAAB7B8),
                    elevation: 0,
                    fixedSize: const Size.square(40.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ]),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("Professional ... dom't know",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFE85C1E9),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 2.0),
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              log("Search", name: "Search Buttons");
                            },
                            child: const Text('500\n\nFollowers',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0)),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0XFE0D505C),
                                elevation: 3,
                                fixedSize: const Size.square(110.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              log("Search", name: "Search Buttons");
                            },
                            child: const Text('100\n\nFollowing',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0)),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0XFE0D505C),
                                elevation: 3,
                                fixedSize: const Size.square(110.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              log("Search", name: "Search Buttons");
                            },
                            child: const Text('8\n\nMutual',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16.0)),
                            style: ElevatedButton.styleFrom(
                                primary: const Color(0XFE0D505C),
                                elevation: 3,
                                fixedSize: const Size.square(110.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ]),
                // color: Colors.lightBlueAccent[700]
              ),
            ),
            //
            Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 2.0),
                child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(_url5))
                                        throw 'Could not launch $_url5';
                                    },
                                    child: Image.asset('assets/email.png'),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.square(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text(
                                        'ishanjoshi112004@gmail.com',
                                        style: TextStyle(fontSize: 15.0)),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.fromHeight(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(_url6))
                                        throw 'Could not launch $_url6';
                                    },
                                    child: Image.asset('assets/phone.png'),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.square(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('+91 8890966141',
                                        style: TextStyle(fontSize: 15.0)),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.fromHeight(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    onPressed: () async {
                                      if (!await launch(_url4))
                                        throw 'Could not launch $_url4';
                                    },
                                    child: Image.asset('assets/web.png'),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.square(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Website.com',
                                        style: TextStyle(fontSize: 15.0)),
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0XFE2E4053),
                                        elevation: 3,
                                        fixedSize: const Size.fromHeight(40.0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                              ]),
                          const SizedBox(
                            height: 15,
                          ),
                        ]),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/background.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ))),
            //
            //

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 2.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (!await launch(_url1))
                          throw 'Could not launch $_url1';
                      },
                      child: Image.asset('assets/gh.png'),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFE2E4053),
                          elevation: 3,
                          fixedSize: const Size.square(80.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (!await launch(_url2))
                          throw 'Could not launch $_url2';
                      },
                      child: Image.asset('assets/insta.png'),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFE2E4053),
                          elevation: 3,
                          fixedSize: const Size.square(80.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (!await launch(_url3))
                          throw 'Could not launch $_url3';
                      },
                      child: Image.asset('assets/li.png'),
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0XFE2E4053),
                          elevation: 3,
                          fixedSize: const Size.square(80.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('All About me',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
        backgroundColor: Colors.black,
        drawer: Drawer());
  }
}
