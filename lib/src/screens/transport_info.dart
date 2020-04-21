import 'package:flutter/material.dart';
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
						width: config.App(context).appWidth(100),
						height: config.App(context).appHeight(32),
						decoration: BoxDecoration(color: Theme.of(context).accentColor),
					),
				),
				Positioned(
						top: config.App(context).appHeight(13),
					  	child: Container(
							height: config.App(context).appHeight(37),
							width: config.App(context).appWidth(85),
							child: Text(
								'Good Morning Mr. james',
								style: Theme.of(context).textTheme.display1
							),
					  	)
				),
				Positioned(
					  top: config.App(context).appHeight(16),
					  child: Container(
						  height: config.App(context).appHeight(37),
						  width: config.App(context).appWidth(85),
						  child: Text(
								'Book a bus Ticket',
								style: Theme.of(context).textTheme.headline
						  ),
					  )
				)
			],
		)
	);
  }
}
