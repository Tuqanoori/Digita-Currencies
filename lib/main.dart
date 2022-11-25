import 'dart:math';

import 'package:flutter/material.dart';

import 'MarketNFTs.dart';

void main() {
  runApp(MarketNFTs());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.black,
            body:SingleChildScrollView(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, left: 10.0),
                    child: Row(children: [
                      CircleAvatar(
                        backgroundColor: Colors.greenAccent[400],
                        radius: 21,
                        child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                            child: Image.asset('image/image.png')),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Account-1',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 150,
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
                  Text('Current Wallet Balance',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 50.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$5,323.00',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white70,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 10.0, right: 20.0),
                      child: Container(
                        height: 25,
                        width: 175,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: Colors.white12,
                        ),
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('BTC : 0,00335',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  )),
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                color: Colors.green,
                                size: 20,
                              ),
                              Text('+6.54%',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.green,
                                  )),
                            ]),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  customContainer(),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                      height: 45,
                      width: 350,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white10,
                      ),
                      child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.white12,
                              ),
                              alignment: Alignment.center,
                              child: Text('Tokens',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            Text('NFTs',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white12,
                                ))
                          ])),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    height:200,
                    child: ListView.separated(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,children: [
                          Padding(
                          padding: EdgeInsets.only(left: 15.0),
                      child:  Container(
                                height:70,
                                child:Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,children:[
                                CircleAvatar(
                                backgroundColor: Colors.orangeAccent,
                                radius: 25,
                                child: Transform.rotate(
                                  angle: 25 * pi / 180,
                                  child:Text('B',

                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      ))),
                            ),
                                      SizedBox(  width: 3,),
                            //SizedBox(  width: 10,),
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,children:[   Text('BTC',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    )),
                                  Text('Bitcoin',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white54,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      )),]),
                            SizedBox(  width: 20,),
                            Image.asset(
                             'image/Line 1 (1).png',
                              width: 100,
                              height: 50,
                            ),
                            SizedBox(  width: 10,),
                            Column(mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[   Text('\$36,590.00',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    )),
                                  Text('+6.21%',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal,
                                      )),])]))),
                        CustemerContainer(imgeurl:'image/Frame 6.png',name1:'ETH',name2:'Ethereum',
                            chart:'image/Line 1.png',
                            price:'\$2,590.00',
                        pricinc:'+5.21%',),
                        CustemerContainer(imgeurl:'image/Frame 7.png',name1:'SOL',name2:'Solona',
                          chart:'image/Line 11.png',
                          price:'\$390.00',
                          pricinc:'+2.21%',)
                      ]);
                    },
                    separatorBuilder: ((context, index) =>
                    const Divider(color: Colors.white30)),
                  ),)

                ]))));
  }

  Widget customContainer( ) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(children: [
              CircleAvatar(
                  backgroundColor: Colors.white10,
                  radius: 40,
                  child: Stack(children: [
                    Positioned(
                        child: CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 19,
                            child: CircleAvatar(
                                backgroundColor: Colors.black45,
                                radius: 18,
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )))),
                    Positioned(
                        left: 35.0,
                        bottom: 32.0,
                        right: 3.0,
                        child: Transform.rotate(
                          angle: 250 * pi / 360,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        )),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text(
                'Send',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ]),
            Column(children: [
              CircleAvatar(
                backgroundColor: Colors.indigoAccent,
                radius: 40,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Buy',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ]),
            Column(children: [
              CircleAvatar(
                  backgroundColor: Colors.white10,
                  radius: 40,
                  child: Stack(children: [
                    Positioned(
                        child: CircleAvatar(
                            backgroundColor: Colors.white24,
                            radius: 19,
                            child: CircleAvatar(
                                backgroundColor: Colors.black45,
                                radius: 18,
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )))),
                    Positioned(
                        left: 30.0,
                        bottom: 15.0,
                        right: 10.0,
                        // width: 30,
                        //height: 50,
                        child: Transform.rotate(
                          angle: 300 * pi / 180,
                          child: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        )),
                  ])),
              SizedBox(
                height: 10,
              ),
              Text(
                'Receive',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              )
            ])
          ]),

    );
  }

Widget CustemerContainer({required String? imgeurl,
  //required String? colorcircl,
  String?name1,
  String? name2,
  String?chart,
  String?price,
  String?pricinc,
}){
    return  Padding(
        padding: EdgeInsets.only(left: 10.0),
  child:  Container(
        height:70,
        child:Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.center,children:[
          Image.asset(
            imgeurl!,
            width: 60,
            height: 50,
          ),
          //SizedBox(  width: 10,),
          Column(mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,children:[   Text(name1!,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              )),
            Text(name2!,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white54,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                )),]),
          SizedBox(  width: 10,),
          Image.asset(
            chart!,
            width: 100,
            height: 50,
          ),
              SizedBox(  width: 10,),
              Column(mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[   Text(price!,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                    Text(pricinc!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        )),]),
        ])));
}


}

