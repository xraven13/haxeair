package flash.data;

import flash.utils.ByteArray;

extern class EncryptedLocalStore {
	public static function getItem(name: String): ByteArray;
	public static function removeItem(name: String): Void;
	public static function reset(): Void;
	public static function setItem(name: String, data: ByteArray, ?stronglyBound: Bool): Void;
}