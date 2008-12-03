package flash.events;

extern class OutputProgressEvent extends Event {
	public static var OUTPUT_PROGRESS(default, null): String;
	public var bytesPending(default, default): Float;
	public var bytesTotal(default, default): Float;
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?bytesPending: Float, ?bytesTotal: Float): Void;
	public override function clone(): Event;
	public override function toString(): String;
}