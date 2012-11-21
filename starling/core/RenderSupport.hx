package starling.core;


import flash.geom.Matrix;
import flash.geom.Matrix3D;
import flash.geom.Rectangle;
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
	
	/** Configures the back buffer on the current context3D. By using this method, Starling
	 *  can store the size of the back buffer and utilize this information in other methods
	 *  (e.g. the scissor rectangle property). */
	function configureBackBuffer(width:Int, height:Int, antiAlias:Int,  enableDepthAndStencil:Bool):Void;
        
	// scissor rect
	
	/** The scissor rectangle can be used to limit rendering in the current render target to
	 *  a certain area. This method expects the rectangle in stage coordinates
	 *  (different to the context3D method with the same name, which expects pixels).
	 *  Pass <code>null</code> to turn off scissoring.
	 *  CAUTION: not a copy -- use with care! */ 
	var scissorRectangle(default, default):Rectangle;
	
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