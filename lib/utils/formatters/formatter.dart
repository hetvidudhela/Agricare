import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_IN', symbol: '₹').format(amount);
  }

  static String formatPhoneNumber(String phonenumber) {
    //Assume 10 digit IN phone number format (+91) 1234567890

    // Clean the phone number by removing non-digit characters
    String cleaned = phonenumber.replaceAll(RegExp(r'\D'), '');

    // Check if the cleaned number has 10 digits
    if (cleaned.length == 10) {
      return '+91 $cleaned'; // Return in the format +91 1234567890
    } else if (cleaned.length == 13 && cleaned.startsWith('91')) {
      // Check for the format with the country code already included
      return '+${cleaned.substring(0, 2)} ${cleaned.substring(2)}'; // Return +91 1234567890
    }

    // If the format does not match, return the original input or throw an error
    throw const FormatException(
        'Invalid phone number format. It should be either 10 digits or 13 digits with country code.');
  }
}
