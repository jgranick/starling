package starling.utils;


import flash.geom.Matrix;
import flash.geom.Matrix3D;
import flash.geom.Point;
import flash.geom.Rectangle;
import flash.geom.Vector3D;
import flash.Vector;


extern class VertexData {
	
	static var ELEMENTS_PER_VERTEX:Int;
	static var POSITION_OFFSET:Int;
	static var COLOR_OFFSET:Int;
	static var TEXCOORD_OFFSET:Int;
	
	function new (numVertices:Int, premultipliedAlpha:Bool = false):Void;
	
	function clone (vertexID:Int = 0, numVertices:Int = -1):VertexData;
	function copyTo (targetData:VertexData, targetVertexID:Int = 0, vertexID:Int = 0, numVertices:Int = -1):Void;
	function append (data:VertexData):Void;
	function setPosition (vertexID:Int, x:Float, y:Float):Void;
	function getPosition (vertexID:Int, position:Point):Void;
	function setColor (vertexID:Int, color:UInt):Void;
	function getColor (vertexID:Int):UInt;
	function setAlpha (vertexID:Int, alpha:Float):Void;
	function getAlpha (vertexID:Int):Float;
	function setTexCoords (vertexID:Int, u:Float, v:Float):Void;
	function getTexCoords (vertexID:Int, texCoords:Point):Void;
	function translateVertex (vertexID:Int, deltaX:Float, deltaY:Float):Void;
	function transformVertex (vertexID:Int, matrix:Matrix, numVertices:Int = 1):Void;
	function setUniformColor (color:UInt):Void;
	function setUniformAlpha (alpha:Float):Void;
	function scaleAlpha (vertexID:Int, alpha:Float, numVertices:Int = 1):Void;
	function getBounds (transformationMatrix:Matrix = null, vertexID:Int = 0, numVertices:Int = -1, resultRect:Rectangle = null):Rectangle;
	
	var tinted (default, null):Bool;
	
	function setPremultipliedAlpha (value:Bool, updateData:Bool = true):Void;
	
	var premultipliedAlpha (default, null):Bool;
	var numVertices:Int;
	var rawData (default, null):Vector<Float>;
	
}