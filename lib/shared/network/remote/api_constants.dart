
class ApiConstants{
  static const String apiBaseUrl = 'https://petcare-znql.onrender.com/';//'http://127.0.0.1:3000/';
  static const String login = 'api/users/signin';
  static const String register = 'api/users/signup';
  static const String searchVet = 'api/pety?';
  static const String bookVet = 'api/pety/appointment';
  static const String updateProfile = 'api/users/updateMe';
  static const String dashboardGetAppointments = 'api/dashboard/allAppointments';
  static const String dashboardPetyInformation = 'api/dashboard/petyInformation';
  static const String dashboardChangeAppointmentStatus = 'api/dashboard/changeAppointment';
  static const String dashboardUpdatePetyData = 'api/dashboard/updatePety';
  static const String dashboardTimeTable = 'api/dashboard/timeTable';
  static const String dashboardGetWorkHours = 'api/dashboard/workingHours';
  static const String dashboardGetAllRoles = 'api/dashboard/allRoles';
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

class PetyRolesConstants{
  static const String vet = 'vet';
  static const String groomer = 'groomer';
  static const String petSitter = 'petSitter';
}

class AnimalsConstants{
  static const String dog = 'dog';
  static const String cat = 'cat';
}

class SortByConstants{
  static const String offer = 'offer';
  static const String rate = 'averageRate';
  static const String price = 'price';
}

class AvailabilityConstants{
  static const String today = 'today';
  static const String tomorrow = 'tomorrow';
  static const String anyDay = 'anyDay';
}