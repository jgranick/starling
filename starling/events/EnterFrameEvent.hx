package starling.events;


extern class EnterFrameEvent extends Event {
	
	static var ENTER_FRAME:String;
	
	function new (type:String, passedTime:Float, bubbles:Bool = false):Void;
	
	var passedTime (default, null):Float;
	
}