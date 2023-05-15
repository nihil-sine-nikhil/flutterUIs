// ignore_for_file: non_constant_identifier_names, duplicate_ignore

mixin Assets {
  static AssetSvgs get svgs => AssetSvgs();
  static AssetImages get images => AssetImages();
  static AssetLotties get lotties => AssetLotties();
}

class AssetLotties {
  String location = 'assets/lotties';
  // String get success => '$location/success.json';
}

class AssetSvgs {
  String location = 'assets/svgs';

  String get bottle => '$location/bottle.svg';
}

class AssetImages {
  String location = 'assets/images';

  String get logo => '$location/logo.png';
  String get info => '$location/info.png';
  String get camera => '$location/camera.png';
  String get gallery => '$location/gallery.png';

// background Images
  String bgLocation = 'assets/images/bg_images';

  String get button_circle_bg => '$bgLocation/button_circle_bg.png';
}
