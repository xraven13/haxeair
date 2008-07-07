package flash.events;

extern class ScreenMouseEvent extends MouseEvent {
	public var screenX(default, null): Float;
	public var screenY(default, null): Float;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?screenX: Float, ?screenY: Float, 
		?ctrlKey: Bool, ?altKey: Bool, ?shiftKey: Bool, ?buttonDown: Bool, ?commandKey: Bool, ?controlKey: Bool): Void;
	public override function clone(): Event;
	public override function toString(): String;
}