import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Msg extends StatelessWidget {
  static String routeName = '/Chat';
  String image =
      "https://resident360files.nejm.org/image/upload/s--4IgdJnhh--/c_thumb,f_auto,g_face,h_200,q_jpegmini,w_200/v1466558634/user_avatars/31008.jpg";

  final msgs = <String>[
    'this is Apple',
    'Elephant is a Big animal',
    'expectation are not good for health',
    'this is Apple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.asset(
                      'assets/images/chat_bg.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  AppBar(
                    leading: const Icon(Icons.arrow_back),
                    actions: const [
                      Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.menu))
                    ],
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  Positioned(
                    top: 80,
                    left: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.mark_unread_chat_alt_outlined),
                        const SizedBox(height: 10),
                        const Text(
                          'Hi There',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Welcome to online service. How can we help you todays?',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    for (var msg in msgs)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  child: Image.network(image),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Isla',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '1m ago',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 330),
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  elevation: 8,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text('Hi, how are you?'),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    for (var msg in msgs)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Card(
                                margin: EdgeInsets.all(10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 8,
                                color: Colors.blue[100],
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text('FIne! Thanks for asking'),
                                )),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),
          //  Divider(),
          Typing(),
        ],
      ),
    );
  }
}

class Typing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Colors.grey[100],
        child: Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Row(children: [
            Expanded(
                child: Container(
              height: 60,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Write a reply...',
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            )),
            Icon(
              CupertinoIcons.smiley,
              color: Colors.grey[800],
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.photo,
              color: Colors.grey[800],
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.attach_file, color: Colors.grey[800]),
            SizedBox(
              width: 20,
            ),
            Icon(
              CupertinoIcons.arrowtriangle_right_fill,
              color: Colors.blue,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
          ]),
        ));
  }
}



// return Scaffold(
//       body: Column(children: [
//         Stack(
//           children: [
//             AspectRatio(
//               aspectRatio: 1.5,
//               child: Image.asset(
//                 'assets/images/chat_bg.png',
//                 fit: BoxFit.fill,
//               ),
//             ),
//             AppBar(
//               leading: const Icon(Icons.arrow_back),
//               actions: const [
//                 Padding(
//                     padding: EdgeInsets.only(right: 10),
//                     child: Icon(Icons.menu))
//               ],
//               backgroundColor: Colors.transparent,
//               shadowColor: Colors.transparent,
//             ),
//             Positioned(
//               top: 80,
//               left: 40,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.asset('assets/images/lorem.png', scale: 5),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Hi There',
//                     style: TextStyle(color: Colors.white, fontSize: 20),
//                   ),
//                   const SizedBox(height: 20),
//                   const Text(
//                     'Welcome to online service. How can we help you todays?',
//                     style: TextStyle(color: Colors.white, fontSize: 16),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         Text('Chats Here'),
//       ]
//       ),
//     );