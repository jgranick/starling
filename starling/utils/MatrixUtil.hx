package starling.utils;


import flash.geom.Matrix;
import flash.geom.Matrix3D;
import flash.geom.Point;


extern class MatrixUtil {
	
	//function new ():Void;
	
	static function convertTo3D (matrix:Matrix, resultMatrix:Matrix3D = null):Matrix3D;
	static function transformCoords (matrix:Matrix, x:Float, y:Float, resultPoint:Point = null):Point;
	static function skew (matrix:Matrix, skewX:Float, skewY:Float):Void;
	static function prependTranslation (matrix:Matrix, tx:Float, ty:Float):Void;
	static function prependScale (matrix:Matrix, sx:Float, sy:Float):Void;
	static function prependRotation (matrix:Matrix, angle:Float):Void;
	
}