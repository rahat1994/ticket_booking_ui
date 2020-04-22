import 'package:flutter/material.dart';
import '../../constants/app_config.dart' as config;

import './elements/single_itinerary.dart';
import './elements/connecting_block.dart';
List<Widget> nonStopItinerary(context){

  return [
    ItineraryWidget(),
    connectingBlock(context)
  ];
}

class ItineraryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: config.App(context).relativeHeight(242),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: <Widget>[
          Positioned(
                child:  Container(
                  width: config.App(context).relativeWidth(362),
                  height: config.App(context).relativeHeight(197),
                  child: Column(
                    children: <Widget>[
                      SingleItinerary(),
                      SizedBox(height: config.App(context).relativeHeight(9)),
                      SingleItinerary(),
                    ],
                  ),
                ),
          ),

        ],
      ),
    );
  }
}
