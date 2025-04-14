enum RateType {
  one(rate: 1),
  two(rate: 2),
  three(rate: 3),
  four(rate: 4),
  five(rate: 5);

  const RateType({required this.rate});

  final double rate;

  String get name => '${rate.toInt()}';

  bool get hasStar => true;

  static RateType range(double rate) {
    switch (rate) {
      case >= 5.0:
        return RateType.five;
      case >= 4.0:
        return RateType.four;
      case >= 3.0:
        return RateType.three;
      case >= 2.0:
        return RateType.two;
      default:
        return RateType.one;
    }
  }
}
