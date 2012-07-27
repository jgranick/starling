package starling.animation;


import starling.events.EventDispatcher;


extern class Tween extends EventDispatcher implements IAnimatable {
	
	var isComplete (default, null):Bool
	var target (default, null):Dynamic;
	var transition (default, null):String;
	var totalTime (default, null):Float;
	var currentTime (default, null):Float;
	var delay:Float;
	var roundToInt:Bool;
	var onStart:Dynamic;
	var onUpdate:Dynamic;
	var onComplete:Dynamic;
	var onStartArgs:Array<Dynamic>;
	var onUpdateArgs:Array<Dynamic>;
	var onCompleteArgs:Array<Dynamic>;
	
	function new (target:Dynamic, time:Float, transition:String = "linear"):Void;
	
	function reset (target:Dynamic, time:Float, transition:String = "linear"):Void;
	function animate (property:String, targetValue:Float):Void;
	function scaleTo (factor:Float):Void;
	function moveTo (x:Float, y:Float):Void;
	function fadeTo (alpha:Float):Void;
	function advanceTime (time:Float):Void;
	
}