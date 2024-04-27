import 'package:flutter/material.dart';
import 'package:groupshot/screens/loginview/successful_onboarding.dart';

class ProfileFillForm extends StatefulWidget {
  const ProfileFillForm({super.key});

  @override
  State<ProfileFillForm> createState() => _ProfileFillFormState();
}

class _ProfileFillFormState extends State<ProfileFillForm> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xffF5F9FF),
        title: Text("Fill Your Profile", style: TextStyle(color: Color(0xFF202244), fontWeight: FontWeight.bold, fontSize: 18),),
        leading: IconButton(icon:Icon(Icons.arrow_back_rounded), color: Color(0xFF202244), onPressed: (){Navigator.pop(context);},),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,

          padding: EdgeInsets.all(20),
          color: Color(0xffF5F9FF),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
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
                      hintText: "Nick Name",
                      isDense: true,
                  ),
                ),
                SizedBox(height: 15),

                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                      hintText: "Date of Birth",
                      isDense: true,
                      prefixIcon: Icon(Icons.calendar_month)
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
                SizedBox(height: 15),

                // Container(
                //   child: Row(
                //     children: [
                //
                //       TextFormField(
                //         decoration: InputDecoration(
                //             fillColor: Colors.white,
                //             filled: true,
                //             border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                //             hintText: "Phone Number",
                //             isDense: true,
                //             prefixIcon: Icon(Icons.lock_outline_rounded)
                //         ),
                //       ),
                //     ],
                //   ),
                // ),

            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text('Gender', style: TextStyle(color:  Color(0xff545454)),),
                  value: _selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                  items: <String>['Male', 'Female', 'Other'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Color(0xff545454)),),
                    );
                  }).toList(),
                ),
              ),
            ),
                SizedBox(height:30,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessfulOnboardingPage()));
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
                        Text("Continue",
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


              ],
            ),),
          ),
        ),
      );

  }
}
