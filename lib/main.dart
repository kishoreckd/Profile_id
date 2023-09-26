import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int profileLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
          title: const Text('Profile Id card'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            profileLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
                child: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.png'),
              backgroundColor: Colors.white,
              radius: 40.0,
            )),
            const Divider(
              height: 60.0,
              color: Colors.blue,
            ),
            const Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Kishore',
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            const Text(
              ' Current Level',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              '$profileLevel',
              style: const TextStyle(
                  color: Colors.amber,
                  fontSize: 28.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            const Row(
              children: [
                Icon(Icons.email, color: Colors.white),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'kishorekumarcdckap@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    profileLevel -= 1;
                  });
                },
                child: const Icon(Icons.remove)),
          ],
        ),
      ),
    );
  }
}//

//task finished



// // StatelessWidget
// class NinjaCard extends StatelessWidget {
//   const NinjaCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//           title: const Text('Profile Id card'),
//           centerTitle: true,
//           backgroundColor: Colors.grey[850],
//           elevation: 0.0),
//       body: const Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//                 child: CircleAvatar(
//               backgroundImage: AssetImage('assets/avatar.png'),
//               backgroundColor: Colors.white,
//               radius: 40.0,
//             )
//             ),
//             Divider(
//               height: 60.0,
//               color: Colors.blue,
//             ),
//             Text(
//               'Name',
//               style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               'Kishore',
//               style: TextStyle(
//                   color: Colors.amber,
//                   fontSize: 28.0,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 30.0),
//             Text(
//               ' Current Level',
//               style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
//             ),
//             SizedBox(height: 10.0),
//             Text(
//               '3',
//               style: TextStyle(
//                   color: Colors.amber,
//                   fontSize: 28.0,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 30.0),
//             Row(
//               children: [
//                 Icon(Icons.email, color: Colors.white),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'kishorekumarcdckap@gmail.com',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 18.0,
//                     letterSpacing: 1.0,
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
