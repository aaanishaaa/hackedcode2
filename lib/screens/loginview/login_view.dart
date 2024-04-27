
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:groupshot/screens/loginview/signup_view.dart";
class LoginViewScreen extends StatefulWidget {
  const LoginViewScreen({super.key});

  @override
  State<LoginViewScreen> createState() => _LoginViewScreenState();
}

class _LoginViewScreenState extends State<LoginViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF5F9FF),

        padding: EdgeInsets.all(20),
        height:MediaQuery.of(context).size.height,
        child:

        Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height/2-50),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        "Let's Get Started",
                        style: TextStyle(color:Color(0xff202244), fontSize: 20, fontWeight: FontWeight.w600)
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 230,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                SizedBox(width: 20),
                                Text("Continue with Google", style: TextStyle(color: Color(0xff545454), fontSize: 16, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                    icon: Image(image: AssetImage("assets/icons/apple.png"), height: 20, width: 20),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Text("Continue with Apple", style: TextStyle(color: Color(0xff545454), fontSize: 16, fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Text("( Or )",
                        style: TextStyle(color:Color(0xff545454), fontSize: 17, fontWeight: FontWeight.bold)

                    ),
                    SizedBox(height: 20,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpView()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 22),
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
                            Text("Sign In with Your Account",
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
                    SizedBox(height: 20,),
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
          ],
        )
      ),
    );
  }
}
