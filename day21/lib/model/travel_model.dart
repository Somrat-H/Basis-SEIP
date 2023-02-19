class TravelModel{
  String ?placeName;
  String ?travelName;
  String ?image;

  TravelModel(this.image, this.placeName, this.travelName);
}

List<TravelModel> myList = [
  TravelModel('https://www.travelandexplorebd.com/storage/app/public/posts/October2019/dreamstime_xxl_55742473.jpg', 
  'Dhaka, Bangladesh', 'LalBag Kella'),
  TravelModel('http://www.newagebd.net/files/uploaded/City%20problem/Traffic-jam-at-night1.jpg', 'Dhaka Bangladesh', 'Trafic Jam'),
  TravelModel('https://t4.ftcdn.net/jpg/04/94/05/69/360_F_494056979_PyeIPyJMSMtaggCxaKeeuqZAHfa3wygu.jpg', 'BandorBon, Chittagong', 'MeghMela'),
   TravelModel('https://www.travelmate.com.bd/wp-content/uploads/2019/07/Kaptai-Lake-2.jpg', 'Rangamati, Chittagogn', 'Katapi lake'),

];