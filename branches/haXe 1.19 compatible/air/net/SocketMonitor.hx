package air.net;

extern class SocketMonitor extends ServiceMonitor {
	public var host(default, null): String;
	public var port(default, null): Int;
	
	public function new(host: String, port: Int): Void;
	private override function checkStatus(): Void;
	public override function toString(): String;
}