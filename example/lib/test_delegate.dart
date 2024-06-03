import 'package:dynamic_online_intl/language/generated/l10n.dart';
import 'package:dynamic_intl/dynamic_intl.dart';

class AppLocalizationDynamicDelegate
    extends BaseLocalizationsDynamicDelegate<S> {
  const AppLocalizationDynamicDelegate();

  static const AppLocalizationDynamicDelegate delegate =
      AppLocalizationDynamicDelegate();

  @override
  Future<S> loadS() {
    final instance = S();

    return Future.value(instance);
  }
}
