package flash;

extern class UInt {
	public static var MAX_VALUE(default, null): UInt;
	public static var MIN_VALUE(default, null): UInt;
	
	public function new(?num: Dynamic): Void;
	public function toExponential(fractionDigits: UInt): String;
	public function toFixed(fractionDigits: UInt): String;
	public function toPrecision(precision: UInt): String;
	public function toString(radix: UInt): String;
	public function valueOf(): UInt;
}