package flash.events;

import flash.errors.SQLError;

extern class SQLErrorEvent extends ErrorEvent {
	public static var ERROR(default, null): String;
	
	public var error(default, null): SQLError;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?error: SQLError): Void;
	public override function clone(): Event;
	public override function toString(): String;
}