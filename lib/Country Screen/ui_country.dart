import 'package:flutter/material.dart';

class UI_Country extends StatefulWidget {
  const UI_Country({Key? key}) : super(key: key);

  @override
  State<UI_Country> createState() => _UI_CountryState();
}

List country = [
  "INDIA",
  "RUSSIA",
  "USA",
  "JAPAN",
  "CHINA",
  "ENGLAND",
  "IRELAND",
  "CANADA",
  "ISRAIL",
  "NEPAL"
];
List flag = [
  "🇮🇳 ",
  "🇷🇺 ",
  "🇺🇸 ",
  "🇯🇵 ",
  "🇨🇳",
  "🇬🇧 ",
  "🇮🇪 ",
  "🇨🇦 ",
  "🇮🇱 ",
  "🇳🇵 ",
];
// List col = [
//   [Colors.lightBlueAccent, Colors.pinkAccent],
//   [Colors.black12, Colors.tealAccent],
// ];

class _UI_CountryState extends State<UI_Country> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.featured_play_list_outlined,
        ),
        title: Text(
          "POWERFUL COUNTRIES",
          style: TextStyle(fontSize: 25, letterSpacing: 5),
        ),
      ),
      body: Column(
        children: flag.asMap().entries.map((e) =>
            listWidget(flag[e.key], country[e.key],
            e.key %2 == 0 ? Colors.lightBlueAccent : Colors.pinkAccent ))
            .toList(),
        //flag.map((e) => listWidget(flag[e.key], country[e.key] )).toList(), // ++i   0    1
      ),
    );
  }

  Widget listWidget(String flag, String country, Color col) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: col),
          alignment: Alignment.center,
          child: Text(
            "$flag $country $flag",
            style: TextStyle(
              fontSize: 35,
              color: Colors.brown,
            ),
          ),
        ),
      ],
    );
  }
}
