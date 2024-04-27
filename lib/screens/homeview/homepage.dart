import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:groupshot/screens/onboarding/knowncircle.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft:
                      Radius.circular(40.0), // Adjust corner radius as needed
                  bottomRight: Radius.circular(40.0),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffFFEF73),
                    Color(0xffED84A5),
                  ],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, TESTNAME",
                              style: TextStyle(
                                color: Color(0xFF202244),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              )),
                          Text(
                            "LOCK IN YOUR MEMORIES",
                            style: TextStyle(fontSize: 13),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              hintText: "Search",
                              isDense: true,
                              prefixIcon: Icon(Icons.search_rounded),
                              // suffix:
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffd93c6d),
                                  borderRadius: BorderRadius.circular(10)),
                              child:
                                  Image.asset("assets/icons/adjustfilter.png")),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>KnownCircleScreen()));
                },
                child: Container(child: Image.asset("assets/images/single_upload.png"), height: 150,)),
            SizedBox(height: 20,),
            Container(child: Image.asset("assets/images/bulk_upload.png"), height: 150,),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Align(alignment: Alignment.bottomCenter,child: Image(image: AssetImage("assets/images/bottom_home.png"))),

                    Positioned(
                      bottom: 50, // Adjust the value as needed
                      left: 0,
                      right: 0,
                      child: Center(child: GestureDetector(onTap: (){}, child: Column(
                        children: [
                          Container(padding: EdgeInsets.all(10),decoration: BoxDecoration(color: Color(0xFFFFEB76), shape: BoxShape.circle), child: Image.asset("assets/icons/baseline_camera.png", height: 40,)),
                        ],
                      ))),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
