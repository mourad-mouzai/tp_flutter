import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DrawerGen extends StatefulWidget {
  const DrawerGen({super.key});

  @override
  State<DrawerGen> createState() => _DrawerGenState();
}

class _DrawerGenState extends State<DrawerGen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: ResponsiveBreakpoints.of(context).largerThan(MOBILE)
                ? 250
                : 320,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey[300],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      size: 48,
                    ),
                    title: const Text(
                      'User Name',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    subtitle: const Text(
                      'UserName@gmail.com',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
                    ),
                    onTap: () {},
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: GestureDetector(
                        onLongPress: () {},
                        onDoubleTap: () {},
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          backgroundImage:
                              const AssetImage('assets/images/user.jpg'),
                          // const NetworkImage(
                          //     "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"), //AssetImage('assets/images/1.jpg'),
                          radius: 60,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Message'),
            onTap: () {
              Get.toNamed('/message-page');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              Get.toNamed('/profil-page');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Get.toNamed('/settings-page');
            },
          ),
        ],
      ),
    );
  }
}


// Drawer DrowerGeneral(BuildContext context) {
//   return Drawer(
//     child: ListView(
//       padding: EdgeInsets.zero,
//       children: [
//         SizedBox(
//           height:
//               ResponsiveBreakpoints.of(context).largerThan(MOBILE) ? 250 : 320,
//           child: DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blueGrey[300],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ListTile(
//                   leading: const Icon(
//                     Icons.account_circle,
//                     size: 48,
//                   ),
//                   title: const Text(
//                     'User Name',
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                   subtitle: const Text(
//                     'UserName@gmail.com',
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontSize: 16,
//                     ),
//                   ),
//                   onTap: () {},
//                 ),
//                 Center(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12.0),
//                     child: GestureDetector(
//                       onLongPress: () {},
//                       onDoubleTap: () {},
//                       onTap: () {},
//                       child: CircleAvatar(
//                         backgroundColor: Colors.grey[400],
//                         backgroundImage:
//                             const AssetImage('assets/images/user.jpg'),
//                         // const NetworkImage(
//                         //     "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"), //AssetImage('assets/images/1.jpg'),
//                         radius: 60,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         ListTile(
//           leading: const Icon(Icons.message),
//           title: const Text('Message'),
//           onTap: () {},
//         ),
//         ListTile(
//           leading: const Icon(Icons.account_circle),
//           title: const Text('Profile'),
//           onTap: () {},
//         ),
//         ListTile(
//           leading: const Icon(Icons.settings),
//           title: const Text('Settings'),
//           onTap: () {},
//         ),
//       ],
//     ),
//   );
// }
