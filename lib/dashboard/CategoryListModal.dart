class CategoryListModal {
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
List<CategoryListModal> getCategory() {
  List<CategoryListModal> slides = [];
  CategoryListModal sliderModel = new CategoryListModal();
  // Item 1
  sliderModel.setImage("assets/flash_icon.svg");
  sliderModel.setTitle("Flash Deal");
  slides.add(sliderModel);
  sliderModel = new CategoryListModal();
  // Item 2
  sliderModel.setImage("assets/bill_icon.svg");
  sliderModel.setTitle("Bill");
  slides.add(sliderModel);
  sliderModel = new CategoryListModal();
  // Item 3
  sliderModel.setImage("assets/game_icon.svg");
  sliderModel.setTitle("Game");
  slides.add(sliderModel);
  sliderModel = new CategoryListModal();
  sliderModel.setImage("assets/gift_icon.svg");
  sliderModel.setTitle("Daily Gift");
  slides.add(sliderModel);
  sliderModel = new CategoryListModal();
  sliderModel.setImage("assets/gift_icon.svg");
  sliderModel.setTitle("More");
  slides.add(sliderModel);
  return slides;
}
