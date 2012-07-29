package starling.core;


import flash.geom.Matrix;
import flash.geom.Matrix3D;
import starling.display.DisplayObject;
import starling.display.Quad;
import starling.textures.Texture;


extern class RenderSupport {
	
	function new ():Void;
	
	function dispose ():Void;
	function setOrthographicProjection (width:Float, height:Float):Void;
	function loadIdentity ():Void;
	function translateMatrix (dx:Float, dy:Float):Void;
	function rotateMatrix (angle:Float):Void;
	function scaleMatrix (sx:Float, sy:Float):Void;
	function transformMatrix (object:DisplayObject):Void;
	function pushMatrix ():Void;
	function popMatrix ():Void;
	function resetMatrix ():Void;
	
	var mvpMatrix (default, null):Matrix;
	var mvpMatrix3D (default, null):Matrix3D;
	
	static function transformMatrixForObject (matrix:Matrix, object:DisplayObject):Void;
	
	function pushBlendMode ():Void;
	function popBlendMode ():Void;
	function resetBlendMode ():Void;
	function applyBlendMode (premultipliedAlpha:Bool):Void;
	
	var blendMode:String;
	
	function batchQuad (quad:Quad, parentAlpha:Float, texture:Texture = null, smoothing:String = null):Void;
	function finishQuadBatch ():Void;
	function nextFrame ():Void;
	
	//static function setDefaultBlendFactors (premultipliedAlpha:Bool):Void;
	static function setBlendFactors (premultipliedAlpha:Bool, blendMode:String = "normal"):Void;
	static function clear (rgb:UInt = 0, alpha:Float = 0.0):Void;
	
	function raiseDrawCount (value:UInt = 1):Void;
	var drawCount (default, null):Int;
	
}