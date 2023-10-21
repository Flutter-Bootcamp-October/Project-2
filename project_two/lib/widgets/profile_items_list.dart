import 'package:flutter/material.dart';
import 'package:project_two/widgets/profile_Item.dart';

class ProfileItemList extends StatelessWidget {
  const ProfileItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: [
            ProfileItem(title: 'My Profile'),
            ProfileItem(title: 'Change Password'),
            ProfileItem(title: 'Payment Settings'),
            ProfileItem(title: 'My Voucher'),
            ProfileItem(title: 'Notification'),
            ProfileItem(title: 'About Us'),
            ProfileItem(title: 'Contact Us'),
          ],
        ),
      ),
    );
  }
}
