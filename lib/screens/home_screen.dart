import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: FlipCard(
            speed: 500,
            direction: FlipDirection.HORIZONTAL,
            onFlipDone: (status) {
              print(status);
            },
            front: Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/card-back.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            back: Container(
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.90,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 450.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/card-front.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
