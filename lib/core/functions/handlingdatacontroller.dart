import 'package:fast_delivery/core/class/statusrequest.dart';

handlingData(response){
  // lehna gotlo ken reponse men nawa3 StatusRequest
  if( response is StatusRequest){
      return response;
  }else{
      return StatusRequest.success;
  }
}