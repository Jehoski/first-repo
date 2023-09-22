import 'package:flutter/material.dart';
import 'package:jeho_card/home_page.dart';
import 'package:jeho_card/page_two.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required emailAddressController,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) =>
          pagetwo (),),
      );
    },
        child: Text('Go to next screen'));
  }
}
