import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddit_tutorial/core/constants.dart';
import 'package:reddit_tutorial/theme/pallete.dart';

class SignInButton extends ConsumerWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Image.asset(Constants.googlePath, width: 35),
        label: const Text('Continue With Google', style: TextStyle(fontSize: 18)),
        style: ElevatedButton.styleFrom(
            primary: Pallete.greyColor,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
        ),

      ),
    );
  }
}
