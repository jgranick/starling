package starling.display;


extern class Sprite extends DisplayObjectContainer {
	
	function new ():Void;
	
	var useHandCursor:Bool;
	
	function flatten ():Void;
	function unflatten ():Void;
	
	var isFlattened (default, null):Bool;
	
}