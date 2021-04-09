import 'package:flutter/material.dart';
import 'package:flutter_appsecond/Supplier/SupplierPart.dart';

import 'AboutUsPage.dart';
import 'LocationPage.dart';
import 'MedicineHistoryPage.dart';
import 'OnlinePaymentPage.dart';
import 'SettingsPage.dart';

import 'package:url_launcher/url_launcher.dart';

class CustomerPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: new Drawer(
        child: Column(children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
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
                            'https://cdn4.iconfinder.com/data/icons/ios-web-user-interface-multicolor-vol-1/512/Account_Audience_person_customer_profile_user-512.png'),
                      ),
                    ),
                  ),
                  Text(
                    'CUSTOMER',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )
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
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new CustomerPart()));
            },
          ),
          // dan hari, run karala balanna
          ListTile(
            leading: Icon(Icons.location_on_sharp),
            title: Text(
              'Mark the Location',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new LocationPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.refresh_outlined),
            title: Text(
              'Medicine History',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new MedicineHistoryPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.payments_rounded),
            title: Text(
              'Online Payment',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new OnlinePaymentPage()));
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
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new AboutUsPage()));
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
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SettingsPage()));
            },
          ),

          ///////////////////////////////////// You can delete this part : START //////////////////////
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'Supplier Part',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new SupplierPart()));
            },
          ),
          ///////////////////////////////////// You can delete this part : END //////////////////////
        ]),
      ),
      appBar: AppBar(
        title: Text('Last 5 Order Details'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 100.0),
              alignment: Alignment.topCenter,
              child: Text(
                'LAST 5 ORDER DETAILS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    fontSize: 25.0),
              ),
            ),
            DataTable(
              columns: const <DataColumn>[
                DataColumn(label: Text('Order ID'), tooltip: 'Order ID'),
                DataColumn(label: Text('Date'), tooltip: 'Date'),
                DataColumn(label: Text('Invoice Nu'), tooltip: 'Invoice Nu'),
                DataColumn(label: Text('Total'), tooltip: 'Total'),
                DataColumn(
                    label: Text('Order Status'), tooltip: 'Order Status'),
                DataColumn(label: Text('Invoice'), tooltip: 'Invoice'),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('001'),
                    ),
                    DataCell(
                      Text('2021/02/23'),
                    ),
                    DataCell(
                      Text('1112220'),
                    ),
                    DataCell(
                      Text('8000.00'),
                    ),
                    DataCell(
                      Text('Pending'),
                    ),
                    DataCell(GestureDetector(
                          onTap: () {
                            _launchURL();
                          },
                          child: Text('Download PDF')),
                    ),
                  ],
                ), //<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('003'),
                    ),
                    DataCell(
                      Text('2021/01/22'),
                    ),
                    DataCell(
                      Text('1232345'),
                    ),
                    DataCell(
                      Text('4000.00'),
                    ),
                    DataCell(
                      Text('Completed'),
                    ),
                    DataCell(
                      GestureDetector(
                          onTap: () {
                            _launchURL();
                          },
                          child: Text('Download PDF')),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('006'),
                    ),
                    DataCell(
                      Text('2021/01/02'),
                    ),
                    DataCell(
                      Text('4569871'),
                    ),
                    DataCell(
                      Text('950.00'),
                    ),
                    DataCell(
                      Text('Completed'),
                    ),
                    DataCell(GestureDetector(
                          onTap: () {
                            _launchURL();
                          },
                          child: Text('Download PDF')),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('008'),
                    ),
                    DataCell(
                      Text('2020/12/02'),
                    ),
                    DataCell(
                      Text('5454550'),
                    ),
                    DataCell(
                      Text('1500.00'),
                    ),
                    DataCell(
                      Text('Completed'),
                    ),
                    DataCell(GestureDetector(
                          onTap: () {
                            _launchURL();
                          },
                          child: Text('Download PDF')),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('009'),
                    ),
                    DataCell(
                      Text('2020/11/20'),
                    ),
                    DataCell(
                      Text('4541242'),
                    ),
                    DataCell(
                      Text('1500.00'),
                    ),
                    DataCell(
                      Text('Cancelled'),
                    ),
                    DataCell(GestureDetector(
                          onTap: () {
                            _launchURL();
                          },
                          child: Text('Download PDF')),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://download1506.mediafire.com/gibhih9m64cg/9cvowuirka4djq9/myfile.pdf';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
