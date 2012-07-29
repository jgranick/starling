package starling.core;


import flash.display3D.Context3D;
import flash.display3D.Program3D;
import flash.display.Stage3D;
import flash.geom.Rectangle;
import flash.utils.ByteArray;

import starling.animation.Juggler;
import starling.display.DisplayObject;
import starling.display.Sprite;
import starling.display.Stage;
import starling.events.EventDispatcher;
import starling.events.ResizeEvent;
import starling.events.TouchPhase;


extern class Starling extends EventDispatcher {
	
	static var VERSION:String = "1.2";
	
	function new (rootClass:Dynamic, stage:flash.display.Stage, viewPort:Rectangle = null, stage3D:Stage3D = null, renderMode:String = "auto", profile:String = "baselineConstrained"):Void;
	
	function nextFrame ():Void;
	function advanceTime (passedTime:Float):Void;
	function render ():Void;
	function dispose ():Void;
	function makeCurrent ():Void;
	function start ():Void;
	function stop ():Void;
	function registerProgram (name:String, vertexProgram:ByteArray, fragmentProgram:ByteArray):Void;
	function deleteProgram (name:String):Void;
	function getProgram (name:String):Program3D;
	function hasProgram (name:String):Bool;
	
	var isStarted (default, null):Bool;
	//var juggler (default, null):Juggler;
	//var context (default, null):Context3D;
	var simulateMultitouch:Bool;
	var enableErrorChecking:Bool;
	var antiAliasing:Int;
	var viewPort:Rectangle;
	//var contentScaleFactor (default, null):Float;
	var nativeOverlay (default, null):Sprite;
	var showStats:Bool;
	
	function showStatsAt (hAlign:String = "left", vAlign:String = "top"):Void;
	
	var stage (default, null):Stage;
	var stage3D (default, null):Stage3D;
	var nativeStage (default, null):flash.display.Stage;
	
	var root (default, null):DisplayObject;
	var shareContext:Bool;
	
	static var current (default, null):Starling;
	static var context (default, null):Context3D;
	static var juggler (default, null):Juggler;
	static var contentScaleFactor (default, null):Float;
	static var multitouchEnabled:Bool;
	static var handleLostContext:Bool;
	
}