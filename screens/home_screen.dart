import 'package:flutter/material.dart';
import 'package:flutter_live_score_application/models/data.dart';
import 'package:flutter_live_score_application/screens/details_screen.dart';
import 'package:flutter_live_score_application/screens/matches.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                      child: Image.asset(
                    'assets/images/man.png',
                    width: 40,
                    height: 40,
                  )),
                  Image.asset(
                    'assets/images/logo.PNG',
                    width: 150,
                    height: 50,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(child: Icon(Icons.search)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listOfLeagues.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xFFFF2882),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        listOfLeagues[index].logo,
                                        width: 30,
                                        height: 30,
                                        color: Colors.white,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        listOfLeagues[index].name,
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Live Match',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87),
                      ),
                      SizedBox(
                        height: 270,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listOfLivematches.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => DetailsScreen(
                                          team1: listOfLivematches[index].team1,
                                          team2: listOfLivematches[index].team2,
                                          logo1: listOfLivematches[index].logo1,
                                          logo2: listOfLivematches[index].logo2,
                                          resulte:
                                              listOfLivematches[index].resulte,
                                          time:
                                              listOfLivematches[index].time)));
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    height: 270,
                                    width: 300,
                                    color: const Color(0xFF37003C),
                                    child: Stack(children: [
                                      Positioned(
                                          top: 30,
                                          left: 0,
                                          right: 0,
                                          child: Column(
                                            children: const [
                                              Text('Primer League',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Week 10',
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          )),
                                      Positioned(
                                          left: 10,
                                          right: 10,
                                          top: 100,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(children: [
                                                Image.asset(
                                                  listOfLivematches[index]
                                                      .logo1,
                                                  width: 70,
                                                  height: 70,
                                                ),
                                                Text(
                                                    listOfLivematches[index]
                                                        .team1,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text('Home',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ]),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    listOfLivematches[index]
                                                        .resulte,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 28,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  Container(
                                                    height: 40,
                                                    width: 60,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xFF653666),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xFFFF2882),
                                                            width: 1)),
                                                    child: Center(
                                                        child: Text(
                                                      listOfLivematches[index]
                                                          .time,
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  )
                                                ],
                                              ),
                                              Column(children: [
                                                Image.asset(
                                                  listOfLivematches[index]
                                                      .logo2,
                                                  width: 70,
                                                  height: 70,
                                                ),
                                                Text(
                                                    listOfLivematches[index]
                                                        .team2,
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w700)),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Text('Away',
                                                    style: TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500))
                                              ])
                                            ],
                                          ))
                                    ]),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Matches',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF575757))),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const MatchesScreen()));
                              },
                              child: const Text('see all',
                                  style: TextStyle(
                                      color: Color(0xFFFF2882), fontSize: 16)))
                        ],
                      ),
                      SizedBox(
                        height: listOfMatches.length * 90 + 100,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: listOfMatches.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(listOfMatches[index].team1,
                                                style: const TextStyle(
                                                    color: Color(0xFf696B79),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            Image.asset(
                                              listOfMatches[index].logo1,
                                              width: 60,
                                              height: 60,
                                            )
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(listOfMatches[index].time,
                                                style: const TextStyle(
                                                    color: Color(0xFFFF2882),
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Text(listOfMatches[index].date,
                                                style: const TextStyle(
                                                    color: Color(0xFf696B79),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              listOfMatches[index].logo2,
                                              width: 60,
                                              height: 60,
                                            ),
                                            Text(listOfMatches[index].team2,
                                                style: const TextStyle(
                                                    color: Color(0xFf696B79),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w700)),
                                          ],
                                        )
                                      ]),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFFFF2882),
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          iconSize: 30,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.analytics), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]),
    );
  }
}
