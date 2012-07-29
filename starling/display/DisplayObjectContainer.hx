package starling.display;


import starling.events.Event;
    

extern class DisplayObjectContainer extends DisplayObject {
	
	//function new ():Void;
	
	function addChild (child:DisplayObject):DisplayObject;
	function addChildAt (child:DisplayObject, index:Int):DisplayObject;
	function removeChild (child:DisplayObject, dispose:Bool = false):DisplayObject;
	function removeChildAt (index:Int, dispose:Bool = false):DisplayObject;
	function removeChildren (beginIndex:Int = 0, endIndex:Int = -1, dispose:Bool = false):Void;
	function getChildAt (index:Int):DisplayObject;
	function getChildByName (name:String):DisplayObject;
	function getChildIndex (child:DisplayObject):Int;
	function setChildIndex (child:DisplayObject, index:Int):Void;
	function swapChildren (child1:DisplayObject, child2:DisplayObject):Void;
	function swapChildrenAt (index1:Int, index2:Int):Void;
	function sortChildren (compareFunction:Dynamic):Void;
	function contains (child:DisplayObject):Bool;
	function broadcastEvent (event:Event):Void;
	function broadcastEventWith (type:String, data:Dynamic = null):Void;
	
	var numChildren (default, null):Int;
	
}
