package com.adobe.utils;


import flash.utils.ByteArray;


extern class AGALMiniAssembler {
	
	var verbose:Bool;
	var error (default, null):String;
	var agalcode (default, null):ByteArray;
	
	function new (debugging:Bool = false):Void;
	
	function assemble (mode:String, source:String):ByteArray;
	
}


extern class OpCode {
	
	var emitCode (default, null):UInt;
	var flags (default, null):UInt;
	var name (default, null):String;
	var numRegister (default, null):UInt;
	
	function new (name:String, numRegister:UInt, emitCode:UInt, flags:UInt):Void;
	
	function toString ():String;
	
}


extern class Register {
	
	var emitCode (default, null):UInt;
	var longName (default, null):String;
	var flags (default, null):UInt;
	var name (default, null):String;
	var range (default, null):UInt;
	
	function new (name:String, longName:String, emitCode:UInt, range:UInt, flags:UInt):Void;
	
	function toString ():String;
	
}


extern class Sampler {
	
	var flag (default, null):UInt;
	var mask (default, null):UInt;
	var name (default, null):String;
	
	function new (name:String, flag:UInt, mask:UInt):Void;
	
	function toString ():String;
	
}