import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          color: Colors.grey,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage('assets/images/contact_us.png')),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    hintText: 'John Doe',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'johndoe@gmail.com',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 0.0),
                child: TextField(
                  maxLines: 8,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Write your status here',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 22.0),
                height: 50.0,
                width: 150.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.green,
                  child: GestureDetector(
                    onTap: () {},
                    child: Center(
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 19.0, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 25.0),
                alignment: Alignment.topCenter,
                child: Text(
                  'Hotline : 076 4720883',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                alignment: Alignment.topCenter,
                child: Text(
                  'Email : epharmacy1507@gmail.com',
                  style: TextStyle(color: Colors.grey[600], fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
