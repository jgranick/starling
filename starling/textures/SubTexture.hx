package starling.textures;


import flash.geom.Rectangle;


extern class SubTexture extends Texture {
	
	function new (parentTexture:Texture, region:Rectangle, ownsParent:Bool = false):Void;
	
	var parent (default, null):Texture;
	var ownsParent (default, null):Bool;
	var clipping (default, null):Rectangle;
	
}