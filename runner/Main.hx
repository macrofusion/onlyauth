class Main {
	public static function main() {
		if (!ConfigManager.check()) {
			Sys.println("Initializing config");
			ConfigManager.init();
		}
	}
}
