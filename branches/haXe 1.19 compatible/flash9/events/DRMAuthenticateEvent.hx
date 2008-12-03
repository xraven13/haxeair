package flash.events;

import flash.net.NetStream;

extern class DRMAuthenticateEvent extends Event {
	public static var AUTHENTICATION_TYPE_DRM(default, null): String;
	public static var AUTHENTICATION_TYPE_PROXY(default, null): String;
	public static var DRM_AUTHENTICATE(default, null): String;
	
	public var authenticationType(default, null): String;
	public var header(default, null): String;
	public var netstream(default, null): NetStream;
	public var passwordPrompt(default, null): String;
	public var urlPrompt(default, null): String;
	public var usernamePrompt(default, null): String;
	
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?header: String, ?userPrompt: String, ?passPrompt: String, 
		?urlPrompt: String, ?authenticationType: String, ?netstream: NetStream): Void;
	public override function clone(): Event;
	public override function toString(): String;
}