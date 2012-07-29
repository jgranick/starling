package starling.events;


extern class EventDispatcher {
	
	function new ():Void;
	
	function addEventListener (type:String, listener:Dynamic):Void;
	function removeEventListener (type:String, listener:Dynamic):Void;
	function removeEventListeners (type:String = null):Void;
	function dispatchEvent (event:Event):Void;
	function dispatchEventWith (type:String, bubbles:Bool = false, data:Dynamic = null):Void;
	function hasEventListener (type:String):Bool;
	
}