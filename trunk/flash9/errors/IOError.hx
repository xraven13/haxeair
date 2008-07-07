package flash.errors;

extern class IOError extends Error {
	public function new(?message: String): Void;
}