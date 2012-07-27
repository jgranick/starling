package starling.text;


import starling.display.Image;
import starling.textures.Texture;


extern class BitmapChar {
	
	function new (id:Int, texture:Texture, xOffset:Float, yOffset:Float, xAdvance:Float):Void;
	
	function addKerning (charID:Int, amount:Float):Void;
	function getKerning (charID:Int):Float;
	function createImage ():Image;
	
	var charID (default, null):Int;
	var xOffset (default, null):Float;
	var yOffset (default, null):Float;
	var xAdvance (default, null):Float;
	var texture (default, null):Texture;
	var width (default, null):Float;
	var height (default, null):Float;
	
}