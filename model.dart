class Mealz{
  String? strCategory;
  String? strCategoryThumb;
  String? strCategoryDescription;

  Mealz.fromJson(Map<String,dynamic> categories){
    strCategory= categories['strCategory'];
    strCategoryThumb= categories['strCategoryThumb'];
    strCategoryDescription= categories['strCategoryDescription'];
  }
}