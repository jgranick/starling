package starling.events;


import flash.Vector;

import starling.display.DisplayObject;


extern class TouchEvent extends Event {
	
	static var TOUCH:String;
	
	function new (type:String, touches:Vector<Touch>, shiftKey:Bool = false, ctrlKey:Bool = false, bubbles:Bool = true):Void;
	
	function getTouches (target:DisplayObject, phase:String = null):Vector<Touch>;
	function getTouch (target:DisplayObject, phase:String = null):Touch;
	function interactsWith (target:DisplayObject):Bool;
	
	var timestamp (default, null):Float;
	var touches (default, null):Vector<Touch>;
	var shiftKey (default, null):Bool;
	var ctrlKey (default, null):Bool;
	
}