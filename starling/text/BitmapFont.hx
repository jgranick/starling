package starling.text;


import flash.xml.XML;

import starling.display.QuadBatch;
import starling.display.Sprite;
import starling.textures.Texture;


extern class BitmapFont {
	
	static var NATIVE_SIZE:Int = -1;
	static var MINI:String;
	
	function new (texture:Texture = null, fontXml:XML = null):Void;
	
	function dispose ():Void;
	function getChar (charID:Int):BitmapChar;
	function addChar (charID:Int, bitmapChar:BitmapChar):Void;
	function createSprite (width:Float, height:Float, text:String, fontSize:Float = -1, color:UInt = 0xffffff, hAlign:String = "center", vAlign:String = "center", autoScale:Bool = true, kerning:Bool = true):Sprite;
	function fillQuadBatch (quadBatch:QuadBatch, width:Float, height:Float, text:String, fontSize:Float = -1, color:UInt = 0xFFFFFF, hAlign:String = "center", vAlign:String = "center", autoScale:Bool = true, kerning:Bool = true):Void;
	
	var name (default, null):String;
	var size (default, null):Float;
	var lineHeight:Float;
	var smoothing:String;
	var baseline (default, null):Float;
	
}


import starling.text.BitmapChar;


extern class CharLocation {
	
	var char:BitmapChar;
	var scale:Float;
	var x:Float;
	var y:Float;
	
	function new (char:BitmapChar):Void;
	
}