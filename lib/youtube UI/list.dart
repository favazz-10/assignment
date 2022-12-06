class videomodel {
  String? thumbnail;
  String? videoTitle;
  String? videoDuration;
  String? avatar;
  String? channel;
  String? views;
  String? date;

  videomodel(this.thumbnail, this.videoTitle, this.videoDuration, this.avatar,
      this.channel, this.views, this.date);
}

List<videomodel> items = [
  videomodel('assets/images/react.jpg', 'React in 100 seconds!', '13.14',
      'assets/images/fireship.jpg', 'Fireship', '96K views', '2 years ago'),
  videomodel('assets/images/flutter1.jpg', 'Flutter Story App UI Concept - Speed Code', '22.11',
      'assets/images/flutteravatar2.png', 'Devify', '76K views', '1 years ago'),
  videomodel('assets/images/goat.jpg', 'Thank you, Leo Messi, the Greatest Of All Time | Official video', '30.19',
      'assets/images/fcb.jpg', ' FCBarcelona', '29M views', '1 month ago'),
  videomodel('assets/images/mwtbs.jpg', 'Unboxing a phone from Space.', '7.14',
      'assets/images/mwtbossavatar3.jpg', 'Mrwhosetheboss', '900K views', '11 hours ago'),
];
