import 'package:flutter/material.dart';
import '../../../constants/app_config.dart' as config;

Widget connectingBlock(context) => Positioned(
	top: config.App(context).relativeHeight(310),
	left: config.App(context).relativeWidth(293),
	child: Container(
		width: config.App(context).relativeWidth(63),
		height: config.App(context).relativeWidth(63),
		decoration: BoxDecoration(
			color: Color(0xFFFFE434),
			borderRadius: BorderRadius.circular(9.0),
			boxShadow: [
				BoxShadow(
					  color: Color(0x80FFE434),
					  blurRadius: 40.0,
					  offset: Offset(0, 20)
				)
			]
		),
		child: Center(
			child: Icon(
				Icons.import_export,
				color: Color(0xFF3A3A3A),
				size: 40,
			),
		),
	)
);