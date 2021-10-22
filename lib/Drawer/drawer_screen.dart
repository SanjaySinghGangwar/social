import 'package:flutter/material.dart';
import 'package:social/Utils/mUtils.dart';

import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mUtils.mColor,
      padding: const EdgeInsets.only(top: 80, bottom: 50, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'No Name',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '+919412345678',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          Column(
            children: drawerItems
                .map((element) => Padding(
                      padding: const EdgeInsets.fromLTRB(15, 25, 25, 0),
                      child: Row(
                        children: [
                          Icon(
                            element['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            element['title'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )
                        ],
                      ),
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: Text(
                    'SETTING',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 2,
                  height: 20,
                  color: Colors.white,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Icon(
                    Icons.account_circle_sharp,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'LOGOUT',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
