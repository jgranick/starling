package starling.display;


import flash.Vector;
import flash.geom.Matrix;
import flash.geom.Matrix3D;

import starling.textures.Texture;

extern class QuadBatch extends DisplayObject {
	
	function new ():Void;
	
	function clone ():QuadBatch;
	function renderCustom (mvpMatrix:Matrix, parentAlpha:Float = 1.0, blendMode:String = null):Void;
	function reset ():Void;
	function addImage (image:Image, parentAlpha:Float = 1.0, modelViewMatrix:Matrix = null, blendMode:String = null):Void;
	function addQuad (quad:Quad, parentAlpha:Float = 1.0, texture:Texture = null, smoothing:String = null, modelViewMatrix:Matrix = null, blendMode:String = null):Void;
	function addQuadBatch (quadBatch:QuadBatch, parentAlpha:Float = 1.0, modelViewMatrix:Matrix = null, blendMode:String = null):Void;
	function isStateChange (tinted:Bool, parentAlpha:Float, texture:Texture, smoothing:String, blendMode:String, numQuads:Int = 1):Bool;
	static function compile (container:DisplayObjectContainer, quadBatches:Vector<QuadBatch>):Void;
	
	var numQuads (default, null):Int;
	var tinted (default, null):Bool;
    var texture (default, null):Texture;
    var smoothing (default, null):String;
    var capacity (default, null):Int;
	
}