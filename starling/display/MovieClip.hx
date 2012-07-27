package starling.display;


import flash.media.Sound;
import starling.animation.IAnimatable;
import starling.textures.Texture;
import flash.Vector;


extern class MovieClip extends Image /*implements IAnimatable*/ {
	
	function new (textures:Vector<Texture>, fps:Float = 12):Void;
	
	function addFrame (texture:Texture, sound:Sound = null, duration:Float = -1):Void;
	function addFrameAt (frameID:Int, texture:Texture, sound:Sound = null, duration:Float = -1):Void;
	function removeFrameAt (frameID:Int):Void;
	function getFrameTexture (frameID:Int):Texture;
	function setFrameTexture (frameID:Int, texture:Texture):Void;
	function getFrameSound (frameID:Int):Sound;
	function setFrameSound (frameID:Int, sound:Sound):Void;
	function getFrameDuration (frameID:Int):Float;
	function setFrameDuration (frameID:Int, duration:Float):Void;
	function play ():Void;
	function pause ():Void;
	function stop ():Void;
	
	var isComplete (default, null):Bool;
	var totalTime (default, null):Float;
	var numFrames (default, null):Int;
	var loop:Bool;
	var currentFrame:Int;
	var fps:Float;
	var isPlaying (default, null):Bool;
	
}