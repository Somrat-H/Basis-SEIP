class AccessoriesModel{
  int ?id;
  String ?image;
  String ?name;
  String ?productCatagory;
  double ?price;
  bool ?isAvilable;
  int quantity = 1;


  AccessoriesModel({this.isAvilable,this.productCatagory, this.image, this.name, this.price, this.id});

}
List<AccessoriesModel> accessoerisList = [
    AccessoriesModel(
      id: 01,
      name: 'HDMI 5m Cable',
      image: 'https://www.smartdeal.com.bd/public/uploads/all/8I7xB1NmHMrIOspuhrxdiogXkybqXKyT4e27rElr.jpg',
      price: 50,
      productCatagory: 'Accessories',isAvilable: false,

    ),
     AccessoriesModel(
      id: 02,
      name: 'ADAPTER 5m Cable',
      image: 'https://static-01.daraz.com.bd/p/855d5936a7d08c0447610b7cc49e400e.jpg',
      price: 55,
      productCatagory: 'Accessories',isAvilable: true,
    ),
       AccessoriesModel(
      id: 03,
      name: 'ADAPTER 5m Cable',
      image: '',
      price: 55,
      productCatagory: 'Accessories',isAvilable: true,
    ),
       AccessoriesModel(
      id: 04,
      name: 'VGI TO HDMI 5M Cable',
      image: 'https://static-01.daraz.com.bd/p/8d431e3189922432d67fd6f46c018a6b.jpg',
      price: 33,
      productCatagory: 'Accessories',isAvilable: false,
    ),
       AccessoriesModel(
      id: 05,
      name: 'POWER CABLE 5m Cable',
      image: 'https://www.panaromabd.com/wp-content/uploads/2021/05/Power-Cable-Desktop-1.5m-Black-500x500-1.jpg',
      price: 44,
      productCatagory: 'Accessories',isAvilable: true,
    ),
    
    

 ];