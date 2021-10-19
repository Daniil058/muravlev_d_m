String SYSTEM= '';

void Google(){
  SYSTEM = "android";
}

void Apple(){
  SYSTEM = "ios";
}

void Store(int appId){
  if(SYSTEM == 'android')
    return GooglePlay(appId);
  return AppleAppStore(appId);
}

void Maps(double lat, double lon){
  if(SYSTEM == 'android')
    return GoogleMaps(lat, lon);
  return AppleMaps(lat,lon);
}

void Pay(String cardNumber, String pin){
  if(SYSTEM == 'android')
    return GooglePay(cardNumber, pin);
  return ApplePay(cardNumber, pin);
}


void AppleAppStore(int appId){
  print("appleStore");
}
void AppleMaps(double lat, double lon){
  print("appleMaps");
}
void ApplePay(String cardNumber, String pin){
  print("applePay");
}
void GooglePlay(int appId){
  print("androidGooglePlay");
}
void GoogleMaps(double lat, double lon){
  print("androidGoogleMaps");
}
void GooglePay(String cardNumber, String pin){
  print("androidGooglePay");
}
void main(){
  String OS = 'android';
  if (OS == 'android')
    Google();
  else
    Apple();
  Maps(10.0,10.0);
  Pay('110010', '3435');
  Store(234);
}