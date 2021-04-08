import 'package:flutter/material.dart';
import 'package:flutter_appsecond/Supplier/OrderDetailes.dart';
import 'package:flutter_appsecond/Supplier/OrderStatus.dart';
class ViewOrder extends StatelessWidget {


////////////// This Part Added Additionally : Start //////////////////////
  
  String addYourDataVariables = " ";
  DataRow viewDataAndButtons(context, data, date, orderID, total) {
    return (
      DataRow(
          cells: <DataCell>[
            DataCell(Text(date),),
            DataCell(Text(orderID),),
            DataCell(Text(total),),
            DataCell(RaisedButton(
                color: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal:30),
                elevation: 2,
                onPressed: () => {
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> OrderDetailsPage()))
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
                           Navigator.push(context,new MaterialPageRoute(builder: (context)=> OrderStatusPage()))
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
          ],)//<DataCell>[],
    );
  }
 
 ////////////// This Part Added Additionally : End //////////////////////
 
 
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      appBar: AppBar(
        title: Text('Order Details'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            // Navigator.pushNamed(context, '/');
            Navigator.of(context).pop(true);
          },
        ),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
          Container(
          child: Container(
          alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(top: 50.0),
            child: Text(
              '   ORDER DETAILS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 25.0),
            ),
          ),
        ),
    DataTable(
    columns: const<DataColumn>[
    DataColumn(label: Text('Date '),tooltip: 'Date'),
    DataColumn(label: Text('Order ID '),tooltip: 'Order ID'),
    DataColumn(label: Text('Total'),tooltip: 'Total'),
    DataColumn(label: Text('View Order '),tooltip: 'View Order'),
    DataColumn(label: Text('Order Status '),tooltip: 'Order Status'),
    DataColumn(label: Text('Send Invoice '),tooltip: 'Send Invoice'),
    ],
        rows: <DataRow>[

          ///////////////////////// This is New Code : Start ////////////////////////////
          viewDataAndButtons(context, addYourDataVariables, '2021/03/23', '058', '4000'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/18', '057', '650'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/15', '056', '985'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/15', '055', '985'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/14', '054', '2250'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/15', '055', '985'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/23', '058', '4000'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/23', '058', '4000'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/23', '058', '562'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/13', '053', '965'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/12', '052', '752'),
          viewDataAndButtons(context, addYourDataVariables, '2021/03/11', '051', '846'),

          ///////////////////////// This is New Code : END ////////////////////////////

          /////////////////////////// This is Old Code : Start ///////////////////////////////
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/23'),),
          //     DataCell(Text('058'),),
          //     DataCell(Text('4000'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         onPressed: () => {
          //                    Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
          //                 },
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/18'),),
          //     DataCell(Text('057'),),
          //     DataCell(Text('650'),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         onPressed: () => {
          //                    Navigator.push(context,new MaterialPageRoute(builder: (context)=> new OrderDetailsPage()))
          //                 },
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/15'),),
          //     DataCell(Text('056'),),
          //     DataCell(Text('985'),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/15'),),
          //     DataCell(Text('055'),),
          //     DataCell(Text('985'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/14'),),
          //     DataCell(Text('054'),),
          //     DataCell(Text('2250'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],),
          // //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/15'),),
          //     DataCell(Text('055'),),
          //     DataCell(Text('985'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],),
          // //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/23'),),
          //     DataCell(Text('058'),),
          //     DataCell(Text('4000'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/23'),),
          //     DataCell(Text('058'),),
          //     DataCell(Text('4000'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // DataRow(
          //   cells: <DataCell>[
          //     DataCell(Text('2021/03/23'),),
          //     DataCell(Text('058'),),
          //     DataCell(Text('4000'),),
          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "View Order",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),

          //     DataCell(RaisedButton(
          //         color: Colors.red,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Order Status",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //     DataCell(RaisedButton(
          //         color: Colors.greenAccent,
          //         padding: EdgeInsets.symmetric(horizontal:30),
          //         elevation: 2,
          //         child: Text(
          //           "Send Invoice",
          //           style: TextStyle(
          //               fontSize: 14,
          //               letterSpacing: 2.2,
          //               color: Colors.black),
          //         )
          //     ),),
          //   ],), //<DataCell>[],
          // 
          /////////////////////////// This is Old Code : End ///////////////////////////////
        ],
    ),

            ],

          ),
        ),
      ),

    );
  }
}

