package starling.utils;


extern class Color {
	
	static var WHITE:UInt;
	static var SILVER:UInt;
	static var GRAY:UInt;
	static var BLACK:UInt;
	static var RED:UInt;
	static var MAROON:UInt;
	static var YELLOW:UInt;
	static var OLIVE:UInt;
	static var LIME:UInt;
	static var GREEN:UInt;
	static var AQUA:UInt;
	static var TEAL:UInt;
	static var BLUE:UInt;
	static var NAVY:UInt;
	static var FUCHSIA:UInt;
	static var PURPLE:UInt;
	
	static function getAlpha (color:UInt):Int;
	static function getRed (color:UInt):Int;
	static function getGreen (color:UInt):Int;
	static function getBlue (color:UInt):Int;
	static function rgb (red:Int, green:Int, blue:Int):UInt;
	static function argb (alpha:Int, red:Int, green:Int, blue:Int):UInt;
	
	//function new ():Void;
	
}