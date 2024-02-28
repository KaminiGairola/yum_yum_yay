class RecipeModel
{
  String? appLabel;
  String? appImgUrl;
  double appCalories;
  String? appUrl;

  RecipeModel({
   this.appLabel = "LABEL",
   this.appImgUrl = "IMAGE",
    this.appCalories = 0.000,
    this.appUrl = "URL"
});
  factory RecipeModel.fromMap(Map recipe)
  {
    return RecipeModel(
      appLabel: recipe["label"],
      appImgUrl: recipe["image"],
      appCalories: recipe["calories"],
      appUrl: recipe["url"]
    );
  }
}