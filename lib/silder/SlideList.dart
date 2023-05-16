class SlideList {
  String image = "";
  String title = "";
  String description = "";

  void setImage(String getImage) {
    image = getImage;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDescription(String getDescription) {
    description = getDescription;
  }

  String getImage() {
    return image;
  }

  String getTitle() {
    return title;
  }

  String getDescription() {
    return description;
  }
}

// List created
List<SlideList> getSlides() {
  List<SlideList> slides = [];
  SlideList sliderModel = new SlideList();

  // Item 1
  sliderModel.setImage("assets/splash_1.png");
  sliderModel.setTitle("TOKOTO");
  sliderModel.setDescription("Welcome to Tokoto, Let's Shop");
  slides.add(sliderModel);

  sliderModel = new SlideList();
  // Item 2
  sliderModel.setImage("assets/splash_2.png");
  sliderModel.setTitle("TOKOTO");
  sliderModel.setDescription("Welcome to Tokoto, Let's Shop");
  slides.add(sliderModel);

  sliderModel = new SlideList();

  // Item 3
  sliderModel.setImage("assets/splash_3.png");
  sliderModel.setTitle("TOKOTO");
  sliderModel.setDescription("Welcome to Tokoto, Let's Shop");
  slides.add(sliderModel);

  sliderModel = new SlideList();
  return slides;
}
