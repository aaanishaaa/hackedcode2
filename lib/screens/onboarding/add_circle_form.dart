import 'package:flutter/material.dart';
import 'package:groupshot/screens/onboarding/widgets/add_friend_card.dart';

class AddCircleForm extends StatefulWidget {
  const AddCircleForm({super.key});

  @override
  State<AddCircleForm> createState() => _AddCircleFormState();
}

class _AddCircleFormState extends State<AddCircleForm> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Your Circle", style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Color(0xffF5F9FF),
        leading: Container(),
      ),
      body:SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          padding: EdgeInsets.all(20),
          color: Color(0xffF5F9FF),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/no_profile_photo.png"),
                      radius: 50,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image(
                        image: AssetImage("assets/icons/edit_button.png"),
                        width: 30, // adjust the width as needed
                        height: 30, // adjust the height as needed
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                    hintText: "Full Name",
                    isDense: true,
                  ),
                ),
                SizedBox(height: 15),

                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                    hintText: "Mobile Number",
                    isDense: true,

                  ),
                ),
                SizedBox(height: 15),


                //email to be taken from user account
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

                SizedBox(height:45,),
                GestureDetector(
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessfulOnboardingPage()));
                  },
                  child: Container(
                    width: 120,
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
                        Text("Add",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),),

                         IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.add,color: Colors.white,)),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Added People: ", style: TextStyle(color: Color(0xff545454),
                      fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 20,),
                Column(
                  children: [
                  ],
                )
              ],
            ),),
        ),
      ),
    );
  }
}
