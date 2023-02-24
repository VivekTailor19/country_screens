import 'package:flutter/material.dart';

class ui_Country extends StatefulWidget {

  String? country;
  String? flag ;
  String? president ;
  String? info ;
  ui_Country(this.flag,this.country,this.president,this.info);


  @override
  State<ui_Country> createState() => _ui_CountryState();
}

class _ui_CountryState extends State<ui_Country> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        leading: Icon(
          Icons.featured_play_list_outlined,
        ),
        title: Text(
          "${widget.flag} ${widget.country} ${widget.flag}",
          style: TextStyle(fontSize: 25, letterSpacing: 5),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "${widget.country}",
              style: TextStyle(
                  fontSize: 72,
                  fontWeight: FontWeight.bold,

                  letterSpacing: 15,
                  color: Colors.amber),
            ),
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              child: Image.network("${widget.president}",height: 300,width: 300,),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("${widget.info}"),
            )

          ],
        ),
      ),
    );
  }
}


/*
*
  *
* */
// String country = "";
// String flag = "";
// String data = "";


