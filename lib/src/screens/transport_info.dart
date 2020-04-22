import 'package:flutter/material.dart';
import 'package:ticketbooking/src/widgets/itinerary_widget.dart';
import 'package:ticketbooking/src/widgets/transport_booking_widget.dart';
import '../../constants/app_config.dart' as config;


class TransportInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
		body: Stack(
			alignment: AlignmentDirectional.topCenter,
			children: <Widget>[
				Positioned(
					top: 0,
					child: Container(
						width:config.App(context).relativeWidth(414),
						height: config.App(context).relativeHeight(289),
						decoration: BoxDecoration(color: Theme.of(context).accentColor),
					),
				),
				Positioned(
						top: config.App(context).relativeHeight(119),
					  	child: Container(
							width: config.App(context).appWidth(85),
							child: Text(
								'Good Morning Mr. james',
								style: Theme.of(context).textTheme.display1
							),
					  	)
				),
				Positioned(
					  top: config.App(context).relativeHeight(153),
					  child: Container(
						  width: config.App(context).appWidth(85),
						  child: Text(
								'Book a bus Ticket',
								style: Theme.of(context).textTheme.headline
						  ),
					  )
				),
				...nonStopItinerary(context),
				TransportBooking()
			],
		)
	);
  }
}
