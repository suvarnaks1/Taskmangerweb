import 'package:flutter/material.dart';

class Customer {
  final String name;
  final String type;
  final String mobile;
  final String paymentReceived;
  final String paymentRemaining;
  final String phoneNumber;
  final String email;
  final String lastLogin;
  final String createdOn;

  Customer({
    required this.name,
    required this.type,
    required this.mobile,
    required this.paymentReceived,
    required this.paymentRemaining,
    required this.phoneNumber,
    required this.email,
    required this.lastLogin,
    required this.createdOn,
  });
}

class DesktopCustomersTableWidget extends StatelessWidget {
  DesktopCustomersTableWidget({super.key});

  final List<Customer> customers = [
    Customer(
      name: "John Doe",
      type: "",
      mobile: "8956238956",
      paymentReceived: "0.00",
      paymentRemaining: "",
      phoneNumber: "9876543210",
      email: "john@example.com",
      lastLogin: "2024-04-30",
      createdOn: "2023-12-01",
    ),
    Customer(
      name: "Jane Smith",
      type: "",
      mobile: "9123456789",
      paymentReceived: "1000.00",
      paymentRemaining: "500.00",
      phoneNumber: "9123456789",
      email: "jane@example.com",
      lastLogin: "2024-04-29",
      createdOn: "2023-11-15",
    ),
    Customer(
      name: "John Doe",
      type: "",
      mobile: "8956238956",
      paymentReceived: "0.00",
      paymentRemaining: "",
      phoneNumber: "9876543210",
      email: "john@example.com",
      lastLogin: "2024-04-30",
      createdOn: "2023-12-01",
    ),
    Customer(
      name: "Robert Johnson",
      type: "",
      mobile: "8456238956",
      paymentReceived: "500.00",
      paymentRemaining: "200.00",
      phoneNumber: "8456238956",
      email: "robert@example.com",
      lastLogin: "2024-04-28",
      createdOn: "2023-10-10",
    ),
    Customer(
      name: "John Doe",
      type: "",
      mobile: "8956238956",
      paymentReceived: "0.00",
      paymentRemaining: "",
      phoneNumber: "9876543210",
      email: "john@example.com",
      lastLogin: "2024-04-30",
      createdOn: "2023-12-01",
    ),
    Customer(
      name: "Emily Davis",
      type: "",
      mobile: "7788994455",
      paymentReceived: "1500.00",
      paymentRemaining: "0.00",
      phoneNumber: "7788994455",
      email: "emily@example.com",
      lastLogin: "2024-04-27",
      createdOn: "2023-09-05",
    ),
    Customer(
      name: "Michael Wilson",
      type: "",
      mobile: "9988776655",
      paymentReceived: "750.00",
      paymentRemaining: "250.00",
      phoneNumber: "9988776655",
      email: "michael@example.com",
      lastLogin: "2024-04-26",
      createdOn: "2023-08-20",
    ),
    Customer(
      name: "John Doe",
      type: "",
      mobile: "8956238956",
      paymentReceived: "0.00",
      paymentRemaining: "",
      phoneNumber: "9876543210",
      email: "john@example.com",
      lastLogin: "2024-04-30",
      createdOn: "2023-12-01",
    ),
    Customer(
      name: "Robert Johnson",
      type: "",
      mobile: "8456238956",
      paymentReceived: "500.00",
      paymentRemaining: "200.00",
      phoneNumber: "8456238956",
      email: "robert@example.com",
      lastLogin: "2024-04-28",
      createdOn: "2023-10-10",
    ),
    Customer(
      name: "John Doe",
      type: "",
      mobile: "8956238956",
      paymentReceived: "0.00",
      paymentRemaining: "",
      phoneNumber: "9876543210",
      email: "john@example.com",
      lastLogin: "2024-04-30",
      createdOn: "2023-12-01",
    ),
    Customer(
      name: "Emily Davis",
      type: "",
      mobile: "7788994455",
      paymentReceived: "1500.00",
      paymentRemaining: "0.00",
      phoneNumber: "7788994455",
      email: "emily@example.com",
      lastLogin: "2024-04-27",
      createdOn: "2023-09-05",
    ),
    Customer(
      name: "Michael Wilson",
      type: "",
      mobile: "9988776655",
      paymentReceived: "750.00",
      paymentRemaining: "250.00",
      phoneNumber: "9988776655",
      email: "michael@example.com",
      lastLogin: "2024-04-26",
      createdOn: "2023-08-20",
    ),
    Customer(
      name: "Emily Davis",
      type: "",
      mobile: "7788994455",
      paymentReceived: "1500.00",
      paymentRemaining: "0.00",
      phoneNumber: "7788994455",
      email: "emily@example.com",
      lastLogin: "2024-04-27",
      createdOn: "2023-09-05",
    ),
    Customer(
      name: "Davis",
      type: "",
      mobile: "7788994455",
      paymentReceived: "1500.00",
      paymentRemaining: "0.00",
      phoneNumber: "7788994455",
      email: "emily@example.com",
      lastLogin: "2024-04-27",
      createdOn: "2023-09-05",
    ),
    Customer(
      name: "Emily Davis",
      type: "",
      mobile: "7788994455",
      paymentReceived: "1500.00",
      paymentRemaining: "0.00",
      phoneNumber: "7788994455",
      email: "emily@example.com",
      lastLogin: "2024-04-27",
      createdOn: "2023-09-05",
    ),
  ];

  List<Color> avatarColors = [
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.teal,
    Colors.pink,
    Colors.indigo,
    Colors.amber,
    Colors.cyan,
    Colors.deepOrange,
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    String nameFlitter(String name) {
      var a = name.split("");
      for (int i = 0; i <= a.length; i++) {
        if (i == 0) {
          return a[0];
        }
      }
      return "";
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
                2: FlexColumnWidth(3),
                3: FlexColumnWidth(4),
                4: FlexColumnWidth(3),
                5: FlexColumnWidth(4),
                6: FlexColumnWidth(4),
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
                ...customers.map((customer) => TableRow(
                      decoration: BoxDecoration(
                        color: customers.indexOf(customer) % 2 == 0
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
                                backgroundColor: avatarColors[
                                    customers.indexOf(customer) %
                                        avatarColors.length],
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
                          child: Text(
                            customer.mobile,
                            style: TextStyle(
                              color: Colors.blue,
                            ),
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
                            child: Text(
                              customer.email,
                              style: TextStyle(
                                color: Colors.blue,
                              ),
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
                                Icons.settings,
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
