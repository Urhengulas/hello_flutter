class Question {
  String _text;
  bool _tf;

  Question(this._text, this._tf);

  String getText() {
    return this._text;
  }

  bool check(bool answer) {
    if (answer == this._tf) {
      return true;
    } else {
      return false;
    }
  }
}
