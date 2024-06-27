import 'package:intl/intl.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class AppFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
  }

  static formatPhoneNumber(String phoneNumber) {
    // The Kenyan Number 0768241008
    if (phoneNumber.length == 10) {
      var firstSubstring = phoneNumber.substring(0, 3);
      var secondSubstring = phoneNumber.substring(3, 6);
      var thirdSubstring = phoneNumber.substring(6, 9);
      var fourthSubstring = phoneNumber.substring(9);
      return '$firstSubstring+$secondSubstring+$thirdSubstring+$fourthSubstring';
    } else if (phoneNumber.length == 9) {
      return phoneNumber;
    } else {
      return phoneNumber;
    }
  }

  // static String internationalPhoneNumberFormater(String phoneNumber) {
  //   var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');
  //   // Extracting the code form the digits only
  //   String countryCode = '+${digitsOnly.substring(0, 2)}';
  //   digitsOnly = digitsOnly.substring(2);

  //   // Adding the remainign Digits with proper formating
  //   final formatedNumber = StringBuffer();
  //   formatedNumber.write('($countryCode) ');

  //   int i = 0;
  //   while (i < digitsOnly.length) {
  //     int groupLength = 2;
  //     if (i == 0 && countryCode == '+1') {
  //       groupLength = 3;
  //     }
  //   }
  // }
  Future<String> formatKenyanNumber(String phoneNumber) async {
    PhoneNumber number = PhoneNumber(isoCode: 'KE', phoneNumber: phoneNumber);
    String formattedNumber = await PhoneNumber.getParsableNumber(number);
    return formattedNumber;
  }
}
