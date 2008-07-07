package flash.events;

extern class DRMStatusEvent extends Event {
	public static var DRM_STATUS(default, null): String;
	
	public var detail(default, null): String;
	public var isAnonymous(default, null): Bool;
	public var isAvailableOffline(default, null): Bool;
	public var offlineLeasePeriod(default, null): UInt;
	public var policies(default, null): Dynamic;
	public var voucherEndDate(default, null): Date;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?inPolicies: Dynamic, ?inDetail: String, ?inAvailableOffline: Bool, 
		?inAnonymous: Bool, ?inVoucherEndDate: Int, ?inOfflineLeasePeriod: Int): Void;
	public override function clone(): Event;
	public override function toString(): String;
}