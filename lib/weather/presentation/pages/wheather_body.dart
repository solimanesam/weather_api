import 'package:flutter/material.dart';
import 'package:weather_app/weather/domain/entities/weather.dart';

class wheather_body extends StatelessWidget {

  Weather? weather ;

  wheather_body({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/wh.jpg',
                fit: BoxFit.fill,
              )),
          Positioned(
              top: 50,
              right: 10,
              child: IconButton(
                onPressed: () {
                 
                },
                icon: const Icon(Icons.search),
                color: Colors.white,
                iconSize: 50,
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weather!.cityname,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                const Text(
                  'Updated at 02:00',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '🌤',
                      style: TextStyle(
                        fontSize: 60,
                      ),
                    ),
                    Text(
                      '17',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 60,
                          color: Colors.white),
                    ),
                    Column(
                      children: [
                        Text(
                          'maxtemp=26',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'mintemp=10',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
                const Text(
                  'LightRain',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
