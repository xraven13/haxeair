package flash.errors;

extern class EOFError extends IOError {
	public function new(?message: String): Void;
}