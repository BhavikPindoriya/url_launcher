import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class Utils {
  static setToken(String token) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.setString("token", token);
  }

  static setname(String name) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.setString("name", name);
  }

  static setemail(String email) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.setString("email", email);
  }

  static setmobile(String mobile) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.setString("mobile", mobile);
  }

  static Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('token');
  }

  static Future<String?> getename() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }

  static Future<String?> getemail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('email');
  }

  static Future<String?> getmobile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('mobile');
  }

  static removeToken() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("token");
  }

  static Future<void> openappwebView(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not lanch $url');
    }
  }
}
