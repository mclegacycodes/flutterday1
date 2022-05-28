class Recipe{
  String label;
  String imageurl;

  Recipe(this.label,this.imageurl);
  static List<Recipe> samples = [
    Recipe('Food 1', 'https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__340.jpg'),
    Recipe('Food 2', 'https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062__340.jpg'),
    Recipe('Food 3', 'https://cdn.pixabay.com/photo/2016/08/11/08/04/vegetables-1584999__340.jpg'),
    Recipe('Food 4', 'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_960_720.jpg')
  ];

}