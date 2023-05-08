import 'package:flutter/material.dart';
import 'package:flutter_application_5/viewdetails.dart';

class viewStudents extends StatefulWidget {
  @override
  State<viewStudents> createState() => _viewStudentsState();
}

class _viewStudentsState extends State<viewStudents> {
  List mobile = [
    {"name": "bilal", "Age": "1"},
    {"name": "jamal", "Age": "2"},
    {"name": "jamal", "Age": "3"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bilal"),
      ),
      drawer: Drawer(),
      body: Container(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) {
              return ListTile(
                title: Text(
                  "${mobile[0]['name']}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${mobile[i]['Age']}"),
                leading: Icon(
                  Icons.person,
                  size: 40,
                ),
                trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => viewDatiels()));
                      mobile[0];
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("view"),
                    )),
              );
            }),
      ),
    );
  }
}
// Scaffold(
//       appBar: AppBar(title: Text("view Students")),
//       body: Container(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   width: 55.0,
//                   height: 55.0,
//                   color: Colors.green,
//                   child: CircleAvatar(
//                     backgroundColor: Colors.green,
//                     foregroundColor: Colors.green,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 5.0,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Text(
//                       designaions[index],
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Container(),
//           ],
//         ),
//       ),
//     );
