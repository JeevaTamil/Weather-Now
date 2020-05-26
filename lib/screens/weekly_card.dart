import 'package:flutter/material.dart';

class WeeklyCardView extends StatefulWidget {
  String day;
  String img;
  String temp;
  String minTemp;
  String maxTemp;
  Color bgClr;

  WeeklyCardView(
      this.day, this.img, this.maxTemp, this.minTemp, this.temp, this.bgClr);

  @override
  _WeeklyCardViewState createState() => _WeeklyCardViewState();
}

class _WeeklyCardViewState extends State<WeeklyCardView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        overflow: Overflow.visible,
        alignment: Alignment.bottomRight,
        children: [
          mainWeeklyCard(context),
          Positioned(
            bottom: -20,
            right: -40,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset(
                'assets/images/cloud.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ]);
  }

  Container mainWeeklyCard(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.21,
      width: MediaQuery.of(context).size.width * 0.30,
      decoration: BoxDecoration(
        color: widget.bgClr,
        borderRadius: BorderRadius.circular(23),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              '${widget.day}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            cardImage(),
            Text(
              '${widget.temp}\u00B0',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                '${widget.minTemp}\u00B0',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              Text(
                '${widget.maxTemp}\u00B0',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ])
          ],
        ),
      ),
    );
  }

  Widget cardImage() {
    if (widget.img.contains('sun')) {
      return Container(
        height: 45,
        width: 45,
        child: Image.asset(
          '${widget.img}',
          fit: BoxFit.fill,
        ),
      );
    } else if (widget.img.contains('rain')) {
      return Container(
        height: 45,
        width: 60,
        child: Image.asset(
          '${widget.img}',
          fit: BoxFit.fill,
        ),
      );
    } else if (widget.img.contains('wind')) {
      return Container(
        height: 35,
        width: 55,
        child: Image.asset(
          '${widget.img}',
          fit: BoxFit.fill,
        ),
      );
    } else if (widget.img.contains('drizzle')) {
      return Container(
        height: 45,
        width: 45,
        child: Image.asset(
          '${widget.img}',
          fit: BoxFit.fill,
        ),
      );
    }
  }
}
