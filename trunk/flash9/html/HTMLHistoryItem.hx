package flash.html;

extern class HTMLHistoryItem {
	public var isPost(default, null): Bool;
	public var originalUrl(default, null): String;
	public var title(default, null): String;
	public var url(default, null): String;
	public function new(): Void;
}