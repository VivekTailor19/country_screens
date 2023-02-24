import 'package:country_screens/Country%20Screen/ui_country.dart';
import 'package:flutter/material.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);

  @override
  State<Information> createState() => _InformationState();
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
List president = [
  "https://upload.wikimedia.org/wikipedia/commons/2/2e/Prime_Minister%2C_Shri_Narendra_Modi%2C_in_New_Delhi_on_August_08%2C_2019_%28cropped%29.jpg",
  "https://upload.wikimedia.org/wikipedia/commons/4/47/Vladimir_Putin_17-11-2021_%28cropped%29.jpg",
  "https://www.loc.gov/static/portals/free-to-use/public-domain/presidential-portraits/46-joe-biden.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoJsy4MXkNylqHGaMiezgma7sodJ7oAfpU1g&usqp=CAU",
  "https://media-cldnry.s-nbcnews.com/image/upload/newscms/2018_08/2340871/xijinping.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStExUg3jqJ5ph-mqaRxyycTBKhWyLEL1LWQ0eU3XpuGhIswE4eF8tLGlKRvHfoohxsHEM&usqp=CAU",
  "https://i.guim.co.uk/img/media/3950e5c2682748b01948aa56147e712fd320a76d/0_90_2378_1427/master/2378.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66fd4aa39ace24b07c159946a7e90b50",
  "https://cdn.vox-cdn.com/thumbor/ev2FV8BS9CnkcKh7SSP0r8zE7y0=/0x102:2388x1445/1600x900/cdn.vox-cdn.com/uploads/chorus_image/image/49041353/GettyImages-499135456.0.jpg",
  "https://i.guim.co.uk/img/media/05540dd0ecd6c6a53fa22f2bb192817bbb475aa2/0_0_4305_2582/master/4305.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=bea2cb28535dad12a6f6e0b846cacba8",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnhwA8eVAra9tbrgcchWIaAcqbNPHmj_DAqw&usqp=CAU",
];
List info = [
  "India is a famous country for its great cultural and traditional values all across the world. It contains a mountain called Himalaya which is biggest in the world. It is surrounded by the three big oceans from three directions such as in south with Indian Ocean, in east with Bay of Bengal and in west with Arabic sea.",
  "Russia, the largest country in the world, occupies one-tenth of all the land on Earth. It spans 11 time zones across two continents (Europe and Asia) and has coasts on three oceans (the Atlantic, Pacific, and Arctic). The Russian landscape varies from desert to frozen coastline, tall mountains to giant marshes.",
  "The United States of America is the world's third largest country in size and nearly the third largest in terms of population. Located in North America, the country is bordered on the west by the Pacific Ocean and to the east by the Atlantic Ocean. Along the northern border is Canada and the southern border is Mexico.",
  "Japan is an archipelago, or string of islands, on the eastern edge of Asia. There are four main islands: Hokkaido, Honshu, Shikoku, and Kyushu. There are also nearly 4,000 smaller islands! Japan's nearest mainland neighbors are the Siberian region of Russia in the north and Korea and China farther south.",
  "China is the world's most populous country, with a population exceeding 1.4 billion, slightly ahead of India. China spans the equivalent of five time zones and borders fourteen countries by land, the most of any country in the world, tied with Russia.",
  "United Kingdom (also called the U.K.) is the island of Great Britain, which is made up of England, Wales, and Scotland. The U.K. also includes Northern Ireland, which is on another island. (South of Northern Ireland is the separate country of Ireland, which gained its independence from the U.K. in 1937.) Northern Ireland is just 12 miles from the island of Great Britain, across the North Channel of the Irish Sea.",
  "Ireland is an island nation on the westernmost edge of Europe. It is the continent's second largest island (after Great Britain). The Republic of Ireland occupies 80 percent of this landmass, while a large chunk of land in the north is part of the United Kingdom.",
  "Canada is a vast and rugged land. From north to south it spans more than half the Northern Hemisphere. From east to west it stretches almost 4,700 miles (7,560 kilometers) across six time zones. It is the second largest country in the world, but it has only one-half of one percent of the world's population.",
  "Israel is a small country in the Middle East about the size of the state of New Jersey. The country has a diverse climate with snowy mountains in the north and the hot desert in the south. Jordan, Syria, and the Palestinian Authority all border Israel to the east. Lebanon serves as the northern border and Egypt borders in the south.",
  "Nepal is a landlocked country in South Asia and is bordered by China and India. It is located in the Himalayas and contains eight of the world's ten highest peaks. The government system is a federal parliamentary republic; the chief of state is the president, and the head of government is the prime minister"
];

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.red.shade50,
      appBar: AppBar(backgroundColor: Colors.brown,
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

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ui_Country(flag[e.key], country[e.key], president[e.key], info[e.key]),));

              },
              child: listWidget(flag[e.key], country[e.key],
                  e.key % 2 == 0 ? Colors.pinkAccent : Colors.tealAccent ),
            ))
            .toList(),
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
