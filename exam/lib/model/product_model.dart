class ProductModel{
  int ?id;
  String ?image;
  String ?name;
  String ?productCatagory;
  double ?price;

  int quantity = 1;


  ProductModel({this.productCatagory, this.image, this.name, this.price, this.id});

}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    productCatagory: 'Headphones',
    image: 'https://gadgetstudiobd.com/wp-content/uploads/2020/08/1833abe30f696cdacc26b88ec8ead1a9_1_-20.jpg',
    name: 'BASEUS ENCOK D01S WIRELESS',
    price:199,
  ),
   ProductModel(
    id: 2,
    productCatagory: 'Headphones',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnyYM6rdEog3DCqRKGB34I3_vPcg81A1RoIA&usqp=CAU',
    name: 'LENOVO HD800 WIRELESS',
    price: 188,
  ),
   ProductModel(
    id: 3,
    productCatagory: 'Headphones',
    image: 'https://diamu.com.bd/wp-content/uploads/2022/10/Oraimo-OEB-H89D-BoomPop-Over-Ear-Wireless-Headset.jpg',
    name: 'ORAIMO OEB-H89D WIRELESS',
    price: 169,
  ),
   ProductModel(
    id: 4,
    productCatagory: 'Headphones',
    image: 'https://m.media-amazon.com/images/I/41wxRcOxVsL.jpg',
    name: 'BEATS SOLO 3 WIRELESS',
    price: 149,
  ),
  ProductModel(
    id: 5,
    productCatagory: 'Headphones',
    image: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f0e2da9f-f646-4104-8a87-2760b66720d2/court-legacy-mens-shoes-75ljqX.png',
    name: 'Nike Court Legacy',
    price: 70,
  ),
  ProductModel(
    id: 6,
    productCatagory: 'Headphones',
    image: 'https://media1.popsugar-assets.com/files/thumbor/sQ-SiqTDqmbuItbmajd5syxiiGE/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2020/10/22/932/n/1922507/a32bb6485f91f826f09c24.85330641_Screenshot_2/i/Heyday-Wireless-On-Ear-Headphones.png',
    name: 'POPSUGAR TECH WIRELESS',
    price: 220,
  ),
 
  

];

 