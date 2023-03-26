class PostResponse {
  PostResponse({
     this.id,
    this.title,
    // this.course,
    // this.cuisine,
    // this.mainIngredient,
    // this.description,
    // this.source,
    this.url,
    // this.urlHost,
    this.prepTime,
    // this.cookTime,
    // this.totalTime,
    // this.servings,
    // this.yield,
    this.ingredients,
    this.directions,
    // this.tags,
    // this.rating,
    // this.publicUrl,
    this.photoUrl,
    // this.private,
    // this.nutritionalScoreGeneric,
    this.calories,
    this.fat,
    this.cholesterol,
    // this.sodium,
    this.sugar,
    this.carbohydrate,
    this.fiber,
    this.protein,
    this.cost,
  });

  PostResponse.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    // course = json['course'];
    // cuisine = json['cuisine'];
    // mainIngredient = json['mainIngredient'];
    // description = json['description'];
    // source = json['source'];
    url = json['url'];
    // urlHost = json['urlHost'];
    prepTime = json['prepTime'];
    // cookTime = json['cookTime'];
    // totalTime = json['totalTime'];
    // servings = json['servings'];
    // yield = json['yield'];
    ingredients = json['ingredients'];
    directions = json['directions'];
    // tags = json['tags'];
    // rating = json['rating'];
    // publicUrl = json['publicUrl'];
    photoUrl = json['photoUrl'];
    // private = json['private'];
    // nutritionalScoreGeneric = json['nutritionalScoreGeneric'];
    calories = json['calories'];
    fat = json['fat'];
    cholesterol = json['cholesterol'];
    // sodium = json['sodium'];
    sugar = json['sugar'];
    carbohydrate = json['carbohydrate'];
    fiber = json['fiber'];
    protein = json['protein'];
    cost = json['cost'];
  }
  int? id;
  String? title;
  // String? course;
  // String? cuisine;
  // String? mainIngredient;
  // String? description;
  // String? source;
  String? url;
  // String? urlHost;
  int? prepTime;
  // int? cookTime;
  // int? totalTime;
  // int? servings;
  // int? yield;
  String? ingredients;
  String? directions;
  // String? tags;
  // String? rating;
  // String? publicUrl;
  String? photoUrl;
  // String? private;
  // String? nutritionalScoreGeneric;
  dynamic? calories;
  String? fat;
  String? cholesterol;
  // String? sodium;
  String? sugar;
  String? carbohydrate;
  String? fiber;
  String? protein;
  String? cost;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    // map['course'] = course;
    // map['cuisine'] = cuisine;
    // map['mainIngredient'] = mainIngredient;
    // map['description'] = description;
    // map['source'] = source;
    // map['url'] = url;
    // map['urlHost'] = urlHost;
    map['prepTime'] = prepTime;
    // map['cookTime'] = cookTime;
    // map['totalTime'] = totalTime;
    // map['servings'] = servings;
    // map['yield'] = yield;
    map['ingredients'] = ingredients;
    map['directions'] = directions;
    // map['tags'] = tags;
    // map['rating'] = rating;
    // map['publicUrl'] = publicUrl;
    map['photoUrl'] = photoUrl;
    // map['private'] = private;
    // map['nutritionalScoreGeneric'] = nutritionalScoreGeneric;
    map['calories'] = calories;
    map['fat'] = fat;
    map['cholesterol'] = cholesterol;
    // map['sodium'] = sodium;
    map['sugar'] = sugar;
    map['carbohydrate'] = carbohydrate;
    map['fiber'] = fiber;
    map['protein'] = protein;
    map['cost'] = cost;
    return map;
  }
}
