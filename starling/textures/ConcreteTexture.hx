package starling.textures;

import flash.display3D.textures.TextureBase;;

extern class ConcreteTexture extends Texture {
	
	function new (base:TextureBase, format:String, width:Int, height:Int, mipMapping:Bool, premultipliedAlpha:Bool, optimizedForRenderTexture:Bool = false, scale:Float = 1):Void;
	
	function restoreOnLostContext (data:Dynamic):Void;
	
	var optimizedForRenderTexture (default, null):Bool;
	
}