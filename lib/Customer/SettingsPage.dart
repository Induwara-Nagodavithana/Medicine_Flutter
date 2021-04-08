import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),

      ),
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),

          child: ListView(
            children: [
              Text("Edit Customer Profile", style: TextStyle(
                  color: Colors.green,
                  fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor
                          ),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset:Offset(0,10)
                            )
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://cdn4.iconfinder.com/data/icons/ios-web-user-interface-multicolor-vol-1/512/Account_Audience_person_customer_profile_user-512.png")
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child: Icon(Icons.edit,color: Colors.white,)
                      ),)
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "FirstName",
                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "LastName",
                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "CurrentPassword",


                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "NewPassword",


                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "Email",


                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      labelText: "NIC",


                      labelStyle: TextStyle(
                          fontSize: 14, color: Colors.black),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.blue,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blue,
                          )),
                    )),

              ),

              // buildTextField("First Name", "Enter First Name",false),
              // buildTextField("Last Name", "Enter Last Name", false),
              // buildTextField("Current Password", "Enter Current Password",true),
              // buildTextField("New Password", "***", true),
              // buildTextField("Email", "Enter Email",false),
              // buildTextField("NIC", "NIC", false),

              SizedBox(
                height:35,
              ),//SizeBox
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),//RoundedRectangleBorder
                    onPressed: (){},
                    child: Text("CANCEL",
                        style:TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),

                  ),
                  RaisedButton(
                      color: Colors.greenAccent,
                      padding: EdgeInsets.symmetric(horizontal:50),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),//RoundRectangleBorder
                      child: Text(
                        "SAVE",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      )
                  ),
                ],
              )
            ],
          ),
        ),
    );
  }
}