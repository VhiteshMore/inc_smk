class StringUtils {

  static String getParseableCountry(String country) {
    if (country.isEmpty) return '';
    return country.toLowerCase().replaceAll(' ', '_');
  }

}