
import 'package:flutter/material.dart';
import 'package:profile/widgets/details.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,title: const Text("Profile",style: TextStyle(color: Colors.white),), backgroundColor: Colors.teal[700]),
      backgroundColor: Colors.white,
      body: Column(
        children: [
         Container(
          height: 380,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)
            ),
            color: Colors.teal[700],
          ),
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/gbenga.jpg'),
                    radius: 45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 227,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                                'Oyeladun Olugbenga Phillip',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                         Text(
                                'Mobile App Engineer',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                            
                
                      ],
                    ),
                  ),
                ],
              ),
                SizedBox(
                    height: 20,
                  ),
                  Details(icon: Icons.web_stories_outlined, text: 'https://github.com/Phillip4reall',),
                  SizedBox(
                    height: 5,
                  ),
                   Details(icon: Icons.email_outlined, text: 'gbengaoyeladun@gmail.com',),
                   SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Details(icon: Icons.phone_android_outlined, text: '+2348106341850',),
                      SizedBox(
                    width: 20,
                  ),
                      Details(icon: Icons.location_on, text: 'Lagos,Nigeria.',),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text( 'I am a mobile app developer for both iOs and Android devices. I am proficient with using cross platform frameworks(Flutter). I have worked on some projects from concept to completion and not only I can develop applications based on specifications.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal,color: Colors.white,))
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          const Text("Skills", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _skillItem("Flutter", 0.9),
                  _skillItem("Dart", 0.8),
              _skillItem("Cloud Firebase", 0.7),
              _skillItem("Mongodb", 0.6),
              _skillItem("Figma", 0.7),
              _skillItem("Git", 0.6),
               _skillItem("Riverpod", 0.7),
                _skillItem("Provider", 0.7),
                ],
              ),
            ),
            
        ],
      ),
    );
  }
   Widget _skillItem(String skill, double level) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill),
        LinearProgressIndicator(value: level, backgroundColor: Colors.grey[300], color: Colors.teal.shade700),
        const SizedBox(height: 10),
      ],
    );
  }
}


  
