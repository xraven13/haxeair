package flash.events;

import flash.display.InteractiveObject;

extern class MouseEvent extends Event {
	var altKey : Bool;
	var buttonDown : Bool;
	var ctrlKey : Bool;
	var delta : Int;
	var localX : Float;
	var localY : Float;
	var relatedObject : flash.display.InteractiveObject;
	var shiftKey : Bool;
	var stageX(default,null) : Float;
	var stageY(default,null) : Float;
	//#if air
	//public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?localX: Float, ?localY: Float, ?relatedObject: InteractiveObject, ?ctrlKey: Bool, ?altKey: Bool, ?shiftKey: Bool, ?buttonDown: Bool, ?delta: Int, ?commandKey: Bool, ?controlKey: Bool, ?clickCount: Int): Void;	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?localX: Float, ?localY: Float, ?relatedObject: InteractiveObject, ?ctrlKey: Bool, ?altKey: Bool, ?shiftKey: Bool, ?buttonDown: Bool, ?delta: Int, ?commandKey: Bool, ?controlKey: Bool, ?clickCount: Int): Void;	
	//#end
	function updateAfterEvent() : Void;
	static var CLICK : String;
	static var DOUBLE_CLICK : String;
	static var MOUSE_DOWN : String;
	static var MOUSE_MOVE : String;
	static var MOUSE_OUT : String;
	static var MOUSE_OVER : String;
	static var MOUSE_UP : String;
	static var MOUSE_WHEEL : String;
	static var ROLL_OUT : String;
	static var ROLL_OVER : String;
	//#if air
	public var clickCount(default, null): Int;
	public var commandKey(default, default): Bool;
	public var controlKey(default, default): Bool;
	public static var CONTEXT_MENU(default, null): String; 
	public static var MIDDLE_CLICK(default, null): String;
	public static var MIDDLE_MOUSE_DOWN(default, null): String;
	public static var MIDDLE_MOUSE_UP(default, null): String;
	public static var RIGHT_CLICK(default, null): String;
	public static var RIGHT_MOUSE_DOWN(default, null): String;
	public static var RIGHT_MOUSE_UP(default, null): String;
	//#end
}
