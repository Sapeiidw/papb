import 'package:flutter/material.dart';
import 'package:papb/Screens/Main/components/background.dart';
import 'package:flutter_svg/svg.dart';
import 'package:papb/constants.dart';
import 'package:avataar_generator/generator.dart';
import 'package:papb/components/rounded_input_field.dart';

void main() {
  print(getSvg(new Options()));
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
              // header
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 30, color: kPrimaryColor),
                    Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                      Text("Lokasi Sekarang"),
                      Text("Balikpapan")
                    ]),
                    CircleAvatar(
                      backgroundColor: Colors.pink.shade100,
                      child: const Text('SA'),
                    ),
                  ],
                ),
              ),
              // search
              Container(
                child: RoundedInputField(
                  icon: Icons.search,
                  hintText: "Cari dokter ...",
                  onChanged: (value) {},
                ),
              ),
              // hero
              Container(
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(29),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                    // heart beat
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 120,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                              Text(
                                "81",
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Bpm",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ])
                          ])),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                          Text(
                            "Sys",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "144",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "mmHg",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          )),
                          Text(
                            "Dia",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RichText(
                              text: TextSpan(
                            text: "76",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "mmHg",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ))
                        ]),
                      ),
                    ),
                    // heart beat
                    Expanded(
                      flex: 1,
                      child: Container(
                          height: 120,
                          margin: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                            Container(
                              child: Icon(
                                Icons.thermostat_outlined,
                                size: 32,
                                color: Colors.white,
                              ),
                            ),
                            Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                              Text(
                                "32",
                                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "C",
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ])
                          ])),
                    ),
                  ])),
              Container(
                width: size.width * 0.9,
                padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  "Layanan cepat",
                ),
              ),
              Container(
                  width: size.width * 0.9,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.pink.shade100,
                              child: const Text('SA'),
                            ),
                            Text("Emergency"),
                          ])),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.pink.shade100,
                              child: const Text('SA'),
                            ),
                            Text("Emergency"),
                          ])),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                          padding: const EdgeInsets.all(10.0),
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: kPrimaryLightColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: <Widget>[
                            CircleAvatar(
                              maxRadius: 35,
                              backgroundColor: Colors.pink.shade100,
                              child: const Text('SA'),
                            ),
                            Text("Emergency"),
                          ])),
                    ),
                  ]))
            ])));
  }
}
