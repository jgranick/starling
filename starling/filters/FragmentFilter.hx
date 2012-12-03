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

import com.adobe.utils.AGALMiniAssembler;

import flash.display3D.Context3D;
import flash.display3D.Context3DProgramType;
import flash.display3D.Context3DVertexBufferFormat;
import flash.display3D.IndexBuffer3D;
import flash.display3D.Program3D;
import flash.display3D.VertexBuffer3D;
import flash.errors.IllegalOperationError;
import flash.geom.Matrix;
import flash.geom.Rectangle;
import flash.system.Capabilities;
import flash.utils.getQualifiedClassName;

import starling.core.RenderSupport;
import starling.core.Starling;
import starling.core.starling_internal;
import starling.display.BlendMode;
import starling.display.DisplayObject;
import starling.display.Image;
import starling.display.QuadBatch;
import starling.display.Stage;
import starling.errors.AbstractClassError;
import starling.errors.MissingContextError;
import starling.events.Event;
import starling.textures.Texture;
import starling.utils.MatrixUtil;
import starling.utils.RectangleUtil;
import starling.utils.VertexData;
import starling.utils.getNextPowerOfTwo;

/** The FragmentFilter class is the base class for all filter effects.
*
*  <p>All other filters of this package extend this class. You can attach them to any display
*  object through the 'filter' property.</p>
*
*  <p>Create your own filters by extending this class.</p>
*/
extern class FragmentFilter {

	@:protected private var PMA:Bool;// = true;
	@:protected private var STD_VERTEX_SHADER:String;
	@:protected private var STD_FRAGMENT_SHADER:String;
	
	/** The ID of the vertex buffer attribute storing the vertex position. */
	@:protected var mVertexPosAtID:int = 0;

	/** The ID of the vertex buffer attribute storing the texture coordinates. */
	@:protected var mTexCoordsAtID:int = 1;

	/** The ID (sampler) of the input texture (containing the output of the previous pass). */
	@:protected var mBaseTextureID:int = 0;

	/** The ID of the first register of the MVP matrix constant (a 4x4 matrix). */
	@:protected var mMvpConstantID:int = 0;


	public function new(numPasses:Int = 1, resolution:Float = 1.0):Void;

	public function dispose():Void;
	
	public function render(object:DisplayObject, support:RenderSupport, parentAlpha:Float):Void;
	
	// protected methods
	
	@:protected private function createPrograms():Void;

	@:protected private function activate(pass:int, context:Context3D, texture:Texture):Void;

	@:protected private function deactivate(pass:int, context:Context3D, texture:Texture):Void;

	@:protected private function assembleAgal(fragmentShader:String = null, vertexShader:String = null):Program3D;

	// cache
	public function cache():Void;

	public function clearCache():Void;

	
	// properties
	public var isCached(default, null):Bool;
	
	public var resolution(default, default):Float;
	
	public var mode(default, default):String;
	
	public var offsetX(default, default):Float;
	public var offsetY(default, default):Float;
	
	@:protected private var marginX(default, default):Float;
	@:protected private var marginY(default, default):Float;
	
	@:protected private var numPasses(default, default):Int;
}