import 'package:flutter/material.dart';

import '../widgets/notification_card.dart';

class RecurringTab extends StatelessWidget {
  const RecurringTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Advanced Settings',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
