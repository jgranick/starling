package starling.textures;


extern class TextureSmoothing {
	
	static var NONE:String;
	static var BILINEAR:String;
	static var TRILINEAR:String;
	static function isValid (smoothing:String):Bool;
	
}