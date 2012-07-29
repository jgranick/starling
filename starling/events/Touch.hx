package starling.events;


import flash.geom.Point;
import starling.display.DisplayObject;


extern class Touch {
	
	function new (id:Int, globalX:Float, globalY:Float, phase:String, target:DisplayObject):Void;
	
	function getLocation (space:DisplayObject, resultPoint:Point = null):Point;
	function getPreviousLocation (space:DisplayObject, resultPoint:Point = null):Point;
	function getMovement (space:DisplayObject, resultPoint:Point = null):Point;
	function toString ():String;
	function clone ():Touch;
	
	var id (default, null):Int;
	var globalX (default, null):Float;
	var globalY (default, null):Float;
	var previousGlobalX (default, null):Float;
	var previousGlobalY (default, null):Float;
	var tapCount (default, null):Float;
	var phase (default, null):String;
	var target (default, null):DisplayObject;
	var timestamp (default, null):Float;
	
}