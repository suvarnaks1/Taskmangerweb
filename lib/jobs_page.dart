import 'package:flutter/material.dart';
import 'package:taskmanager/common/widgets/tab_bar.dart';

class JobsPage extends StatelessWidget {
  const JobsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const TabbarWithIndicator(),
        ],
      ),
    );
  }
}
