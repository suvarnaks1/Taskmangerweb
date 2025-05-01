import 'package:flutter/material.dart';
import 'package:taskmanager/common/desktop_customers_table_widget.dart';

class DesktopCustomersPage extends StatelessWidget {
  const DesktopCustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> selectStateList = [
      " Andhra Pradesh",
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
      "Madhya Pradesh"
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

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Customers",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: SizedBox(
                    width: 450,
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 400,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 168, 169, 170),
                          ),
                        ),
                        hintText: 'Name, Mobile, Email etc',
                        prefixIcon: const Icon(Icons.search),
                      ),
                      autofocus: true,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownMenu(
                    hintText: "Select State",
                    width: 200,
                    menuHeight: 300,
                    dropdownMenuEntries: selectStateList
                        .map(
                          (e) => DropdownMenuEntry(value: e, label: e),
                        )
                        .toList()),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      height: 50,
                      width: 45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(249, 1, 115, 197),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: const Color.fromARGB(248, 1, 73, 124),
                      )),
                ),
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            DesktopCustomersTableWidget()
          ],
        ),
      ),
    );
  }
}
