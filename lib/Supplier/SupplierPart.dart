import 'package:flutter/material.dart';
import 'package:flutter_appsecond/Customer/CustomerPart.dart';
import 'package:flutter_appsecond/Supplier/SuAboutUs.dart';
import 'package:flutter_appsecond/Supplier/SuSettings.dart';
import 'package:flutter_appsecond/Supplier/ViewOrder.dart';
import 'package:flutter_appsecond/Supplier/OrderDetailes.dart';
import 'package:flutter_appsecond/Supplier/OrderStatus.dart';

class SupplierPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      drawer: new Drawer(
      child: Column(
      children: <Widget>[
      Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      color: Theme
          .of(context)
          .primaryColor,
      child: Center(
      child: Column(
      children: <Widget>[
      Container(
      width: 100,
      height: 100,
      margin: EdgeInsets.only(
        top: 30,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              'https://cdn4.iconfinder.com/data/icons/ios-web-user-interface-multicolor-vol-1/512/Account_Audience_person_customer_profile_user-512.png'
          ),

        ),

      ),
    ),
        Text('SUPPLIER',
          style: TextStyle(fontSize: 25, color: Colors.white),)
      ],
      ), //
      ),
    ),
    ListTile(
    leading: Icon(Icons.dashboard_outlined),
    title: Text(
    'Dashboard',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
    onTap: ()
      {
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> new SupplierPart()));
      },
    ),
    ListTile(
    leading: Icon(Icons.remove_red_eye),
    title: Text(
    'View Order',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
      onTap: ()
      {
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> new ViewOrder()));
      },
    ),
    ListTile(
    leading: Icon(Icons.account_balance_sharp),
    title: Text(
    'About Us',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
      onTap: ()
      {
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> new SuAboutUs()));
      },
    ),
    ListTile(
    leading: Icon(Icons.settings),
    title: Text(
    'Settings',
    style: TextStyle(
    fontSize: 18,
    ),
    ),
      onTap: ()
      {
        Navigator.push(context,new MaterialPageRoute(builder: (context)=> new SuSettings()));
      },
    ),
    ///////////////////////////////////// You can delete this part : START //////////////////////
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Customer Part',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: (){
                  Navigator.push(context,new MaterialPageRoute(builder: (context)=> new CustomerPart()) );
                },
              ),
              ///////////////////////////////////// You can delete this part : END //////////////////////
    ]
    ),
    ),
    appBar: AppBar(
      title: Text('Last 5 Order Details'),
    backgroundColor: Colors.blue,

    ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 100.0),
                child: Text(
                  '  LAST 5 ORDER DETAILS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 25.0),
                ),
              ),
            ),
            DataTable(
              columns: const<DataColumn>[
                DataColumn(label: Text('Order ID '),tooltip: 'Order ID'),
                DataColumn(label: Text('Order Details'),tooltip: 'Order Details'),
                DataColumn(label: Text('Order Status '),tooltip: 'Order Status'),
                DataColumn(label: Text('Send Invoice '),tooltip: 'Send Invoice'),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('058'),),
                    DataCell(RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
                        },
                        child: Text(
                          "View Order",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),

                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderStatusPage()))
                        },
                        child: Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                    DataCell(RaisedButton(
                        color: Colors.greenAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        child: Text(
                          "Send Invoice",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                  ],), //<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('057'),),
                    DataCell(RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
                        },
                        child: Text(
                          "View Order",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),

                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderStatusPage()))
                        },
                        child: Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                    DataCell(RaisedButton(
                        color: Colors.greenAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        child: Text(
                          "Send Invoice",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                  ],), //<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('056'),),
                    DataCell(RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
                        },
                        child: Text(
                          "View Order",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),

                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderStatusPage()))
                        },
                        child: Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        child: Text(
                          "Send Invoice",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                  ],), //<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('055'),),
                    DataCell(RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
                        },
                        child: Text(
                          "View Order",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),

                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderStatusPage()))
                        },
                        child: Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        child: Text(
                          "Send Invoice",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                  ],), //<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('054'),),
                    DataCell(RaisedButton(
                        color: Colors.blueAccent,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
                        },
                        child: Text(
                          "View Order",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),

                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderStatusPage()))
                        },
                        child: Text(
                          "Order Status",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                    DataCell(RaisedButton(
                        color: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal:30),
                        elevation: 2,
                        child: Text(
                          "Send Invoice",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 2.2,
                              color: Colors.black),
                        )
                    ),),
                  ],), //<DataCell>[],
              ],
            ),
            Container(
              child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  '  LAST 5 ORDER DETAILS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 25.0),
                ),
              ),
            ),
          ],

        ),
      ),

    );
  }
}

