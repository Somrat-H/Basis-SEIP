class ComapnyModel{
  String ?imageUrl;
  String ?comapanyName;
  String ?title;
  String ?address;

  ComapnyModel(this.address, this.comapanyName, this.imageUrl, this.title);

  static List<ComapnyModel> comapanyInfo(){
    return [
      ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design'),
      ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design'),
      ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design'),

    ];
  }
}