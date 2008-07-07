package flash.events;

extern class DRMErrorEvent extends ErrorEvent {
	public static var DRM_ERROR(default, null): String;	
	
	public var subErrorID(default, null): Int;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?inErrorDetail: String, ?inErrorCode: Int, ?insubErrorID: Int): Void;
	public override function clone(): Event;
	public override function toString(): String;
}