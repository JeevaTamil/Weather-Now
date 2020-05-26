import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'weekly_card.dart';

class WeatherHome extends StatefulWidget {
  @override
  _WeatherHomeState createState() => _WeatherHomeState();
}

class _WeatherHomeState extends State<WeatherHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              topBar(),
              dateSpan(),
              cardFinal(),
              weekTitle(),
              //WeeklyCardView()
              weeklyScrollView(context)

              //centerCard(),
            ],
          ),
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        menuButton(),
        cityTitle(),
        searchButton(),
      ],
    );
  }

  Text cityTitle() => Text(
        'India, Mumbai',
        style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
      );

  Widget menuButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(20),
        height: 20,
        width: 20,
        child: Image.asset(
          'assets/images/menu.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget searchButton() {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(20),
        height: 20,
        width: 20,
        child: Image.asset(
          'assets/images/search.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget cardFinal() {
    return Stack(alignment: Alignment.bottomRight, children: [
      Container(
          height: MediaQuery.of(context).size.height * 0.43,
          width: MediaQuery.of(context).size.width * 0.92,
          child: cardOne()),
      Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.width * 0.44,
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Image.asset(
            'assets/images/sun_cloud.png',
            fit: BoxFit.fill,
          ),
        ),
      )
    ]);
  }

  Widget cardOne() {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.9,
          child: Image.asset(
            'assets/images/MaskRect.png',
            fit: BoxFit.fill,
          ),
          decoration: BoxDecoration(
              color: Color(0xff5D50FE),
              borderRadius: BorderRadius.circular(40)),
        ),
        centerCard()
      ],
    );
  }

  Widget centerCard() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "25\u00B0",
            style: TextStyle(fontSize: 120, color: Colors.white),
          ),
          Text(
            "Clouds & Sun",
            style: TextStyle(fontSize: 23, color: Colors.white),
          ),
          Text(
            "Humidity",
            style: TextStyle(
                fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            "35\u00B0",
            style: TextStyle(
                fontSize: 27,
                color: Colors.white.withOpacity(0.2),
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
      //decoration: BoxDecoration(
      //    color: Color(0xff5D50FE), borderRadius: BorderRadius.circular(40)),
    );
  }

  Widget dateSpan() {
    return Container(
      margin: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Today',
                style: TextStyle(
                    color: Color(0xff5D50FE), fontWeight: FontWeight.bold),
              ),
            ),
            decoration: BoxDecoration(
                color: Color(0xffADA7FE).withOpacity(0.5),
                borderRadius: BorderRadius.circular(25)),
          ),
          Container(
            child: Text('Tomorrow'),
          ),
          Container(
            child: Text('Next week'),
          ),
        ],
      ),
    );
  }
}

Widget weekTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          'Next 15 Days',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget weeklyScrollView(BuildContext context) {
  return Container(
      margin: EdgeInsets.only(left: 20),
      height: MediaQuery.of(context).size.height * 0.21,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          WeeklyCardView('Monday', 'assets/images/rain.png', '30', '22', '25',
              Color(0xffFFAE00)),
          SizedBox(
            width: 20,
          ),
          WeeklyCardView('Monday', 'assets/images/wind.png', '50', '22', '25',
              Color(0xffFFAE00)),
          SizedBox(
            width: 20,
          ),
          WeeklyCardView('Monday', 'assets/images/sun.png', '50', '22', '25',
              Color(0xffFFAE00)),
          SizedBox(
            width: 20,
          ),
          WeeklyCardView('Monday', 'assets/images/drizzle.png', '50', '22',
              '25', Color(0xffFFAE00)),
          SizedBox(
            width: 20,
          ),
        ],
      ));
}
