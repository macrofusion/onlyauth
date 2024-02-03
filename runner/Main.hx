import sys.io.Process;
import sys.thread.Thread;

class Main {
	public static function main() {
		if (!ConfigManager.check()) {
			Sys.println("Initializing config");
			ConfigManager.init();
		}

		var config = ConfigManager.read();

		Sys.println("Starting database");
		var threadDb = new Process("/usr/lib/onlyauth/modules/db.oam", [], true);
	}
}
