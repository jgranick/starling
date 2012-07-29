package starling.textures;


import flash.geom.Rectangle;
import flash.utils.Dictionary;
import flash.xml.XML;
import flash.Vector;


extern class TextureAtlas {
	
	function new (texture:Texture, atlasXml:XML = null):Void;
	
	function dispose ():Void;
	function getTexture (name:String):Texture;
	function getTextures (prefix:String = ""):Vector<Texture>;
	function getRegion (name:String):Rectangle;
    function getFrame (name:String):Rectangle;
	function addRegion (name:String, region:Rectangle, frame:Rectangle = null):Void;
	function removeRegion (name:String):Void;
	
}