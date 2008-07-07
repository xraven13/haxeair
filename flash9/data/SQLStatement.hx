package flash.data;

import flash.net.Responder;

extern class SQLStatement extends flash.events.EventDispatcher {
	public var executing(default, null): Bool;
	public var itemClass(default, default): Class;
	public var parameters(default, null): Dynamic;
	public var sqlConnection(default, default): SQLConnection;
	public var text(default, default): String;
	
	public function new(): Void;
	public function cancel(): Void;
	public function clearParameters(): Void;
	public function execute(?prefetch: Int, ?responder: Responder): Void;
	public function getResult(): SQLResult;
	public function next(?prefetch: Int, ?responder: Responder): Void;
}