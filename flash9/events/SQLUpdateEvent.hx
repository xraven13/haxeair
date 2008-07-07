package flash.events;

extern class SQLUpdateEvent extends Event {
	public static var DELETE(default, null): String;
	public static var INSERT(default, null): String;
	public static var UPDATE(default, null): String;
	
	public var rowID(default, null): Float;
	public var table(default, null): String;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?table: String, ?rowID: Float): Void;
	public override function clone(): Event;
}