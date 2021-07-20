//
// class Listviews extends StatefulWidget {
//   const Listviews({Key? key}) : super(key: key);
//
//   @override
//   _ListviewsState createState() => _ListviewsState();
// }
//
// class _ListviewsState extends State<Listviews> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Listview"),
//       ),
//       body:SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 500,
//               child: Row(
//                 children: <Widget>[
//                   Flexible(
//                     child: Container(
//                       color: Colors.teal,
//                       child: ListView.builder(
//                         itemBuilder: (_, i) =>
//                             ListTile(title: Text("List1: $i")),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     child: Container(
//                       color: Colors.orange,
//                       child: ListView.builder(
//                         itemBuilder: (_, i) =>
//                             ListTile(title: Text("List1: $i")),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Text(
//               'Demo Headline 2',
//               style: TextStyle(fontSize: 18),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//             Card(
//               child: ListTile(title: Text('Motivation $int'), subtitle: Text('this is a description of the motivation')),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }