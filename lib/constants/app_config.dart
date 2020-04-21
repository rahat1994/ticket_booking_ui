import 'package:flutter/material.dart';

class App{
	BuildContext _context;
	double _height;
	double _width;
	double _heightPadding;
	double _widthPadding;
	String _url = '';

	App(_context) {
		this._context = _context;
		MediaQueryData _queryData = MediaQuery.of(this._context);
		_height = _queryData.size.height / 100.0;
		_width = _queryData.size.width / 100.0;
		_heightPadding = _height - ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
		_widthPadding = _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
	}

	double appHeight(double v) {
		return _height * v;
	}

	double appWidth(double v) {
		return _width * v;
	}

	double appVerticalPadding(double v) {
		return _heightPadding * v;
	}

	double appHorizontalPadding(double v) {
		return _widthPadding * v;
	}
	
	String url(){
		return _url;
	}
}

class Colors{

	Color _mainColor = Color(0xFFFF344C);
	Color _secondColor = Color(0xFF000000);
	Color _accentColor = Color(0xFFFFE434);
	Color _hintColor = Color(0xFF8A959E);

	Color mainColor(double opacity) {
		return this._mainColor.withOpacity(opacity);
	}

	Color secondColor(double opacity) {
		return this._secondColor.withOpacity(opacity);
	}

	Color accentColor(double opacity) {
		return this._accentColor.withOpacity(opacity);
	}

	Color hintColor(double opacity) {
		return this._hintColor.withOpacity(opacity);
	}
}