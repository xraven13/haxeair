package flash.data;

import flash.events.Event;
import flash.net.Responder;
import flash.filesystem.File;

extern class SQLConnection extends flash.events.EventDispatcher {
	public var autoCompact(default, null): Bool;
	public var cacheSize(default, default): UInt;
	public var columnNameStyle(default, default): String;
	public var connected(default, null): Bool;
	public var inTransaction(default, null): Bool;
	public var lastInsertRowID(default, null): Float;
	public var pageSize(default, null): UInt;
	public var totalChanges(default, null): Float;
	
	public function new();
	public override function addEventListener(type: String, listener: Event -> Void, ?useCapture: Bool, 
		?priority: Int, ?useWeakReference: Bool): Void;
	public function analyze(?resourceName: String, ?responder: Responder): Void;
	public function attach(name: String, ?reference: File, ?responder: Responder): Void;
	public function begin(?option: String, ?responder: Responder): Void;
	public function cancel(?responder: Responder): Void;
	public function close(?responder: Responder): Void;
	public function commit(?responder: Responder): Void;
	public function compact(?responder: Responder): Void;
	public function deanalyze(?responder: Responder): Void;
	public function detach(name: String, ?responder: Responder): Void;
	public function getSchemaResult(): SQLSchemaResult;
	public function loadSchema(?type: Class, ?name: String, ?database: String, ?includeColumnSchema: Bool, ?responder: Responder): Void;
	public function open(?reference: File, ?openMode: String, ?autoCompact: Bool, ?pageSize: Int): Void;
	public function openAsync(?reference: File, ?openMode: String, ?responder: Responder, ?autoCompact: Bool, ?pageSize: Int): Void;
	public override function removeEventListener(type: String, listener: Event -> Void, ?useCapture: Bool): Void;
	public function rollback(?responder: Responder): Void;
}