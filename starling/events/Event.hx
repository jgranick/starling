package starling.events;


extern class Event {
	
	static var ADDED:String;
	static var ADDED_TO_STAGE:String;
	static var ENTER_FRAME:String;
	static var REMOVED:String;
	static var REMOVED_FROM_STAGE:String;
	static var TRIGGERED:String;
	static var FLATTEN:String;
	static var RESIZE:String;
	static var COMPLETE:String;
	static var CONTEXT3D_CREATE:String;
	static var ROOT_CREATED:String;
	static var REMOVE_FROM_JUGGLER:String;
	
	function new (type:String, bubbles:Bool = false, data:Dynamic = null):Void;
	
	function stopPropogation ():Void;
	function stopImmediatePropogation ():Void;
	function toString ():String;
	
	var bubbles (default, null):Bool;
	var target (default, null):EventDispatcher;
	var currentTarget (default, null):EventDispatcher;
	var type (default, null):String;
	var data (default, null):Dynamic;
	
}