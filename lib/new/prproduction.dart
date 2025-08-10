// import 'package:flutter/material.dart';

// class Production extends StatefulWidget {
//   @override
//   _ProductionState createState() => _ProductionState();
// }

// class _ProductionState extends State<Production> {
//   final List<String> assetImages = [
//     'asset/images/shoes.jpg',
//     'asset/images/clothes.jpg',
//     'asset/images/makeup.jpg',
//     'asset/images/w1.jpg',
//     'asset/images/circket.jpg',
//   ];

//   final List<String> text = [
//     'UP TO 50% off',
//     'Buy one get on free',
//     'ORDER NOW',
//     'Deals',
//     'live',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
//         actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Header(),
//             girls(),
//             girlitems(),
//             boys(),
//             boysitems(),
//             accessories(),
//             accessoriesitems(),
//             girls(),
//             girlitems(),
//             boys(),
//             boysitems(),
//             accessories(),
//             accessoriesitems(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class girlitems extends StatelessWidget {
//   final List<String> assetIimages = [
//     'asset/images/gd3.jpg',
//     'asset/images/sg3.jpg',
//   ];
//   final List<String> text2 = ['UP TO 50% off', 'Buy Two get on free'];
//   // ✅ Har image ke liye alag page list
//   final List<Widget> pages = [
//     GirlsdressPage(), // girls dress
//     girlsshoesPage(), // clothes.jpg
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(

//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: List.generate(assetIimages.length, (index) {
//             return GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => pages[index]),
//                 );
//               },
//               child: Container(
//                 width: 220,
//                 height: 120,
//                 margin: EdgeInsets.all(10),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   border: Border.all(
//                     color: const Color.fromARGB(255, 121, 120, 120),
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(assetIimages[index]),
//                           fit: BoxFit.cover,
//                           colorFilter: ColorFilter.mode(
//                             const Color.fromARGB(
//                               255,
//                               243,
//                               242,
//                               242,
//                             ).withOpacity(0.9),
//                             BlendMode.darken,
//                           ),
//                         ),
//                         border: Border.all(width: 2),
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),Positioned(
//                     bottom: 10,
//                     left: 30,
//                     // right: 20,
//                     child: Container(
//                       padding: EdgeInsets.all(8),

//                       child: Row(
//                         children: [
//                           Text(
//                             text2[index],
//                             style: TextStyle(
//                               color: const Color.fromARGB(255, 3, 3, 3),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w900,
//                               shadows: [
//                                 Shadow(
//                                   color: const Color.fromARGB(
//                                     255,
//                                     233,
//                                     233,
//                                     233,
//                                   ),
//                                   blurRadius: 3,
//                                   offset: Offset(-1, -1),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   ],
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

// Widget girls() {
//   return Stack(
//     children: [
//       // background image or container
//       Container(height: 25),

//       // Positioned text aligned to the start (left)
//       Positioned(
//         left: 10, // Start of the container
//         top: 0,
//         bottom: 0, // Optional: for some vertical space
//         child: Text(
//           "latest ",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget girlitems() {
//   final List<String> saleimage = [
//     'asset/images/gd3.jpg',
//     'asset/images/sg3.jpg',
//   ];
//   final List<String> text2 = ['UP TO 50% off', 'Buy Two get on free'];
//   return SizedBox(
//     child: SingleChildScrollView(
//       scrollDirection: Axis.horizontal,

//       child: Row(
//         children: List.generate(saleimage.length, (index) {
//           return Container(
//             width: 180,
//             height: 180,
//             margin: EdgeInsets.all(7),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(
//                 color: const Color.fromARGB(255, 121, 120, 120),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(saleimage[index]),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                         const Color.fromARGB(
//                           255,
//                           243,
//                           242,
//                           242,
//                         ).withOpacity(0.9),
//                         BlendMode.darken,
//                       ),
//                     ),
//                     border: Border.all(width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),

//                 Positioned(
//                   bottom: 10,
//                   left: 30,
//                   // right: 20,
//                   child: Container(
//                     padding: EdgeInsets.all(8),

//                     child: Row(
//                       children: [
//                         Text(
//                           text2[index],
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 3, 3, 3),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w900,
//                             shadows: [
//                               Shadow(
//                                 color: const Color.fromARGB(255, 233, 233, 233),
//                                 blurRadius: 3,
//                                 offset: Offset(-1, -1),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     ),
//   );
// }

// Widget boys() {
//   return Stack(
//     children: [
//       // background image or container
//       Container(height: 25),

