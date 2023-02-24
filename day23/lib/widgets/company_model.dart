class ComapnyModel{
  String ?imageUrl;
  String ?comapanyName;
  String ?title;
  String ?address;
  String ?fullTime;
  List<String> requirements;

  ComapnyModel(this.address, this.comapanyName, this.imageUrl, this.title, this.fullTime, this.requirements);

  static List<ComapnyModel> comapanyInfo(){
    return [
      ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design', 'Full Time', 
      
        [
          'Build intuitive, engaging and progressive \nuser interactions for mobile apps',
          'Delivers well-defined features of small to \nmedium complexity on a regular basis.',
          'Debug and fix issues in development,\ntesting, and production.',
          'Participate in software design for\nfeatures and bug fixes.',
        ]
      ),
      ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design', 'Full Time', 
      
        [
          'Build intuitive, engaging and progressive \nuser interactions for mobile apps',
          'Delivers well-defined features of small to \nmedium complexity on a regular basis.',
          'Debug and fix issues in development,\ntesting, and production.',
          'Participate in software design for\nfeatures and bug fixes.',
        ]
      ),
       ComapnyModel('417 Marian Plaza,Texax, United States', 'Google LLC', 'images/google_logo.png', 'Product Design', 'Full Time', 
      
        [
          'Build intuitive, engaging and progressive\n user interactions for mobile apps',
          'Delivers well-defined features of small to \nmedium complexity on a regular basis.',
          'Debug and fix issues in development,\ntesting, and production.',
          'Participate in software design for\nfeatures and bug fixes.',
        ]
      ),


    ];
  }
}