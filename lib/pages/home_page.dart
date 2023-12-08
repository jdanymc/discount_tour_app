import 'package:discount_tour_app/widgets/item_country_widget.dart';
import 'package:discount_tour_app/widgets/item_popular_tours_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          children: [
            Icon(
              Icons.menu,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.rocket,
                    color: Colors.orange,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Discount Tour",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 8,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCountryWidget(),
                  ItemCountryWidget(),
                  ItemCountryWidget(),
                  ItemCountryWidget(),
                  ItemCountryWidget(),
                  ItemCountryWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Popular Tours",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                    ItemPopularToursWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
