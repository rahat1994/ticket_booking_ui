import 'package:flutter/material.dart';
import 'route_generator.dart';
import 'constants/theme_constants.dart';
void main() => runApp(TicketBookingApp());

class TicketBookingApp extends StatefulWidget {
  @override
  _TicketBookingAppState createState() => _TicketBookingAppState();
}

class _TicketBookingAppState extends State<TicketBookingApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Booking App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/',
      theme: lightTheme,
    );
  }
}
