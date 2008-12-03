package flash.errors;

extern class IllegalOperationError extends Error {
	public function new (?message: String): Void;
}