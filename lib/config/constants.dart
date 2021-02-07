class Constants {
  final isLoggedIn = false;
  static const String APP_NAME = 'FIRINCIM';
  static const String SPLASH_ANIM_PATH = 'bread-guy.json';
  static const String THANKS_ANIM_PATH = 'check-purple.json';
  static const String EATING_ANIM_PATH = 'bagel-boy.json';
  static const String BASE_URL =
      'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/';
}

List<Map<String, String>> dataOnboarding = [
  {
    'lottie': 'assets/json/lottie_onboard.json',
    'title': 'Askıda Ekmek Nedir?',
    'text':
        'Askıda ekmek projesi ile sizin karnınız doyarken başkasının karnını da doyurabilirsiniz. Üstelik uygulamayı kullanmak çok kolay.'
  },
  {
    'lottie': 'assets/json/lottie_onboard.json',
    'title': 'Bağışçı İçin',
    'text':
        'Bağışçı uygulama ekranından klayca bağış yapabilir. İstediğiniz kadar ekmeği seçip herhangi bir şehirdeki fırında askıya alabilirsiniz.'
  },
  {
    'lottie ': 'assets/json/lottie_onboard.json',
    'title': 'Fırıncı İçin ',
    'text': 'Fırıncı uygulama sayesinde ekmekleri kolayca askıda tutabilir '
  },
];
