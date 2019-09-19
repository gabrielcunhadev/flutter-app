import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

// We use an underscore to indicate that these variables are private.
final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

//A Custom [Category] widget
class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
      Key key,
      @required this.name,
      @required this.color,
      @required this.iconLocation
  }) :  assert(name != null),
        assert(color != null),
        assert(iconLocation != null);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => print('Clicou'),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );

  }


}
