class MenuModel {
  final String name;
  final String price;
  final String weight;
  final String img;

  MenuModel(
      {required this.name,
      required this.price,
      required this.weight,
      required this.img});
}

List<MenuModel> pizzaList = [
  MenuModel(
    name: "Cheese Pizza",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/pizza/ch.jpg",
  ),
  MenuModel(
    name: "Veggie Pizza",
    price: "15 \$",
    weight: "300 gm",
    img: "assets/pizza/ve.jpeg",
  ),
  MenuModel(
    name: "Pepperoni Pizza",
    price: "12 \$",
    weight: "300 gm",
    img: "assets/pizza/pe.jpg",
  ),
  MenuModel(
    name: "Meat Pizza",
    price: "13 \$",
    weight: "300 gm",
    img: "assets/pizza/me.jpg",
  ),
  MenuModel(
    name: "Margherita Pizza",
    price: "11 \$",
    weight: "300 gm",
    img: "assets/pizza/ma.jpeg",
  ),
  MenuModel(
    name: "Supreme Pizza",
    price: "20 \$",
    weight: "300 gm",
    img: "assets/pizza/su.jpeg",
  ),
];

List<MenuModel> burgerList = [
  MenuModel(
    name: "Turkey Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/tu.jpg",
  ),
  MenuModel(
    name: "Classic Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/cl.jpeg",
  ),
  MenuModel(
    name: "Chicken Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/ch.jpeg",
  ),
  MenuModel(
    name: "Cheese Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/che.jpeg",
  ),
  MenuModel(
    name: "Bacon Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/bac.jpeg",
  ),
  MenuModel(
    name: "Kimchi Burger",
    price: "10 \$",
    weight: "250 gm",
    img: "assets/burger/kim.jpeg",
  ),
];

List<MenuModel> pastaList = [
  MenuModel(
    name: "Spaghetti",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/pasta/sp.jpeg",
  ),
  MenuModel(
    name: "Fettuccine",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/pasta/fe.jpeg",
  ),
  MenuModel(
    name: "Tagliatelle",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/pasta/ta.jpg",
  ),
  MenuModel(
    name: "Fusilli",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/pasta/fu.jpeg",
  ),
];

List<MenuModel> soupList = [
  MenuModel(
    name: "Lentil Soup",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/soup/Le.jpg",
  ),
  MenuModel(
    name: "Arabic Creamy Chicken",
    price: "20 \$",
    weight: "250 gm",
    img: "assets/soup/Ar.jpg",
  ),
  MenuModel(
    name: "Bamia (Okra Soup)",
    price: "40 \$",
    weight: "300 gm",
    img: "assets/soup/Ok.jpg",
  ),
  MenuModel(
    name: "Molokhia",
    price: "25 \$",
    weight: "300 gm",
    img: "assets/soup/Mo.jpg",
  ),
  MenuModel(
    name: "Red Lentil and Carrot",
    price: "10 \$",
    weight: "300 gm",
    img: "assets/soup/li.jpg",
  ),
  MenuModel(
    name: "Pumpkin Cream Soup",
    price: "15 \$",
    weight: "320 gm",
    img: "assets/soup/Pu.jpg",
  ),
  MenuModel(
    name: "orzo soup",
    price: "22 \$",
    weight: "400 gm",
    img: "assets/soup/Or.jpg",
  ),
];

List<MenuModel> shawermaList = [
  MenuModel(
    name: "Chicken Shawarma",
    price: "15 \$",
    weight: "150 gm",
    img: "assets/Shawerma/Ch.jpg",
  ),
  MenuModel(
    name: "Beef Shawarma",
    price: "20 \$",
    weight: "150 gm",
    img: "assets/Shawerma/be.jpg",
  ),
  MenuModel(
    name: "Veal Shawarma",
    price: "22 \$",
    weight: "150 gm",
    img: "assets/Shawerma/Ve.jpg",
  ),
  MenuModel(
    name: "Lamb Shawarma",
    price: "25 \$",
    weight: "150 gm",
    img: "assets/Shawerma/la.jpg",
  ),
  MenuModel(
    name: "Turkey Shwarma",
    price: "30 \$",
    weight: "150 gm",
    img: "assets/Shawerma/tu.jpg",
  ),
];

List<MenuModel> grilledList = [
  MenuModel(
    name: "Grilled Shrimp",
    price: "50 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/de.jpg",
  ),
  MenuModel(
    name: "Grilled Stuffed Peppers",
    price: "45 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/St.jpg",
  ),
  MenuModel(
    name: "Steak Kebab Bowls",
    price: "35 \$",
    weight: "250 gm",
    img: "assets/Grilleddishes/ke.jpeg",
  ),
  MenuModel(
    name: "Grilled Teriyaki",
    price: "50 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/te.jpeg",
  ),
  MenuModel(
    name: "Grilled Beer Brats",
    price: "40 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/be.jpeg",
  ),
  MenuModel(
    name: "Grilled Portobello Tacos",
    price: "50 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/ta.jpeg",
  ),
  MenuModel(
    name: "Grilled Persian Chicken",
    price: "60 \$",
    weight: "500 gm",
    img: "assets/Grilleddishes/ch.jpeg",
  ),
  MenuModel(
    name: "Butterflied Grilled",
    price: "55 \$",
    weight: "550 gm",
    img: "assets/Grilleddishes/bu.jpeg",
  ),
];
