import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical/util/category_card.dart';
import 'package:medical/util/doctor_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Heng Youhok",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //profile icon
                  Container(
                      padding: EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset('lib/images/doctor3.png' , height: 70,)))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //card->how do you feel
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  children: [
                    //animations or cute picture
                    Container(
                      height: 100,
                      width: 100,
                      child: Lottie.network('https://lottie.host/88d24490-db68-4700-9695-7531d0816e99/0klelfgWHS.json'),
                    ),
                    //how do you feel + get start button
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "How do you feel?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text("Fill out your  medical card right now",
                              style: TextStyle(fontSize: 14)),
                          SizedBox(
                            height: 12,
                          ),
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[300],
                                borderRadius: BorderRadius.circular(12)),
                            child: Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12)),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'How can we help you?',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //horizontal listview ->categories: dentist , surgeon etc..
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                      iconImagePath: 'lib/icons/tooth.png',
                      categoryName: 'Dentist'),
                  CategoryCard(
                      iconImagePath: 'lib/icons/surgeon.png',
                      categoryName: 'Surgeon'),
                  CategoryCard(
                      iconImagePath: 'lib/icons/medicine.png',
                      categoryName: 'Medicine'),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //docter list
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor list",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DoctorCard(
                    doctorImagePath: 'lib/images/doctor1.png',
                    rating: '4.9',
                    doctorName: 'Dr. Ganeh Gup',
                    doctorProfession: 'Therapist'),
                     DoctorCard(
                    doctorImagePath: 'lib/images/doctor2.jpg',
                    rating: '4.4',
                    doctorName: 'Dr. Mitch Koko',
                    doctorProfession: 'Psychologist'),
                     DoctorCard(
                    doctorImagePath: 'lib/images/doctor3.png',
                    rating: '5.0',
                    doctorName: 'Dr. Steve Jobs',
                    doctorProfession: 'Surgeon'),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
