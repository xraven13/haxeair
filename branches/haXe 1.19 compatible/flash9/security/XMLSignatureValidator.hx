package flash.security;

extern class XMLSignatureValidator extends flash.events.EventDispatcher {
	public var digestStatus(default, null): String;
	public var identityStatus(default, null): String;
	public var referencesStatus(default, null): String;
	public var revocationCheckSetting(default, default): String;
	public var signerCN(default, null): String;
	public var signerDN(default, null): String;
	public var signerExtendedKeyUsages(default, null): Array<Float>;
	public var signerTrustSettings(default, null): Array<String>;
	public var uriDereferencer(default, default): IURIDereferencer;
	public var useSystemTrustStore(default, default): Bool;
	public var validityStatus(default, null): String;

	public function new(): Void;
	public function addCertificate(cert: flash.utils.ByteArray, trusted: Bool): Dynamic;
	public function verify(signature: flash.xml.XML): Void;
}