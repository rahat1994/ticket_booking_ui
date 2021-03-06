import 'package:flutter/material.dart';
import '../../constants/app_config.dart' as config;

class TransportBooking extends StatefulWidget {
  @override
  _TransportBookingState createState() => _TransportBookingState();
}

class _TransportBookingState extends State<TransportBooking> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: config.App(context).relativeHeight(464),
        child: Container(
          width: config.App(context).relativeWidth(362),
          height: config.App(context).relativeHeight(340),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                    color: Color(0x338A959E),
                    blurRadius: 60.0,
                    offset: Offset(0, 30))
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: config.App(context).relativeWidth(19),
              vertical: config.App(context).relativeHeight(17),
            ),
            child: Column(
              children: <Widget>[
                Row(
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
                        Text('Passangers',
                            style: Theme.of(context).textTheme.caption),
                        CounterWidget(),
                      ],
                    ),
                    SizedBox(
                      width: config.App(context).relativeWidth(89),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Type',
                            style: Theme.of(context).textTheme.caption),
                        Row(
													mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text('AC',
                                style: Theme.of(context).textTheme.body1),
                            Container(
															width: config.App(context).relativeWidth(24),
                              child: RawMaterialButton(
																	splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () => print('Hello'),
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: config.Colors().accentColor(1.0),
															)),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: config.App(context).relativeHeight(34),
                ),
                //second row
                Row(
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
                        Text('Departure',
                            style: Theme.of(context).textTheme.caption),
                        Text('Tue 6th May 2020',
                            style: Theme.of(context).textTheme.body1),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: config.App(context).relativeHeight(59),
                ),
                BlockButtonWidget(
                  color: Theme.of(context).accentColor,
                  text: 'Find Ride',
                  onPressed: () {
                    print(
                      'Hello',
                    );
                  },
                )
              ],
            ),
          ),
        ));
  }
}

class BlockButtonWidget extends StatelessWidget {
  const BlockButtonWidget(
      {Key key,
      @required this.color,
      @required this.text,
      @required this.onPressed})
      : super(key: key);

  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: this.onPressed,
        padding: EdgeInsets.symmetric(
          horizontal: config.App(context).relativeWidth(100),
          vertical: config.App(context).relativeHeight(17),
        ),
        color: this.color,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(9.0),
        ),
        child: Text(
          this.text,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: config.App(context).relativeWidth(92),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            width: config.App(context).relativeWidth(24),
            child: RawMaterialButton(
							splashColor: Colors.transparent,
							highlightColor: Colors.transparent,
              elevation: 0.0,
              child: Icon(
                Icons.remove,
                size: config.App(context).relativeWidth(12),
              ),
              onPressed: () => print('Hello'),
              fillColor: config.Colors().accentColor(1.0),
              shape: CircleBorder(),
            ),
          ),
          Text('03'),
          Container(
            width: config.App(context).relativeWidth(24),
            child: RawMaterialButton(
              elevation: 0.0,
							splashColor: Colors.transparent,
							highlightColor: Colors.transparent,
              child: Icon(
                Icons.add,
                size: config.App(context).relativeWidth(12),
              ),
              onPressed: () => print('Hello'),
              fillColor: config.Colors().accentColor(1.0),
              shape: CircleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
