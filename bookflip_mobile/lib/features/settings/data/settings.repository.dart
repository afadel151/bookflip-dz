import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings.repository.g.dart';

class SettingsRepository {
  SettingsRepository();

  
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(Ref ref) {
  return SettingsRepository();
}


