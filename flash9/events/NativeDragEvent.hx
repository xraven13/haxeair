package flash.events;

import flash.desktop.NativeDragOptions;
import flash.desktop.Clipboard;
import flash.display.InteractiveObject;

extern class NativeDragEvent extends MouseEvent {
	public static var NATIVE_DRAG_COMPLETE(default, null): String;
	public static var NATIVE_DRAG_DROP(default, null): String;
	public static var NATIVE_DRAG_ENTER(default, null): String;
	public static var NATIVE_DRAG_EXIT(default, null): String;
	public static var NATIVE_DRAG_OVER(default, null): String;
	public static var NATIVE_DRAG_START(default, null): String;
	public static var NATIVE_DRAG_UPDATE(default, null): String;
	
	public var allowedActions: NativeDragOptions;
	public var clipboard: Clipboard;
	public var dropAction: String;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?localX: Float, ?localY: Float, 
		?relatedObject: InteractiveObject, ?clipboard: Clipboard, ?allowedActions: NativeDragOptions, ?dropAction: String, 
		?controlKey: Bool, ?altKey: Bool, ?shiftKey: Bool, ?commandKey: Bool): Void;
	public override function clone(): Event;
	public override function toString(): String;	
}