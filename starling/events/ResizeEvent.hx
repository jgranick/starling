package starling.events;


extern class ResizeEvent extends Event {
	
	static var RESIZE:String;
	
	function new (type:String, width:Int, height:Int, bubbles:Bool = false):Void;
	
	var width (default, null):Int;
	var height (default, null):Int;
	
}