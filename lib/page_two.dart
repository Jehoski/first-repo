import 'package:flutter/material.dart';
import 'package:jeho_card/home_page.dart';
import 'package:jeho_card/custom_button.dart';

class pagetwo extends StatefulWidget {
  const pagetwo({super.key});

  @override
  State<pagetwo> createState() => _pagetwoState();
}

class _pagetwoState extends State<pagetwo> {

  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _phoneNumberController,
                decoration: InputDecoration(
                  hintText: 'phone number'
                ),
              ),


              TextField(
              controller: _emailAddressController,
                decoration: InputDecoration(
                    hintText: 'email address'
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            first_page (
                              phoneNumber: _phoneNumberController.text,
                              emailAddress: _emailAddressController.text,
                            ),
                      ),
                    );

                    print(_emailAddressController.text);
                    print(_phoneNumberController.text);

                  },
                  child: Text ('Register'),
               ),
            ],
      ),
    );
  }
}
