import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmanager/customer_model.dart';

class DesktopCustomersTableWidget extends StatelessWidget {
  DesktopCustomersTableWidget({super.key});

  List<Color> colorsList = Customer.colorsList;
  List<Customer> customersList = Customer.customersList;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String nameFlitter(String name) {
      return name[0];
    }

    return Container(
      constraints: BoxConstraints(maxHeight: height * 0.8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 182, 180, 180)),
      ),
      child: Scrollbar(
        trackVisibility: true,
        thickness: 8,
        radius: const Radius.circular(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            width: width * 1.5,
            child: Table(
              border: TableBorder.all(
                  color: const Color.fromARGB(255, 182, 180, 180)),
              columnWidths: const {
                0: FlexColumnWidth(4),
                1: FlexColumnWidth(2),
                2: FlexColumnWidth(4),
                3: FlexColumnWidth(4),
                4: FlexColumnWidth(3),
                5: FlexColumnWidth(4),
                6: FlexColumnWidth(5),
                7: FlexColumnWidth(3),
                8: FlexColumnWidth(3),
                9: FlexColumnWidth(2),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Customers",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Type",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Mobile",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Payment Received",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Text(
                        "Payment Remaining",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Phone Number",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Last Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        "Create On",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(""),
                    ),
                  ],
                ),
                ...customersList.map((customer) => TableRow(
                      decoration: BoxDecoration(
                        color: customersList.indexOf(customer) % 2 == 0
                            ? Colors.white
                            : const Color.fromARGB(255, 241, 240, 240),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 16,
                                child: Text(nameFlitter(customer.name)),
                                backgroundColor: colorsList[
                                    customersList.indexOf(customer) %
                                        colorsList.length],
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(customer.name),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(customer.type),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Text(
                                customer.mobile,
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(),
                              IconButton(
                                  onPressed: () {
                                    FlutterClipboard.copy(customer.mobile);
                                  },
                                  icon: Icon(Icons.content_paste_outlined,
                                      color:
                                          Color.fromARGB(255, 161, 164, 167)))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(customer.paymentReceived),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18),
                          child: Text(customer.paymentRemaining),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            customer.phoneNumber,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Text(
                                  customer.email,
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(),
                                IconButton(
                                    onPressed: () {
                                      FlutterClipboard.copy(customer.email);
                                    },
                                    icon: Icon(Icons.content_paste_outlined,
                                        color:
                                            Color.fromARGB(255, 161, 164, 167)))
                              ],
                            )),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(customer.lastLogin),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(customer.createdOn),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings_outlined,
                                color: Color.fromARGB(255, 122, 191, 247),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
