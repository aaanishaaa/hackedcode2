import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:groupshot/screens/onboarding/add_circle_form.dart";

class KnownCircleScreen extends StatelessWidget {
  const KnownCircleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/friends.png")),
            SizedBox(height: 20,),

            Text("Create your Circle", style: TextStyle(
                color: Color(0xFF202244),
                fontSize: 22,
                fontWeight: FontWeight.w800

            ),),
            SizedBox(height: 10,),
            Text("Upload the details and photos of your friends and family.", textAlign: TextAlign.center,maxLines: 3, style: TextStyle(
                color: Color(0xff545454),
                fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 50,),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCircleForm()));
                },
                child: Container(
                  width: 120,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffd93c6d),
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Let's go",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),

                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
            )

          ],
        ),
        
      ),
    );
  }
}
