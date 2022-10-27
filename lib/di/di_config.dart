import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, //// default
)
void configureDependencies(String env) => $initGetIt(getIt, environment: env);

abstract class Env {
  static const testing = "TESTING";
  static const development = "DEVELOPMENT";
  static const production = "PRODUCTION";
}

/// Development Environment
const devEnv = Environment(Env.development);

/// Production Environment
const prodEnv = Environment(Env.production);

/// Texting Environment
const testEnv = Environment(Env.testing);
