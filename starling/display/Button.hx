package starling.display;


import flash.geom.Rectangle;
import flash.ui.Mouse;
import flash.ui.MouseCursor;

import starling.events.Event;
import starling.events.Touch;
import starling.events.TouchEvent;
import starling.events.TouchPhase;
import starling.text.TextField;
import starling.textures.Texture;
import starling.utils.HAlign;
import starling.utils.VAlign;


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
	var useHandCursor:Bool;
	
}