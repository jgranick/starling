package starling.textures;


import flash.display3D.Context3D;
import flash.display3D.textures.TextureBase;
import flash.geom.Rectangle;

import starling.core.RenderSupport;
import starling.core.Starling;
import starling.display.DisplayObject;
import starling.display.Image;
import starling.errors.MissingContextError;
import starling.utils.VertexData;
import starling.utils.getNextPowerOfTwo;


extern class RenderTexture extends Texture {
	
	function new (width:Int, height:Int, persistent:Bool = true, scale:Float = -1):Void;
	
	function draw (object:DisplayObject, antiAliasing:Int = 0):Void;
	function drawBundled (drawingBlock:Dynamic, antiAliasing:Int = 0):Void;
	function clear ():Void;
	
	var isPersistent (default, null):Bool;
	
}