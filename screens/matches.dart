import 'package:flutter/material.dart';
import '/models/data.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF7F7F7),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Center(
                child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
          ),
        ),
        centerTitle: true,
        title: const Text(
          'Matches',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF575757)),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: const Center(
                child: Icon(
              Icons.search,
              color: Colors.black,
            )),
          )
        ],
      ),
      backgroundColor: const Color(0xFFF7F7F7),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(
                height: listOfMatches.length * 90 + 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(listOfMatches[index].team1,
                                        style: const TextStyle(
                                            color: Color(0xFf696B79),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
                                    Image.asset(
                                      listOfMatches[index].logo1,
                                      width: 60,
                                      height: 60,
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(listOfMatches[index].time,
                                        style: const TextStyle(
                                            color: Color(0xFFFF2882),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Text(listOfMatches[index].date,
                                        style: const TextStyle(
                                            color: Color(0xFf696B79),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700)),
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
                                            fontWeight: FontWeight.w700)),
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
      ),
    );
  }
}
