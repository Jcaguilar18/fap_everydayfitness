class items {
  int? height;
  int? weight;
  double? _bmi;

  int getHeight(){
    return height!;
  }

  int getWeight(){
    return weight!;
  }
  double get_bmi(){
    return _bmi!;
  }

  void setHeight(int height){
    this.height = height;
  }

  void setWeight(int Weight){
    this.weight = weight;

  }
  void set_bmi(double _bmi){
    this._bmi = _bmi;
  }


}


