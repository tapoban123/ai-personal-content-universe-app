import 'package:ai_personal_content_app/objectbox.g.dart';
import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

class ObjectboxConfig {
  late final Store store;

  ObjectboxConfig._create(this.store);

  static Future<ObjectboxConfig> create() async {
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(
      directory: p.join(docsDir.path, "contents-app"),
    );
    return ObjectboxConfig._create(store);
  }
}
