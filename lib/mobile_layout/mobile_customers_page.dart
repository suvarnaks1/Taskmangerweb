import 'package:flutter/material.dart';
import 'package:taskmanager/common/widgets/mobile_customers_table_widget.dart';

class MobileCustomersPage extends StatefulWidget {
  MobileCustomersPage({super.key});

  @override
  State<MobileCustomersPage> createState() => _MobileCustomersPageState();
}

class _MobileCustomersPageState extends State<MobileCustomersPage> {
  final ScrollController _scrollController = ScrollController();

  List<String> selectStateList = [
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chhattisgarh",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal",
  ];

  bool canScrollLeft = false;
  bool canScrollRight = true;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final maxScroll = _scrollController.position.maxScrollExtent;
      final offset = _scrollController.offset;

      bool newCanScrollLeft = offset > 0;
      bool newCanScrollRight = offset < maxScroll;

      if (newCanScrollLeft != canScrollLeft ||
          newCanScrollRight != canScrollRight) {
        setState(() {
          canScrollLeft = newCanScrollLeft;
          canScrollRight = newCanScrollRight;
        });
      }
    });
  }

  void scrollLeft() {
    final double offset = _scrollController.offset - 100;
    _scrollController.animateTo(
      offset < 0 ? 0 : offset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void scrollRight() {
    final maxScrollExtent = _scrollController.position.maxScrollExtent;
    final double offset = _scrollController.offset + 100;
    _scrollController.animateTo(
      offset > maxScrollExtent ? maxScrollExtent : offset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(
              height: 60,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text(
                          "Customers",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20),
                        SizedBox(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 168, 169, 170),
                                ),
                              ),
                              hintText: 'Name, Mobile, Email etc',
                              prefixIcon: Icon(Icons.search),
                            ),
                            autofocus: true,
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(
                          width: 150,
                          child: DropdownMenu(
                            hintText: "Select State",
                            width: 150,
                            menuHeight: 300,
                            dropdownMenuEntries: selectStateList
                                .map(
                                  (e) => DropdownMenuEntry(value: e, label: e),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(width: 10),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 45,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color.fromARGB(249, 1, 115, 197),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: Color.fromARGB(248, 1, 73, 124),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  if (canScrollLeft)
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: scrollLeft,
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  if (canScrollRight)
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: scrollRight,
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: MobileCustomersTableWidget())
          ],
        ),
      ),
    );
  }
}