//       // Positioned text aligned to the start (left)
//       Positioned(
//         left: 10, // Start of the container
//         top: 0,
//         bottom: 0, // Optional: for some vertical space
//         child: Text(
//           "POPULAR ",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget boysitems() {
//   final List<String> saleimage = ['asset/images/s.jpg', 'asset/images/sk1.jpg'];
//   final List<String> text2 = ['UP TO 50% off', 'Buy one get on free'];
//   return SizedBox(
//     child: SingleChildScrollView(
//       scrollDirection: Axis.horizontal,

//       child: Row(
//         children: List.generate(saleimage.length, (index) {
//           return Container(
//             width: 180,
//             height: 180,
//             margin: EdgeInsets.all(7),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(
//                 color: const Color.fromARGB(255, 121, 120, 120),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(saleimage[index]),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                         const Color.fromARGB(
//                           255,
//                           243,
//                           242,
//                           242,
//                         ).withOpacity(0.9),
//                         BlendMode.darken,
//                       ),
//                     ),
//                     border: Border.all(width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),

//                 Positioned(
//                   bottom: 10,
//                   left: 30,
//                   // right: 20,
//                   child: Container(
//                     padding: EdgeInsets.all(8),

//                     child: Row(
//                       children: [
//                         Text(
//                           text2[index],
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 3, 3, 3),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w900,
//                             shadows: [
//                               Shadow(
//                                 color: const Color.fromARGB(255, 233, 233, 233),
//                                 blurRadius: 3,
//                                 offset: Offset(-1, -1),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     ),
//   );
// }

// Widget accessories() {
//   return Stack(
//     children: [
//       // background image or container
//       Container(height: 25),

//       // Positioned text aligned to the start (left)
//       Positioned(
//         left: 10, // Start of the container
//         top: 0,
//         bottom: 0, // Optional: for some vertical space
//         child: Text(
//           "ACCESSORIES",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget accessoriesitems() {
//   final List<String> saleimage = [
//     'asset/images/w7.jpg',
//     'asset/images/jw9.jpg',
//   ];

//   final List<String> text2 = ['UP TO 50% off', 'Buy Two get on free'];
//   return SizedBox(
//     child: SingleChildScrollView(
//       scrollDirection: Axis.horizontal,

//       child: Row(
//         children: List.generate(saleimage.length, (index) {
//           return Container(
//             width: 180,
//             height: 180,
//             margin: EdgeInsets.all(7),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               border: Border.all(
//                 color: const Color.fromARGB(255, 121, 120, 120),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(saleimage[index]),
//                       fit: BoxFit.cover,
//                       colorFilter: ColorFilter.mode(
//                         const Color.fromARGB(
//                           255,
//                           243,
//                           242,
//                           242,
//                         ).withOpacity(0.9),
//                         BlendMode.darken,
//                       ),
//                     ),
//                     border: Border.all(width: 2),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                 ),

//                 Positioned(
//                   bottom: 10,
//                   left: 30,
//                   // right: 20,
//                   child: Container(
//                     padding: EdgeInsets.all(8),

//                     child: Row(
//                       children: [
//                         Text(
//                           text2[index],
//                           style: TextStyle(
//                             color: const Color.fromARGB(255, 3, 3, 3),
//                             fontSize: 12,
//                             fontWeight: FontWeight.w900,
//                             shadows: [
//                               Shadow(
//                                 color: const Color.fromARGB(255, 233, 233, 233),
//                                 blurRadius: 3,
//                                 offset: Offset(-1, -1),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }),
//       ),
//     ),
//   );
// }

// class ShoesPage extends StatefulWidget {
//   @override
//   _ShoesPageState createState() => _ShoesPageState();
// }

// class _ShoesPageState extends State<ShoesPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class ClothesPage extends StatefulWidget {
//   @override
//   _ClothesPageState createState() => _ClothesPageState();
// }

// class _ClothesPageState extends State<ClothesPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class MakeupPage extends StatefulWidget {
//   @override
//   _MakeupPageState createState() => _MakeupPageState();
// }

// class _MakeupPageState extends State<MakeupPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class WatchPage extends StatefulWidget {
//   @override
//   _WatchPageState createState() => _WatchPageState();
// }

// class _WatchPageState extends State<WatchPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// class CricketPage extends StatefulWidget {
//   @override
//   _CricketPageState createState() => _CricketPageState();
// }

// class _CricketPageState extends State<CricketPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
