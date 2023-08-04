
class Model{
  String ? name;
  String ?image;
  Model({this.name,this.image});
}
List<Model> historyList =[
  Model(image: "images/profile.png",name: "Profile"),
  Model(image: "images/history.png",name: "Booking History"),
  Model(image: "images/cancle.png",name: "Cancel Tickets"),
  Model(image: "images/booking.jpg",name: "All Booked Tickets"),
  Model(image: "images/custom.png",name: "Customer Support"),
  Model(image: "images/logout.png",name: "Logout"),
];

class StationModel{
  String ? firstStationName;
  String ? secondStationName;
  int ? amount;
  int count=1;
  int ? ticket;
  StationModel({this.firstStationName,this.secondStationName,this.amount,this.ticket});
}
List<StationModel> stationList=[
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara North",amount: 0,ticket:03164565 ),
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara Center",amount: 20,ticket:03164566),
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara South",amount: 20,ticket:03164567),
StationModel(firstStationName: "Uttara North",secondStationName: "Pallabi",amount: 30,ticket:03164568),
StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-11",amount: 30,ticket:03164569),
StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-10",amount: 40,ticket:03164570),
  StationModel(firstStationName: "Uttara North",secondStationName: "Kazipara",amount: 40,ticket:03164571),
StationModel(firstStationName: "Uttara North",secondStationName: "Shewrapara",amount: 50,ticket:03164572),
StationModel(firstStationName: "Uttara North",secondStationName: "Agargaon",amount: 60,ticket:03164573),

  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara North",amount: 20,ticket:03164574),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara Center",amount: 0,ticket:03164575),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara South",amount: 20,ticket:03164576),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Pallabi",amount: 20,ticket:03164577),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-11",amount: 30,ticket:03164578),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-10",amount: 30,ticket:03164579),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Kazipara",amount: 40,ticket:03164580),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Shewrapara",amount: 40,ticket:03164581),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Agargaon",amount: 50,ticket:03164582),

  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara North",amount: 30,ticket:03164583),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara Center",amount: 20,ticket:03164584),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara South",amount: 20,ticket:03164585),
  StationModel(firstStationName: "Pallabi",secondStationName: "Pallabi",amount: 0,ticket:03164586),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-11",amount: 20,ticket:03164587),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-10",amount: 20,ticket:03164588),
  StationModel(firstStationName: "Pallabi",secondStationName: "Kazipara",amount: 20,ticket:03164589),
  StationModel(firstStationName: "Pallabi",secondStationName: "Shewrapara",amount: 30,ticket:03164590),
  StationModel(firstStationName: "Pallabi",secondStationName: "Agargaon",amount: 30,ticket:03164591),
];

class Payment{
  String ? name;
  String ? image;
  Payment({this.name , this.image});
}
List<Payment> paymentList=[
  Payment(name: "bKash",image: "images/bkash.webp"),
  Payment(name: "Upay",image: "images/upay.png"),
  Payment(name: "Rocket",image: "images/rocket.png"),
  Payment(name: "Nagad",image: "images/nagad.png"),
  Payment(name: "Credit / Debit Card",image: "images/mastercard.png"),
  Payment(name: "VISA",image: "images/visa.png"),
];
class Station{
  String ? name;
  int ? id ;
  int ? amount;
  Station({this.name,this.amount,this.id});
}
List<Station> stationNameList=[
  Station(id:1 ,name: "Uttara North",amount:0 ),
  Station(id:2 ,name: "Uttara Center",amount:0 ),
  Station(id:3 ,name: "Uttara South",amount:0 ),
  Station(id:4 ,name: "Pallabi",amount:0 ),
  Station(id:5 ,name: "Mirpur-11",amount:0 ),
  Station(id:6 ,name: "Mirpur-10",amount:0 ),
  Station(id:7 ,name: "Kazipara",amount:0 ),
  Station(id:8 ,name: "Shewrapara",amount:0 ),
  Station(id:9 ,name: "Agargaon",amount:0 ),
];