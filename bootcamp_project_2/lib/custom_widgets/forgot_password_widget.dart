import 'package:flutter/material.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forgot Password?',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xff34495E),
            ),
          ),
        ],
      ),
    );
  }
}
