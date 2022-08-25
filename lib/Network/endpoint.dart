class Endpoints {
  static const String baseUrl = 'https://qc.giftcircle.app';
  static const String frontend = '/api-frontend/';
  static const String backend = '/api-backend/';

    static const String getMyGiftCircles =
      baseUrl + frontend + 'GiftCircleApi/MyGiftCircles?SearchTerm=';
}
