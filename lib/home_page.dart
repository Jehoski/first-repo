import 'package:flutter/material.dart';
import 'package:jeho_card/page_two.dart';

import 'custom_button.dart';


class first_page extends StatelessWidget {
 String phoneNumber;
 String emailAddress;

 first_page({
   this.phoneNumber = '07032877284',
   this.emailAddress = 'jehoski@live.com'
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Picture
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70,
              child: Icon( Icons.person_2_outlined, size: 100, color: Colors.black38,),

            ),
            //Name Text
            const Text(
              'Jehoram',
              style: TextStyle(
                fontSize: 36,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Job Title
            Text(
              'MOBILE DEVELOPER',
              style: TextStyle(color: Colors.white, letterSpacing: 1.5),
            ),

            SizedBox(
              height: 15,
            ),
            // Container divider
            Container(
              margin: EdgeInsets.symmetric(horizontal: 150),
              height: 0.7,
              width: 200,
              color: Colors.white,
            ),

            SizedBox(
              height: 15,
            ),
            //Phone Number container
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(phoneNumber ,
                    style: TextStyle(
                        color: Colors.black38),),
                ],
              ),
            ),

            SizedBox(
              height: 15,
            ),
            //Phone Number container
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 30),
              color: Colors.white,
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(emailAddress,
                    style: TextStyle(
                      color: Colors.black38
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,),
            CustomButton(emailAddressController: _emailAddressController)
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _emailAddressController {
}
