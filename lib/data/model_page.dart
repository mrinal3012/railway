
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
  StationModel({this.firstStationName,this.secondStationName,this.amount});
}
List<StationModel> stationList=[
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara North",amount: 0),
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara Center",amount: 20),
StationModel(firstStationName: "Uttara North",secondStationName: "Uttara South",amount: 20),
StationModel(firstStationName: "Uttara North",secondStationName: "Pallabi",amount: 30),
StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-11",amount: 30),
StationModel(firstStationName: "Uttara North",secondStationName: "Mirpur-10",amount: 40),
  StationModel(firstStationName: "Uttara North",secondStationName: "Kazipara",amount: 40),
StationModel(firstStationName: "Uttara North",secondStationName: "Shewrapara",amount: 50),
StationModel(firstStationName: "Uttara North",secondStationName: "Agargaon",amount: 60),

  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara North",amount: 20),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara Center",amount: 0),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Uttara South",amount: 20),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Pallabi",amount: 20),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-11",amount: 30),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Mirpur-10",amount: 30),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Kazipara",amount: 40),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Shewrapara",amount: 40),
  StationModel(firstStationName: "Uttara Center",secondStationName: "Agargaon",amount: 50),

  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara North",amount: 30),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara Center",amount: 20),
  StationModel(firstStationName: "Pallabi",secondStationName: "Uttara South",amount: 20),
  StationModel(firstStationName: "Pallabi",secondStationName: "Pallabi",amount: 0),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-11",amount: 20),
  StationModel(firstStationName: "Pallabi",secondStationName: "Mirpur-10",amount: 20),
  StationModel(firstStationName: "Pallabi",secondStationName: "Kazipara",amount: 20),
  StationModel(firstStationName: "Pallabi",secondStationName: "Shewrapara",amount: 30),
  StationModel(firstStationName: "Pallabi",secondStationName: "Agargaon",amount: 30),
];