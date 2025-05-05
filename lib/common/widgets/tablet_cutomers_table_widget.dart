import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/customer_model.dart';

class TabletCustomersTableWidget extends StatelessWidget {
  TabletCustomersTableWidget({super.key});

  List<Customer> customersList = Customer.customersList;
  List<Color> colorsList = Customer.colorsList;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    String nameFlitter(String name) {
      return name[0];
    }

    Color getAvatarColor(int index) {
      return colorsList[index % colorsList.length];
    }

    return Container(
      constraints: BoxConstraints(
        maxHeight: height * 0.8,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 182, 180, 180)),
      ),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(
          scrollbars: true,
          overscroll: false,
        ),
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          thickness: 10,
          radius: const Radius.circular(5),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 10,
              radius: const Radius.circular(5),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: width * 2.04,
                  child: Table(
                    border: TableBorder.all(
                        color: const Color.fromARGB(255, 182, 180, 180)),
                    columnWidths: {
                      0: FlexColumnWidth(width * 0.06),
                      1: FlexColumnWidth(width * 0.03),
                      2: FlexColumnWidth(width * 0.05),
                      3: FlexColumnWidth(width * 0.05),
                      4: FlexColumnWidth(width * 0.05),
                      5: FlexColumnWidth(width * 0.05),
                      6: FlexColumnWidth(width * 0.07),
                      7: FlexColumnWidth(width * 0.05),
                      8: FlexColumnWidth(width * 0.05),
                      9: FlexColumnWidth(width * 0.03),
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
                              maxLines: 1,
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
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
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
                                child: Row(children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: getAvatarColor(
                                        customersList.indexOf(customer)),
                                    child: Text(nameFlitter(customer.name)),
                                  ),
                                  SizedBox(
                                    width: width * 0.01,
                                  ),
                                  Text(customer.name)
                                ]),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(customer.type),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  children: [
                                    Text(customer.mobile,
                                        style: TextStyle(
                                          color: Colors.blue,
                                        )),
                                    SizedBox(),
                                    IconButton(
                                        onPressed: () {
                                          FlutterClipboard.copy(
                                              customer.mobile);
                                        },
                                        icon: Icon(
                                          Icons.content_paste_outlined,
                                          color: Colors.blue,
                                        ))
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
                                child: Text(customer.phoneNumber),
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
                                        icon: Icon(
                                          Icons.content_paste_outlined,
                                          color: Colors.blue,
                                        ))
                                  ],
                                ),
                              ),
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
                                      Icons.settings,
                                      color: Colors.blue,
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
          ),
        ),
      ),
    );
  }
}
