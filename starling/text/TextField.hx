package starling.text;


import flash.display.BitmapData;
import flash.geom.Rectangle;


extern class TextField extends DisplayObjectContainer {
	
	function new (width:int, height:Int, text:String, fontName:String, fontSize:Float = 12, char:UInt = 0x0, bold:Bool):Void;
	
	public dispose ():Void;
	
	var textBounds (default, null):Rectangle;
	var text:String;
	var fontName:String;
	var fontSize:Float;
	var color:UInt;
	var hAlign:String;
	var vAlign::String;
	var border:Bool;
	var bold:Bool;
	var italic:Bool;
	var underline:Bool;
	var kerning:Bool;
	var autoScale:Bool;
	
	static function registerBitmapFont (bitmapFont:BitmapFont, name:String = null):Void;
	static function unregisterBitmapFont (name:String, dispose:Bool = true):Void;
	static function getBitmapFont (name:String):BitmapFont;
	
}