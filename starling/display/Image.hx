package starling.display;


import flash.display.Bitmap;
import flash.geom.Point;
import starling.textures.Texture;


extern class Image extends Quad {
	
	function new (texture:Texture):Void;
	
	static function fromBitmap (bitmap:Bitmap):Image;
	function readjustSize():Void;
	function setTexCoords (vertexID:Int, coords:Point):Void;
	function getTexCoords (vertexID:Int, resultPoint:Point = null):Point;
	
	var texture:Texture;
	var smoothing:String;
	
}