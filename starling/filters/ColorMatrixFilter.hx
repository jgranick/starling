// =================================================================================================
//
//	Starling Framework
//	Copyright 2012 Gamua OG. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

// Most of the color transformation math was taken from the excellent ColorMatrix class by
// Mario Klingemann: http://www.quasimondo.com/archives/000565.php -- THANKS!!!

package starling.filters;

import flash.display3D.Context3D;
import flash.display3D.Context3DProgramType;
import flash.display3D.Program3D;
import flash.geom.Matrix;
import flash.Vector;

import starling.textures.Texture;

extern class ColorMatrixFilter extends FragmentFilter {
	
	public function new(matrix:Vector<Float> = null):Void;

	// color manipulation

	/** Inverts the colors of the filtered objects. */
	public function invert():Void;

	/** Changes the saturation. Typical values are in the range (-1, 1).
	 *  Values above zero will raise, values below zero will reduce the saturation.
	 *  '-1' will produce a grayscale image. */
	public function adjustSaturation(sat:Float):Void;

	/** Changes the contrast. Typical values are in the range (-1, 1).
	 *  Values above zero will raise, values below zero will reduce the contrast. */
	public function adjustContrast(value:Float):Void;

	/** Changes the brightness. Typical values are in the range (-1, 1).
	 *  Values above zero will make the image brighter, values below zero will make it darker.*/
	public function adjustBrightness(value:Float):Void;

	/** Changes the hue of the image. Typical values are in the range (-1, 1). */
	public function adjustHue(value:Float):Void;
	
	/** Changes the filter matrix back to the identity matrix. */
	public function reset():Void;
	
	/** Concatenates the current matrix with another one. */
	public function concat(matrix:Vector<Float>):Void;

	// properties
	public var matrix(default, default):Vector<Float>;
}