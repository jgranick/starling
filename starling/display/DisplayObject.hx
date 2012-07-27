package starling.display;
	
	
import flash.geom.Matrix;
import flash.geom.Point;
import flash.geom.Rectangle;
import starling.core.RenderSupport;
import starling.events.EventDispatcher;


extern class DisplayObject extends EventDispatcher {
	
	function new ():Void;
	
	function dispose ():Void;
	function removeFromParent (dispose:Bool = false):Void;
	function getTransformationMatrix (targetSpace:DisplayObject, resultMatrix:Matrix = null):Matrix;
	function getBounds (targetSpace:DisplayObject, resultRect:Rectangle = null):Rectangle;
	function hitTest (localPoint:Point, forTouch:Bool = false):DisplayObject;
	function localToGlobal (localPoint:Point):Point;
	function globalToLocal (globalPoint:Point):Point;
	function render (support:RenderSupport, parentAlpha:Float):Void;
	
	var transformationMatrix (default, null):Matrix;
	var bounds (default, null):Rectangle;
	var width:Float;
	var height:Float;
	var root (default, null):DisplayObject;
	var x:Float;
	var y:Float;
	var pivotX:Float;
	var pivotY:Float;
	var scaleX:Float;
	var scaleY:Float;
	var rotation:Float;
	var alpha:Float;
	var visible:Bool;
	var touchable:Bool;
	var blendMode:String;
	var name:String;
	var parent (default, null):DisplayObjectContainer;
	var stage (default, null):Stage;
	
}