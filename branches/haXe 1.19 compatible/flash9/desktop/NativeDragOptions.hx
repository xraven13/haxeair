package flash.desktop;

extern class NativeDragOptions {
	public var allowCopy(default, default): Bool;
	public var allowLink(default, default): Bool;
	public var allowMove(default, default): Bool;
	public function new(): Void;
	public function toString(): String;
}