import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List colors = [
      Colors.blue.shade200,
      Colors.yellow.shade200,
    ];

    List<String> titles = ["Welcome", "Empieza a crear"];

    return Scaffold(
        body: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                color: colors[index],
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 100, horizontal: 10),
                  child: const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "titles[index]",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
