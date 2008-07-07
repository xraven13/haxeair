package flash.events;

extern class SQLEvent extends Event {
	public static var ANALYZE(default, null): String;
	public static var ATTACH(default, null): String;
	public static var BEGIN(default, null): String;
	public static var CANCEL(default, null): String;
	public static var CLOSE(default, null): String;
	public static var COMMIT(default, null): String;
	public static var COMPACT(default, null): String;
	public static var DEANALYZE(default, null): String;
	public static var DETACH(default, null): String;
	public static var OPEN(default, null): String;
	public static var RESULT(default, null): String;
	public static var ROLLBACK(default, null): String;
	public static var SCHEMA(default, null): String;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool): Void;
	public override function clone(): Event;
}