import 'package:flutter/material.dart';
class MedicineHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold
      (
      appBar: AppBar(
        title: Text("Search"),
        actions: <Widget>[
          IconButton(icon:Icon(Icons.search),onPressed: (){
            showSearch(context: context, delegate: DataSearch());
          }),
        ],
        backgroundColor: Colors.blue,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),

      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Container(
              child: Container(
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  '  Medicine History',
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
                DataColumn(label: Text('Date'),tooltip: 'Date'),
                DataColumn(label: Text('Invoice Number '),tooltip: 'Invoice Number'),
                DataColumn(label: Text('Total '),tooltip: 'Total'),
                DataColumn(label: Text('Order Status'),tooltip: 'Order Status'),
                DataColumn(label: Text('Invoice'),tooltip: 'Invoice'),
              ],
              rows: const<DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('001'),),
                    DataCell(Text('2021/02/23'),),
                    DataCell(Text('1112220'),),
                    DataCell(Text('8000.00'),),
                    DataCell(Text('Pending'),),
                    DataCell(Text('Download PDF'),),

                  ],),//<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('003'),),
                    DataCell(Text('2021/01/22'),),
                    DataCell(Text('1232345'),),
                    DataCell(Text('4000.00'),),
                    DataCell(Text('Completed'),),
                    DataCell(Text('Download PDF'),),

                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('006'),),
                    DataCell(Text('2021/01/02'),),
                    DataCell(Text('4569871'),),
                    DataCell(Text('950.00'),),
                    DataCell(Text('Completed'),),
                    DataCell(Text('Download PDF'),),

                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('008'),),
                    DataCell(Text('2020/12/02'),),
                    DataCell(Text('5454550'),),
                    DataCell(Text('1500.00'),),
                    DataCell(Text('Completed'),),
                    DataCell(Text('Download PDF'),),

                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('009'),),
                    DataCell(Text('2020/11/20'),),
                    DataCell(Text('4541242'),),
                    DataCell(Text('1500.00'),),
                    DataCell(Text('Cancelled'),),
                    DataCell(Text('Download PDF'),),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('001'),),
                    DataCell(Text('2021/02/23'),),
                    DataCell(Text('1112220'),),
                    DataCell(Text('8000.00'),),
                    DataCell(Text('Pending'),),
                    DataCell(Text('Download PDF'),),

                  ],),//<DataCell>[],
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('003'),),
                    DataCell(Text('2021/01/22'),),
                    DataCell(Text('1232345'),),
                    DataCell(Text('4000.00'),),
                    DataCell(Text('Completed'),),
                    DataCell(Text('Download PDF'),),

                  ],),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('006'),),
                    DataCell(Text('2021/01/02'),),
                    DataCell(Text('4569871'),),
                    DataCell(Text('950.00'),),
                    DataCell(Text('Completed'),),
                    DataCell(Text('Download PDF'),),

                  ],),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),//RoundedRectangleBorder
                  onPressed: (){},
                  child: Text("PREVIOUS",
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
                        borderRadius: BorderRadius.circular(5)),//RoundRectangleBorder
                    child: Text(
                      "1",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    )
                ),
                RaisedButton(
                    color: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal:50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),//RoundRectangleBorder
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    )
                ),
                RaisedButton(
                    color: Colors.greenAccent,
                    padding: EdgeInsets.symmetric(horizontal:50),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),//RoundRectangleBorder
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
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

class DataSearch extends SearchDelegate<String> {
  final orders =[
    "001",
    "003",
    "006",
    "008",
    "009",
    "022",
    "025",
    "028",
    "030",
    "042",
  ];
  final recentOrders =[
    "008",
    "009",
    "028",
    "025",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return[IconButton(icon: Icon(Icons.clear),onPressed: (){
      query = '';
    })];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed:(){
          close(context, null);
        });
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentOrders:orders.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.favorite_border),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style:
        TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color:Colors.blueGrey ),
        ),],
      )),
    ),
      itemCount: suggestionList.length,
    );
    throw UnimplementedError();
  }

}