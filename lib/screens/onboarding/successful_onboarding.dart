import 'package:flutter/material.dart';
import 'package:groupshot/screens/homeview/homepage.dart';

class SuccessfulOnboardingPage extends StatefulWidget {
  const SuccessfulOnboardingPage({super.key});

  @override
  State<SuccessfulOnboardingPage> createState() => _SuccessfulOnboardingPageState();
}

class _SuccessfulOnboardingPageState extends State<SuccessfulOnboardingPage> {
  void initState() {
    super.initState();
    // Delay navigation to the next screen
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePageScreen(

          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        
        color: Color(0xffF5F9FF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/images/green_crystal.png")),
            SizedBox(height: 20,),
            Text("Congratulations", style: TextStyle(
                color: Color(0xFF202244),
                fontSize: 22,
                fontWeight: FontWeight.w800

            ),),
            SizedBox(height: 10,),
            Text("Your Account is Ready to Use. You will be redirected to the Home Page in a Few Seconds.", textAlign: TextAlign.center,maxLines: 3, style: TextStyle(
                color: Color(0xff545454),
                fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 50,),
            CircularProgressIndicator(color:Color(0xFF202244) ,)

          ],
        ),
        

      ),
    );
  }
}
