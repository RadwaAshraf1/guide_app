

class ApiConstants {
  static const String apiBaseUrl = "http://smart-guidance-system.first-meeting.net/api/";

  static const String login = "login";
  static const String signup = "register";
  static const String insertBuilding = "building";
  static const String insertEmployee = "employee";
  static const String insertServices = "service?name=الاستعارة للكتب والمراجع العلميه&place_id=26&description=تقوم المكتبه بتوفير خدمة إستعاره الكتب والمواد المكتبية للطلاب وأعضاء هيئة التدريس والباحثين لاستخدامها لفترة محددة.";


}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}