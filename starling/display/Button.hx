package starling.display;


import flash.geom.Rectangle;
import starling.textures.Texture;


extern class Button extends DisplayObjectContainer {
	
	function new (upState:Texture, text:String = "", downState:Texture = null):Void;
	
	var scaleWhenDown:Float;
	var alphaWhenDisabled:Float;
	var enabled:Bool;
	var text:String;
	var fontName:String;
	var fontSize:Float;
	var fontColor:UInt;
	var fontBold:Bool;
	var upState:Texture;
	var downState:Texture;
	var textBounds:Rectangle;
	
	/** The vertical alignment of the text on the button. */
	var textVAlign:String;
	/** The horizontal alignment of the text on the button. */
    var textHAlign:String;   
}