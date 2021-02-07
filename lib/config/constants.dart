import 'package:flutter/material.dart';

class Constants {
  final isLoggedIn = false;
  static const String APP_NAME = 'FIRINCIM';
  static const String SPLASH_ANIM_PATH = 'bread-guy.json';
  static const String THANKS_ANIM_PATH = 'check-purple.json';
  static const String EATING_ANIM_PATH = 'bagel-boy.json';
  static const String HOLD_HAND_ANIM_PATH = 'hold-my-hand.json';
  static const String ONE_MORE_ANIM_PATH = 'heart-like-wishlist.json';
  static const String GIVE_BREAD_ANIM_PATH = 'lottie_onboard.json';
  static const String BASE_URL =
      'https://flutterhackathon21-breaddonate-default-rtdb.firebaseio.com/';
  static const Color Scaffold_Background_Color = Color(0xffE1E6EB);
}

List<Map<String, String>> dataOnboarding = [
  {
    'lottie': Constants.GIVE_BREAD_ANIM_PATH,
    'title': 'Askıda Ekmek Nedir?',
    'text':
        'Askıda ekmek projesi ile sizin karnınız doyarken başkasının karnını da doyurabilirsiniz. Üstelik uygulamayı kullanmak çok kolay.'
  },
  {
    'lottie': Constants.HOLD_HAND_ANIM_PATH,
    'title': 'Bağışçı İçin',
    'text':
        'Bağışçı uygulama ekranından klayca bağış yapabilir. İstediğiniz kadar ekmeği seçip herhangi bir şehirdeki fırında askıya alabilirsiniz.'
  },
  {
    'lottie': Constants.ONE_MORE_ANIM_PATH,
    'title': 'Fırıncı İçin ',
    'text': 'Fırıncı uygulama sayesinde ekmekleri kolayca askıda tutabilir '
  },
];
