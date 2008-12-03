package flash.display;

extern class Stage extends DisplayObjectContainer {
	var align : StageAlign;
	var focus : InteractiveObject;
	var frameRate : Float;
	var quality : StageQuality;
	var scaleMode : StageScaleMode;
	var showDefaultContextMenu : Bool;
	var stageFocusRect : Bool;
	var stageHeight : Int;
	var stageWidth : Int;

	function invalidate() : Void;
	function isFocusInaccessible() : Bool;

	// FP9 - fullscreen support
	var displayState : StageDisplayState;
	var fullScreenHeight(default,null) : UInt;
	var fullScreenSourceRect : flash.geom.Rectangle;
	var fullScreenWidth(default,null) : UInt;

	#if flash10
	var enableColorCorrection : Bool;
	#end
	//#if air
	public var nativeWindow(default, null): NativeWindow;
	public function assignFocus(objectToFocus: InteractiveObject, direction: String): Void;
	//#end
}
