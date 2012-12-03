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

/** This filter is only kept as a sample filter implementation you can learn from.
  * It will be removed with the next official Starling release!
  * As a replacement, use the 'desaturate' method in the ColorMatrixFilter. */
extern class GrayscaleFilter extends FragmentFilter {

	public function new(red:Float = 0.299, green:Float = 0.587, blue:Float = 0.114):Void;
	
}