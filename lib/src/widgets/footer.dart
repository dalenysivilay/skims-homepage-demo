import 'package:flutter/material.dart';

class SkimsFooter extends StatelessWidget {
  const SkimsFooter({super.key});

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFF625546);
    return SizedBox(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 29),
        color: const Color(0xFFEEE6DA),
        child: const Column(
          children: [
            SizedBox(height: 20),
            EmailFormBuilder(textColor: textColor),
            SizedBox(height: 36),
            TextSignUpBuilder(textColor: textColor),
            SizedBox(height: 36),
            SocialMediaLinksBuilder(textColor: textColor),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class SocialMediaLinksBuilder extends StatelessWidget {
  const SocialMediaLinksBuilder({
    super.key,
    required this.textColor,
  });

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'FOLLOW US',
          style: TextStyle(
            color: textColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook_outlined,
              color: textColor,
              size: 32,
            ),
            const SizedBox(width: 20),
            Icon(
              Icons.snapchat_outlined,
              color: textColor,
              size: 32,
            ),
            const SizedBox(width: 20),
            Icon(
              Icons.youtube_searched_for_outlined,
              color: textColor,
              size: 32,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}

class TextSignUpBuilder extends StatelessWidget {
  const TextSignUpBuilder({
    super.key,
    required this.textColor,
  });

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Text SKIMS to 68805 to never miss a drop!',
          style: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 20),
        Text(
          'By signing up via text, you agree to receive recurring automated promotional and personalized marketing text messages (e.g. cart reminders) from SKIMS at the cell number used when signing up. Consent is not a condition of any purchase. Reply HELP for help and STOP to cancel. Msg frequency varies. Msg & data rates may apply. View Terms & Privacy.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}

class EmailFormBuilder extends StatelessWidget {
  const EmailFormBuilder({
    super.key,
    required this.textColor,
  });

  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'STAY IN THE KNOW',
          style: TextStyle(
            color: textColor,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Text(
          'Be the first one to receive new releases, special offers, and more',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 40),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Email Address',
            labelStyle: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
            suffixIcon: Icon(
              Icons.arrow_forward,
              color: textColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'By signing up you agree to receive recurring automated marketing messages from SKIMS. View Terms & Privacy.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
