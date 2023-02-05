import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String team1;
  final String team2;
  final String logo1;
  final String logo2;
  final String resulte;
  final String time;
  const DetailsScreen(
      {Key? key,
      required this.team1,
      required this.team2,
      required this.logo1,
      required this.logo2,
      required this.resulte,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 430,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 8,
                    right: 8,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                            height: 350, color: const Color(0xFF37003C)))),
                Positioned(
                    top: 40,
                    left: 15,
                    right: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF542558),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        ),
                        const Text(
                          'Primer League',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFF542558),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    )),
                Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 270,
                      width: 200,
                      margin: const EdgeInsets.only(left: 90),
                      child: Image.asset(
                        'assets/images/pl_logo.png',
                        fit: BoxFit.contain,
                        color: const Color(0xFF5B065E),
                      ),
                    )),
                Positioned(
                  top: 130,
                  left: 40,
                  right: 40,
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(children: [
                      Positioned(
                          top: 30,
                          left: 0,
                          right: 0,
                          child: Column(
                            children: const [
                              Text('Anfield stadium',
                                  style: TextStyle(
                                      color: Color(0xFF653666),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Week 10',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500))
                            ],
                          )),
                      Positioned(
                          left: 10,
                          right: 10,
                          top: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Image.asset(
                                  logo1,
                                  width: 70,
                                  height: 70,
                                ),
                                Text(team1,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Home',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500))
                              ]),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    resulte,
                                    style: const TextStyle(
                                        color: Color(0xFF653666),
                                        fontSize: 28,
                                        fontWeight: FontWeight.w800),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF653666),
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: const Color(0xFFFF2882),
                                            width: 1)),
                                    child: Center(
                                        child: Text(
                                      time,
                                      style:
                                          const TextStyle(color: Colors.white),
                                    )),
                                  )
                                ],
                              ),
                              Column(children: [
                                Image.asset(
                                  logo2,
                                  width: 70,
                                  height: 70,
                                ),
                                Text(team2,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700)),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Away',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500))
                              ])
                            ],
                          ))
                    ]),
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(children: [
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 55,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFFF2882),
                        ),
                        child: const Center(
                            child: Text(
                          'Stats',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6),
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: const Center(
                            child: Text(
                          'Lin-up',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6),
                        )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 55,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFF5F5F5),
                        ),
                        child: const Center(
                            child: Text(
                          'Summary',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.6),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '5',
                          style: TextStyle(
                              color: Color(0xFF37003C),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          'Shots on goal',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          '6',
                          style: TextStyle(
                              color: Color(0xFFFF2882),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFFF8E4EE),
                                borderRadius: BorderRadius.circular(5)),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 10,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF37003C),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8E4EE),
                              borderRadius: BorderRadius.circular(5)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 10,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF2882),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '5',
                          style: TextStyle(
                              color: Color(0xFF37003C),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          'Shots on goal',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          '6',
                          style: TextStyle(
                              color: Color(0xFFFF2882),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFFF8E4EE),
                                borderRadius: BorderRadius.circular(5)),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 10,
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF37003C),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8E4EE),
                              borderRadius: BorderRadius.circular(5)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 10,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF2882),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '12',
                          style: TextStyle(
                              color: Color(0xFF37003C),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          'Shots on goal',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.6),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                              color: Color(0xFFFF2882),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.6),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                                color: Color(0xFFF8E4EE),
                                borderRadius: BorderRadius.circular(5)),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                  height: 10,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF37003C),
                                      borderRadius: BorderRadius.circular(5))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Container(
                          height: 10,
                          decoration: BoxDecoration(
                              color: Color(0xFFF8E4EE),
                              borderRadius: BorderRadius.circular(5)),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 10,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xFFFF2882),
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ))
                      ],
                    )
                  ],
                )
              ]),
            ),
          ))
        ],
      ),
    );
  }
}
