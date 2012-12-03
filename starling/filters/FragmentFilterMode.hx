// =================================================================================================
//
//	Starling Framework
//	Copyright 2012 Gamua OG. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package starling.filters;

@:abstract extern class FragmentFilterMode {
	
	/** @private */
	
	private function new():Void;
	
	public static var BELOW:String;// = "below";
	public static var REPLACE:String;// = "replace";
	public static var ABOVE:String;// = "above";
}