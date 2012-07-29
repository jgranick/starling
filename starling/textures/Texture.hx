package starling.textures;


import flash.display3D.textures.TextureBase;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.geom.Rectangle;
import flash.utils.ByteArray;
import starling.utils.VertexData;


extern class Texture { 
	
	//function new ():Void;
	
	function dispose ():Void;
	static function fromBitmap (data:Bitmap, generateMipMaps:Bool = true, optimizeForRenderTexture:Bool = false, scale:Float = 1):Texture;
	static function fromBitmapData (data:BitmapData, generateMipMaps:Bool = true, optimizeForRenderTexture:Bool = false, scale:Float = 1):Texture;
	static function fromAtfData (data:ByteArray, scale:Float = 1):Texture;
	static function fromTexture (texture:Texture, region:Rectangle = null, frame:Rectangle = null):Texture;
	static function empty (width:Int = 64, height:Int = 64, color:UInt = 0xFFFFFF, optimizeForRenderTexture:Bool = false, scale:Float = -1):Texture;
	function adjustVertexData (vertexData:VertexData, vertexID:Int, count:Int):Void;
	
	var frame (default, null):Rectangle;
	var repeat:Bool;
	var width (default, null):Float;
	var height (default, null):Float;
	var scale (default, null):Float;
	var base (default, null):TextureBase;
	var format (default, null):String;
	var mipMapping (default, null):Bool;
	var premultipliedAlpha (default, null):Bool;
	
}