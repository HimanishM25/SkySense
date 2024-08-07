
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/presentation/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final String temperature = '23°C';
  final String weather = 'Sunny';
  final String weather_icon = 'assets/weather/sunny.png';
  final String location = 'Mumbai, Maharashtra';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        //leading: const Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
          ),
        ],
        title:  Text('Today',
          style: GoogleFonts.inter(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(temperature,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                      ),
                      ),
                      Text(weather,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
               Image.asset(weather_icon,height: 150,width: 150,)
                ]
                ),
              //SizedBox(height: 10,),
              Text(location,
              style: GoogleFonts.inter(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
              ),
              ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5, // Number of items in the list
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 200, // Specify the height
                    width: double.infinity,
                    child:
                    WeatherCard(
                      temperature: '23°C',
                      iconPath: 'assets/weather/sunny.png',
                    ),
                  ),
                );
              },
            ),
            WeatherCard(temperature: '30', iconPath: 'assets/weather/sunny.png'),
          ],
        ),
      )
    );
  }
}
