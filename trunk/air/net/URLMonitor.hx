package air.net;

import flash.net.URLRequest;

extern class URLMonitor extends ServiceMonitor {
	public var acceptableStatusCodes(default, default): Array<Int>;
	public var urlRequest(default, null): URLRequest;
	
	public function new(urlRequest: URLRequest, ?acceptableStatusCodes: Array<Int>): Void;
	private override function checkStatus(): Void;
	public override function toString(): String;
}