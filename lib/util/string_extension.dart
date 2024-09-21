extension SvgExtension on String {
  String get toSVG {
    return 'assets/svg/$this.svg';
  }
}
