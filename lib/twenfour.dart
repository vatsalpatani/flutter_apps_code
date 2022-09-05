import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Order {
  final DateTime _dt;
  final String _description;
  final double _total;
  Order(this._dt, this._description, this._total);
  double get total => _total;
  String get description => _description;
  DateTime get dt => _dt;
}

class Customer {
  final String _name;
  final String _location;
  final List<Order> _orders;
  Customer(this._name, this._location, this._orders);
  List<Order> get orders => _orders;
  String get location => _location;
  String get name => _name;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePageWidget(),
      routes: <String, WidgetBuilder>{
        '/customer': (context) => CustomerWidget(), // only simple routes work
        '/order': (context) => const OrderWidget(), // only simple routes work
      },
    );
  }
}

class HomePageWidget extends StatelessWidget {
  final List<Customer> _customerList = [
    Customer("Bike Corp", "Atlanta", []),
    Customer("Trust Corp", "Atlanta", []),
    Customer("Jilly Boutique", "Birmingham", []),
  ];
  HomePageWidget({Key? key}) : super(key: key);
  void navigateToCustomer(BuildContext context, Customer customer) {
    Navigator.pushNamed(context, "/customer"); // only simple routes work
  }

  ListTile createCustomerWidget(BuildContext context, Customer customer) {
    return ListTile(
        title: Text(customer.name),
        subtitle: Text(customer.location),
        trailing: const Icon(Icons.arrow_right),
        onTap: () => navigateToCustomer(context, customer));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> customerList = List.from(_customerList
        .map((Customer customer) => createCustomerWidget(context, customer)));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Customers"),
        ),
        body: Center(
          child: ListView(
            children: customerList,
          ),
        ));
  }
}

class CustomerWidget extends StatelessWidget {
  final List<Order> _orderList = [
    Order(DateTime(2018, 11, 17), "Bicycle parts", 197.00),
    Order(DateTime(2018, 12, 1), "Bicycle parts", 107.45),
  ];
  CustomerWidget({Key? key}) : super(key: key);
  void navigateToOrder(BuildContext context, Order order) {
    Navigator.pushNamed(context, "/order"); // only simple routes work
  }

  ListTile createOrderWidget(BuildContext context, Order order) {
    return ListTile(
        title: Text(order.description),
        subtitle: Text("${order.dt.month}/${order.dt.day}/${order.dt.year}: "
            "\$${order.total}"),
        trailing: const Icon(Icons.arrow_right),
        onTap: () => navigateToOrder(context, order));
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = List.from(
        _orderList.map((Order order) => createOrderWidget(context, order)));
    widgetList.insert(
        0,
        Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const <Widget>[
                Text(
                  "BikeCorp",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Atlanta",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "2 Orders",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                )
              ],
            )));
    return Scaffold(
        appBar: AppBar(
          title: const Text("Customers"),
        ),
        body: Center(
          child: ListView(
            children: widgetList,
          ),
        ));
  }
}

class OrderWidget extends StatelessWidget {
  const OrderWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Order Info"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: const <Widget>[
              Text("BikeCorp",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              Text("Atlanta",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Text(""),
              Text("Bicycle Parts",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              Text("12/1/2019 \$123.23",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}
