package starling.animation;


import starling.events.EventDispatcher;


extern class DelayedCall extends EventDispatcher implements IAnimatable {
	
	var isComplete (default, null):Bool;
	var totalTime (default, null):Float;
	var currentTime (default, null):Float;
	var repeatCount:Int;
	
	function new (call:Dynamic, delay:Float, args:Array<Dynamic> = null):Void;
	
	function advanceTime (time:Float):Void;
	
}