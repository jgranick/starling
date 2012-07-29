package starling.display;


extern class Sprite extends DisplayObjectContainer {
	
	function new ():Void;
	
	function flatten ():Void;
	function unflatten ():Void;
	
	var isFlattened (default, null):Bool;
	
}