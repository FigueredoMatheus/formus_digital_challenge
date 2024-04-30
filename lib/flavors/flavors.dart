enum Flavor {
  dev,
  homo,
  prod,
}

class FlavorsSettings {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static bool get isDev => FlavorsSettings.appFlavor == Flavor.dev;
  static bool get isHomo => FlavorsSettings.appFlavor == Flavor.homo;
  static bool get isProd => FlavorsSettings.appFlavor == Flavor.prod;

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Formus Challenge Dev';
      case Flavor.homo:
        return 'Formus Challenge Homo';
      case Flavor.prod:
        return 'Formus Challenge';
      default:
        return 'title';
    }
  }

  static String get appSubdomain {
    switch (appFlavor) {
      case Flavor.homo:
        return 'homo';
      case Flavor.prod:
        return 'prod';
      case Flavor.dev:
      default:
        return 'dev';
    }
  }

  static String get baseUrl {
    switch (appFlavor) {
      case Flavor.homo:
        return '';
      case Flavor.prod:
        return '';
      case Flavor.dev:
      default:
        return '';
    }
  }
}
