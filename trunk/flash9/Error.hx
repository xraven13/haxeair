package flash;

extern class Error {
	public var errorID(default, null): Int;
	public var message: String;
	public var name: String;
	public function new(?message: String, ?id: Int): Void;
	public function getStackTrace(): String;
	public override function toString(): String;
}