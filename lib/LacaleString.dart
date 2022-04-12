import 'package:get/get.dart';

class LocaleString extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': 'Welcome to Proto Coders Point',
          'title': 'Flutter Language - Localization',
          'sub': 'Subscribe Now',
          'changelang': 'Change Language'
        },
        'hi_IN': {
          'hello': 'नमस्ते दुनिया',
          'message': 'प्रोटो कोडर प्वाइंट में आपका स्वागत है',
          'title': 'स्पंदन भाषा - स्थानीयकरण',
          'subscribe': 'सब्सक्राइब',
          'changelang': 'भाषा बदलो'
        },
        'kn_IN': {
          'hello': 'ಹಲೋ ವರ್ಲ್ಡ್',
          'message': 'ಪ್ರೋಟೋ ಕೋಡರ್ ಪಾಯಿಂಟ್‌ಗೆ ಸುಸ್ವಾಗತ',
          'title': 'ಬೀಸು ಭಾಷೆ - ಸ್ಥಳೀಕರಣ',
          'subscribe': 'ವಂತಿಗೆ ಕೊಡು',
          'changelang': 'ಭಾಷೆ ಬದಲಿಸಿ'
        },
        'gj_IN': {
          'hello': 'હેલો વર્લ્ડ',
          'message': 'પ્રોટો કોડર્સ પોઈન્ટ પર આપનું સ્વાગત છે',
          'title': 'ફ્લટર ભાષા - સ્થાનિકીકરણ',
          'subscribe': 'અત્યારે જ નામ નોંધાવો',
          'changelang': 'ભાષા બદલો'
        }
      };
}
