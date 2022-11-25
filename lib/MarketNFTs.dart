import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

class MarketNFTs extends StatelessWidget {
  const MarketNFTs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //   SizedBox(width: 100,),
                          Text('Market',
                              style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                              )),
                          SizedBox(
                            width: 70,
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            //color: Colors.white,
                            child: Stack(children: [
                              Positioned(
                                width: 80,
                                height: 80,
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 38,
                                ),
                              ),
                              Positioned(
                                left: 35.0,
                                top: 5.0,
                                width: 30,
                                height: 50,
                                child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 5,
                                    child: Text(
                                      '5',
                                    )),
                              ),
                            ]),
                          )
                        ]),

                    //Text
                  ),
                  SingleChildScrollView(
                      child: Container(
                    height: 40,
                    width: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                            height: 30,
                                            width: 100,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                              border: Border.all(
                                                  color: Colors.lightBlue,
                                                  width: 1),
                                              color: Colors.white10,
                                            ),
                                            child: Text('All NFTs',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                ))),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        customContainer(
                                          text: 'Art',
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        customContainer(
                                          text: 'Collectibles',
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        customContainer(
                                          text: 'Music',
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        customContainer(
                                          text: 'Photo',
                                        ),
                                      ]));
                            },
                          ),
                        )
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
                      // padding: EdgeInsets.symmetric(vertical: 10.0,),
                      // padding: EdgeInsets.all(16.0),
                      child: Column(children: [
                        Container(
                            height: 250,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                            // border: Border.all(color: Colors.lightBlue, width: 1),
                                            color: Colors.white10,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,

                                                // height: 150,
                                                child: Stack(children: [
                                                  Positioned(
                                                      //right: 10.0,
                                                      //top: 10.0,
                                                      child: Image.asset(
                                                          data[index]['image']
                                                              .toString(), width: double.infinity,
                                                       )),
                                                  Positioned(
                                                    right: 20.0,
                                                    top: 10.0,
                                                    width: 25,
                                                    height: 15,
                                                    child: Container(
                                                        width: 40,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          15)),
                                                          // border: Border.all(color: Colors.lightBlue, width: 1),
                                                          color: Colors.black12,
                                                        ),
                                                        child: Row(children: [
                                                          Image.asset(
                                                            'image/Vector.png',
                                                            width: 12,
                                                            height: 10,
                                                          ),
                                                          SizedBox(
                                                            width: 3,
                                                          ),
                                                          Text('2',
                                                              style: TextStyle(
                                                                fontSize: 10,
                                                                color: Colors
                                                                    .black87,
                                                              ))
                                                        ])),
                                                  ),
                                                ]),
                                              ),
                                              Text(
                                                data[index]['title'].toString(),
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      '#1267',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 90,
                                                    ),
                                                    Container(
                                                        width: 14,
                                                        height: 28,
                                                        child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .arrow_drop_up,
                                                                size: 14,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              Icon(
                                                                  Icons
                                                                      .arrow_drop_down_sharp,
                                                                  size: 14,
                                                                  color: Colors
                                                                      .white)
                                                            ])),
                                                    Text(
                                                      '6.64',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ])
                                            ],
                                          ))
                                    ]);
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return const SizedBox(
                                  width: 15.0,
                                  height: 10.0,
                                );
                              },
                            ))
                      ]))
                ]))));
  }
}

Widget customContainer({required String? text}) {
  return Container(
    padding: EdgeInsets.all(5),
    constraints: const BoxConstraints(
      minWidth: 80,
    ),
    height: 33,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: Colors.white10,
    ),
    child: Text(text!,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        )),
  );
}
