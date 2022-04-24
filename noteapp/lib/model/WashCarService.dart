

class WashCarService{

   var id;
   var carName;
   var carPlate;
   var applicantName;
   var phoneNumber;
   var billType;
   var amount;
   var user;
   var store;
   var create_date;
   var update_date;

     Map<String, dynamic> toJson() => {
        'carName': carName,
        'carPlate': carPlate,
        'applicantName': applicantName,
        'phoneNumber': phoneNumber,
        'billType': billType,
        'amount': amount,
      };

}