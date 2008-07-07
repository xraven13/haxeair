package flash.desktop;

extern class Clipboard {
	public var formats(default, null): Array<String>;
	public static var generalClipboard(default, null): Clipboard;
	public function new(): Void;
	public function clear(): Void;
	public function clearData(format: String): Void;
	public function getData(format: String, ?transferMode: String): Dynamic;
	public function hasFormat(format: String): Bool;
	public function setData(format: String, data: Dynamic, ?serializable: Bool): Bool;
	public function setDataHandler(format: String, handler: Void -> Dynamic, ?serializable: Bool): Bool;
}