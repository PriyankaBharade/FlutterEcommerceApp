class ProductListModal {
  String image = "";
  String title = "";

  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }
}

// List created
List<ProductListModal> getProduct() {
  List<ProductListModal> slides = [];
  ProductListModal sliderModel = new ProductListModal();
  // Item 1
  sliderModel.setImage("assets/ImagePopularProduct2.png");
  sliderModel.setTitle("Flash Deal");
  slides.add(sliderModel);
  sliderModel = new ProductListModal();
  // Item 2
  sliderModel.setImage("assets/ImagePopularProduct3.png");
  sliderModel.setTitle("Bill");
  slides.add(sliderModel);
  sliderModel = new ProductListModal();
  // Item 3
  sliderModel.setImage("assets/ps4_console_white_2.png");
  sliderModel.setTitle("Game");
  slides.add(sliderModel);
  sliderModel = new ProductListModal();
  sliderModel.setImage("assets/ps4_console_blue_4.png");
  sliderModel.setTitle("Daily Gift");
  slides.add(sliderModel);
  sliderModel = new ProductListModal();
  sliderModel.setImage("assets/product1image.png");
  sliderModel.setTitle("More");
  slides.add(sliderModel);
  return slides;
}
