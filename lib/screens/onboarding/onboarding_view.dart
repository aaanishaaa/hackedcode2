import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groupshot/screens/loginview/login_view.dart';
import 'package:groupshot/screens/onboarding/widgets/slider_indicator.dart';

class OnboardingScreenView extends StatefulWidget {
  const OnboardingScreenView({super.key});

  @override
  State<OnboardingScreenView> createState() => _OnboardingScreenViewState();
}

class _OnboardingScreenViewState extends State<OnboardingScreenView> {
  @override
  int index=0;
  List<String> images=["biometric.png","cloud_upload.png","mail_export.png"];
  List<String> onbrdingMainStr=["Find Photos in a Flash:\nPowered by AI","Privacy You Can Trust:\nYour Photos, Securely Sorted","Snap, Share, Smile:\nSpread Photo Joy!"];
  List<String> onbrdingSubStr=["Sort Photos by Face with Facial Recognition","The All-in-One Photo Organizer","Share Stories with Stunning Photos"];

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,

        ),
        onPressed: (){
          setState(() {
            if(index!=2){
              index=index+1;
            }
            else{
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginViewScreen()));
            }
            print(images[index]);
          });
        },
        shape: RoundedRectangleBorder(

          borderRadius: BorderRadius.circular(100),
          side: BorderSide(
            color: Color(0xffd93c6d)
          ),

        ),
        backgroundColor: Color(0xffd93c6d),
        
        

      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        color: Color(0xffF5F9FF),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                child: Text("Skip", style: TextStyle(color:Color(0xff202244) , fontWeight: FontWeight.bold, fontSize: 15 ),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginViewScreen()));

                },
              ),
            ),

            Column(
              children: [
                SizedBox(
                  height: 300, // Set a fixed height for the image
                  child: Image.asset(
                    "assets/images/${images[index]}",
                    fit: BoxFit.contain, // Scale the image to fit within the bounds
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      onbrdingMainStr[index],
                      style: TextStyle(color:Color(0xff202244), fontSize: 20, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10,),
                    Text(onbrdingSubStr[index], style: TextStyle(color: Color(0xff545454)),),
                  ],
                ),
              ],
            ),




            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 100,
                child:SliderIndicator(currentIndex: index, itemCount: 3, )
              ),
            )
          ],
        ),
      ),
    );
  }
}
