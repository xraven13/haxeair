package air.net;

extern class ServiceMonitor extends flash.events.EventDispatcher {
	public var available(default, default): Bool;
	public var lastStatusUpdate(default, null): Date;
	public var pollInterval(default, default): Float;
	public var running(default, null): Bool;
	
	public function new(): Void;
	private function checkStatus(): Void;
	public static function makeJavascriptSubclass(constructorFunction: Dynamic): Void;
	public function start(): Void;
	public function stop(): Void;
	public override function toString(): String;
}