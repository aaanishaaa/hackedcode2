import 'package:flutter/material.dart';
import 'package:groupshot/screens/loginview/profilefill_view.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffF5F9FF),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 130,),
              Text("Let's Sign In.!", style: TextStyle(
                color: Color(0xFF202244),
                fontSize: 22,
                fontWeight: FontWeight.w800
              ),),
              SizedBox(height: 17),
              Text("Memories made to last", style: TextStyle(color: Color(0xff545454), fontSize: 14),),
              SizedBox(height: 30,),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                  hintText: "Email",
                  isDense: true,
                  prefixIcon: Icon(Icons.mail_outline_rounded)
                ),
              ),
              SizedBox(height: 15),
        
              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                    hintText: "Password",
                    isDense: true,
                    prefixIcon: Icon(Icons.lock_outline_rounded)
                ),
              ),
              SizedBox(height: 14),
        
        
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (e){}),
                      Text("Remember Me", style: TextStyle(color: Color(0xff545454), fontWeight: FontWeight.bold, fontSize: 12),)
                    ]
                  ),
                  Text("Forgot Password?", style: TextStyle(color: Color(0xff545454), fontWeight: FontWeight.bold,  fontSize: 12))
        
                ],
              ),
              SizedBox(height: 60),
        
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileFillForm()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
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
                      Text(""),
                      Text("Sign In",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                        ),),
        
                      Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
        
                        ),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward,)),
                      ),
        
        
        
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
        
              Center(child: Text("Or Continue with", style: TextStyle(color: Color(0xff545454), fontWeight: FontWeight.bold),
            )),
              SizedBox(height: 23),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Image(image: AssetImage("assets/icons/google.png"), height: 20, width: 20),
                    ),
                  ),
                  SizedBox(width: 60,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Image(image: AssetImage("assets/icons/apple.png"), height: 20, width: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account? ",
                    style: TextStyle(color: Color(0xff545454),fontSize: 16),
                  ),
                  GestureDetector(onTap: (){}, child: Text("SIGN UP", style: TextStyle(color: Color(0xff0961F5), decoration: TextDecoration.underline, fontWeight: FontWeight.bold)),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
