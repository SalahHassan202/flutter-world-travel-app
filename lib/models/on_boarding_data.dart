class OnBoardingData {
  final String image;
  final String text;

  OnBoardingData({required this.image, required this.text});
}

List<OnBoardingData> onBoardingList = [
  OnBoardingData(
    image: 'assets/on_boarding_pic_1.png',
    text: 'Discover the world\n with us',
  ),
  OnBoardingData(
    image: 'assets/on_boarding_pic_2.png',
    text: 'To the most famous\n places of the world',
  ),
  OnBoardingData(
    image: 'assets/on_boarding_pic_3.png',
    text: 'With cheap and\n affordable prices',
  ),
];
