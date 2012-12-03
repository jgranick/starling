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

import flash.display3D.Context3D;
import flash.display3D.Context3DProgramType;
import flash.display3D.Program3D;

import starling.textures.Texture;
import starling.utils.Color;

extern class BlurFilter extends FragmentFilter {
	
	public function new(blurX:Float = 1, blurY:Float = 1, resolution:Float = 1):Void;

	public static function createDropShadow(distance:Float=4.0, angle:Float=0.785, color:UInt=0x0, alpha:Float=0.5, blur:Float=1.0, resolution:Float = 0.5):BlurFilter;

	public static function createGlow(color:UInt = 0xffff00, alpha:Float = 1.0, blur:Float = 1.0, resolution:Float = 0.5):BlurFilter;


	public function setUniformColor(enable:Bool, color:UInt = 0x0, alpha:Float = 1.0):Void;

	public var blurX(default, default):Float;
	public var blurY(default, default):Float;
}