package flash.errors;

extern class SQLError extends Error {
	public var details(default, null): String;
	public var operation(default, null): String;
	
	public function new(operation: String, ?details: String, ?message: String, ?id: Int): Void;
	public function toString(): String;
}