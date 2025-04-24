import 'package:flutter/material.dart';
import 'package:makanika/pages/provider.dart';

class Mechanics extends StatefulWidget {
  const Mechanics({super.key});

  @override
  State<Mechanics> createState() => _MechanicsState();
}

class _MechanicsState extends State<Mechanics> {
  final List<Map<String, String>> mechanics = [
    {'title': 'VolvoHub', 'image': 'assets/volvohub.png'},
    {'title': 'Mundeba', 'image': 'assets/mech.jpg'},
    {'title': 'Katwe', 'image': 'assets/mechanic.png'},
    {'title': 'Spear', 'image': 'assets/volvohub.png'},
    {'title': 'Rukwago', 'image': 'assets/mechanic.png'},
    {'title': 'Kiseka', 'image': 'assets/mech.jpg'},
  ];

  @override
  Widget buildHorizontalRow(String title, List<Map<String, String>> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children:
                data.map((mechanic) {
                  return Container(
                    width: 180,
                    height: 250,
                    margin: EdgeInsets.only(right: 15),
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: Image.asset(
                              mechanic['image']!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              mechanic['title']!,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Provider(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(),
                            ),
                            child: Text('Inquire'),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.settings, size: 30),
            Icon(Icons.notifications, size: 30),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildHorizontalRow('Mechanics', mechanics),
              buildHorizontalRow('', mechanics),
            ],
          ),
        ),
      ),
    );
  }
}
