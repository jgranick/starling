package starling.animation;


extern class Transitions {

	static var LINEAR:String;
	static var LINEAR:String;
	static var EASE_IN:String;
	static var EASE_OUT:String;
	static var EASE_IN_OUT:String;
	static var EASE_OUT_IN:String;        
	static var EASE_IN_BACK:String;
	static var EASE_OUT_BACK:String;
	static var EASE_IN_OUT_BACK:String;
	static var EASE_OUT_IN_BACK:String;
	static var EASE_IN_ELASTIC:String;
	static var EASE_OUT_ELASTIC:String;
	static var EASE_IN_OUT_ELASTIC:String;
	static var EASE_OUT_IN_ELASTIC:String;  
	static var EASE_IN_BOUNCE:String;
	static var EASE_OUT_BOUNCE:String;
	static var EASE_IN_OUT_BOUNCE:String;
	static var EASE_OUT_IN_BOUNCE:String;
 	
 	static function getTransition (name:String):Dynamic;
 	static function register (name:String, func:Dynamic):Void;
 	
}