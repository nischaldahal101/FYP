import 'package:flutter/material.dart';
import 'package:fyp/home_page.dart';
import 'package:fyp/sign_in.dart';
import 'package:introduction_screen/introduction_screen.dart';

class StartMenu extends StatelessWidget {
  const StartMenu({Key? key}) : super(key: key);

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/hospital.jpg'),
        title: 'Hsopital From Your Phone',
        body: 'Shopping made convinient by making it everywhere',
        footer: Container(
          height: 100,
          width: 200,
          child: Image.asset('assets/logo.jpg'),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/appointment.png'),
        title: 'Book Appointment in One Tap',
        body:
            'Booking appointments with doctor or rooms in hospital done with one tap of the finger',
        footer: Container(
          height: 100,
          width: 200,
          child: Image.asset('assets/logo.jpg'),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/ambulance.png'),
        title: 'Emergency Service',
        body: 'Get Ambulance at your location with a single click',
        footer: Container(
          height: 100,
          width: 200,
          child: Image.asset('assets/logo.jpg'),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        done: Text(
          'Done',
          style: TextStyle(color: Colors.purple[900]),
        ),
        onDone: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const signIn()));
        },
        showSkipButton: true,
        skip: Text(
          'Skip',
          style:
              TextStyle(color: Colors.purple[900], fontWeight: FontWeight.bold),
        ),
        pages: getPages(),
        showNextButton: true,
        dotsDecorator: const DotsDecorator(activeColor: Colors.purple),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.purple,
        ),
        globalBackgroundColor: Colors.white,
      ),
    );
  }
}
