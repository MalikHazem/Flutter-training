class API {
  static String baseUrl =
      'https://faitball.com/public/api/v1/academy';

  static String login() {
    return baseUrl + '/auth/login';
  }

  static String register() {
    return baseUrl + '/auth/register';
  }

}