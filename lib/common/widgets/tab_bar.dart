import 'package:flutter/material.dart';

class TabbarWithIndicator extends StatelessWidget {
  const TabbarWithIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TabBar(
            isScrollable: true,
            labelColor: Colors.grey,
            unselectedLabelColor: Color(0xFF5E5E5E),
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            unselectedLabelStyle:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            dividerColor: Colors.transparent,
            indicatorPadding: EdgeInsets.only(right: 10),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: 'Open Jobs'),
              Tab(text: 'All Jobs'),
              Tab(text: 'Outsourced Jobs'),
              Tab(text: 'Self Check-in'),
              Tab(text: 'Basic Settings'),
              Tab(text: 'Job Settings'),
              Tab(text: 'Print Option Settings'),
              Tab(text: 'Overview'),

            ],
          ),
        ],
      ),
    );
  }
}
