import 'package:flutter/material.dart';
import '../../../constants/app_config.dart' as config;
class SingleItinerary extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
		width: config.App(context).appWidth(87),
		height: config.App(context).relativeHeight(94),
		decoration: BoxDecoration(
			color: Theme.of(context).primaryColor,
			borderRadius: BorderRadius.circular(10),
			  boxShadow:[
					  BoxShadow(
							color: Color(0x338A959E),
							blurRadius: 60.0,
							offset: Offset(0, 30)

					  )
				  ]
		),
		child: Padding(
			padding:EdgeInsets.symmetric(
				horizontal: config.App(context).relativeWidth(20),
			),
			child: Container(
				child: Row(
					mainAxisSize: MainAxisSize.min,
					children: <Widget>[
						Container(
							height: config.App(context).relativeHeight(63),
							width: config.App(context).relativeHeight(63),
							decoration: BoxDecoration(
								color: Color(0x33D4E157),
								borderRadius: BorderRadius.circular(13),
							),
							child: Center(
								child: Icon(
									Icons.near_me,
									color: Color(0xFFD4E157),
								),
							),
						),
						SizedBox(
							width: config.App(context).relativeWidth(15),
						),
						Column(
							mainAxisAlignment: MainAxisAlignment.center,
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								Text('From', style: Theme.of(context).textTheme.caption),
								Text('Los Angeles', style: Theme.of(context).textTheme.body1),
							],
						)
					],
				),
			),
		),
	);
  }
}