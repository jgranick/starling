package starling.display;


import flash.geom.Matrix3D;


extern class QuadBatch extends DisplayObject {
	
	function new ():Void;
	
	function clone ():QuadBatch;
	function renderCustom (mvpMatrix:Matrix3D, parentAlpha:Float = 1.0, blendMode:String = null):Void;
	function reset ():Void;
	function addImage (image:Image, parentAlpha:Float = 1.0, modelViewMatrix:Matrix3D = null, blendMode:String = null):Void;
	function addQuad (quad:Quad, parentAlpha:Float = 1.0, texture:Texture = null, smoothing:String = null, modelViewMatrix:Matrix3D = null, blendMode:String = null):Void;
	function isStateChange (quad:Quad, parentAlpha:Float, texture:Texture, smoothing:String, blendMode:String):Bool;
	static function compile (container:DisplayObjectContainer, quadBatches:Vector<QuadBatch>):Void;
	
	var numQuads (default, null):Int;
	
}