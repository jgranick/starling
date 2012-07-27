package starling.core;


import flash.geom.Matrix3D;
import flash.geom.Vector3D;
import starling.display.DisplayObject;
import starling.display.Quad;
import starling.textures.Texture;


extern class RenderSupport {
	
	function new ():Void;
	
	function dispose ():Void;
	function setOrthographicProjection (width:Float, height:Float, near:Float = -1.0, far:Float = 1.0):Void;
	function loadIdentity ():Void;
	function translateMatrix (dx:Float, dy:Float, dz:Float):Void;
	function rotateMatrix (angle:Float, axis:Vector3D = null):Void;
	function scaleMatrix (sx:Float, sy:Float, sz:Float = 1.0):Void;
	function transformMatrix (object:DisplayObject):Void;
	function pushMatrix ():Void;
	function popMatrix ():Void;
	function resetMatrix ():Void;
	
	var mvpMatrix (default, null):Matrix3D;
	
	static function transformMatrixForObject (matrix:Matrix3D, object:DisplayObject):Void;
	
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
	
}