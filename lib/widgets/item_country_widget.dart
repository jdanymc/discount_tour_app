import 'package:flutter/material.dart';

class ItemCountryWidget extends StatelessWidget {
  const ItemCountryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: 160,
      height: 220,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://images.pexels.com/photos/3538245/pexels-photo-3538245.jpeg"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.30)),
                child: Text(
                  "New",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg"),
                    ),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "18 Tours",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              Container(
                height: 64,
                width: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
