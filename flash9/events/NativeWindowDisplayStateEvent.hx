package flash.events;

extern class NativeWindowDisplayStateEvent extends Event {
	public static var DISPLAY_STATE_CHANGE(default, null): String;
	public static var DISPLAY_STATE_CHANGING(default, null): String;
	
	public var afterDisplayState(default, null): String;
	public var beforeDisplayState(default, null): String;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?beforeDisplayState: String, ?afterDisplayState: String): Void;
	public override function clone(): Event;
	public override function toString(): String;
}