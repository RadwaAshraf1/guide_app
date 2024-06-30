

class ApiConstants {
  static const String apiBaseUrl = "http://smart-guidance-system.first-meeting.net/api/";

  static const String login = "auth/login";
  static const String signup = "auth/register";
  static const String insertBuilding = "building";
  static const String oneBuilding = "building/1";
  static const String allServices = "services";
  static const String insertEmployee = "employee";
  static const String getRegion = "region";
  static const String getProfile = "auth/profile";
  static const String updateProfile = "auth/profile/update";
  static const String insertRoute = "route?source=z&destination=z&next_step=z&direction=1&distance=10";
  static const String insertServices = "service?name=الاستعارة للكتب والمراجع العلميه&place_id=26&description=تقوم المكتبه بتوفير خدمة إستعاره الكتب والمواد المكتبية للطلاب وأعضاء هيئة التدريس والباحثين لاستخدامها لفترة محددة.";
  static const String insertRegion = "region?id=10&name=psudo&x_coordinate=1111&y_coordinate=1111";


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