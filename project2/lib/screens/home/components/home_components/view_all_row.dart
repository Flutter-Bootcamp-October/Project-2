import 'package:flutter/material.dart';

class ViewAllRow extends StatelessWidget {
  const ViewAllRow({
    super.key,
    required this.content,
  });

  final String content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            content,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
          const Text(
            "View all",
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
