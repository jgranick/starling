package starling.display;


import flash.display3D.Context3DBlendFactor;


extern class BlendMode {
	
	static var AUTO:String;
	static var NONE:String;
	static var NORMAL:String;
	static var ADD:String;
	static var MULTIPLY:String;
	static var SCREEN:String;
	static var ERASE:String;
	
	static function getBlendFactors (mode:String, premultipliedAlpha:Bool = true):Array<Dynamic>;
	static function register (name:String, sourceFactor:String, destFactor:String, premultipliedAlpha:Bool = true):Void;
	
}