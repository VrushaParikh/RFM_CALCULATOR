class CalBrain {
  CalBrain({this.waist, this.height});

  final int height;
  final int waist;

  double _rfm;

  String calRFM(String gen) {
    if (gen == 'Gender.male') {
      _rfm = 64 - (20 * (height / waist));
      return _rfm.toStringAsFixed(2);
    } else if (gen == 'Gender.female') {
      _rfm = 76 - (20 * (height / waist));
      return _rfm.toStringAsFixed(2);
    }
  }

  String getResult(String gen) {
    if (gen == 'Gender.male') {
      if (_rfm >= 2 && _rfm <= 5) {
        return 'Essential Fat';
      } else if (_rfm >= 6 && _rfm <= 13) {
        return 'Athletics';
      } else if (_rfm >= 14 && _rfm <= 17) {
        return 'Fitnesss';
      } else if (_rfm >= 18 && _rfm <= 24) {
        return 'Average';
      } else if (_rfm >= 25) {
        return 'Obesse';
      } else {
        return 'Enter Correct value';
      }
    } else if (gen == 'Gender.female') {
      if (_rfm >= 10 && _rfm <= 13) {
        return 'Essential Fat';
      } else if (_rfm >= 14 && _rfm <= 20) {
        return 'Athletics';
      } else if (_rfm >= 21 && _rfm <= 24) {
        return 'Fitnesss';
      } else if (_rfm >= 25 && _rfm <= 31) {
        return 'Average';
      } else if (_rfm >= 32) {
        return 'Obesse';
      } else {
        return 'Enter Correct value';
      }
    }
  }

  String interpret(String gen) {
    if (gen == 'Gender.male') {
      if (_rfm >= 2 && _rfm <= 5) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are underweight..Try eating more healhty food';
      } else if (_rfm >= 6 && _rfm <= 13) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are underweight..Eat more healhty food';
      } else if (_rfm >= 14 && _rfm <= 17) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are perfectly fit and healthy..';
      } else if (_rfm >= 18 && _rfm <= 24) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You have Average health..Eat less..';
      } else if (_rfm >= 25) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are obesse. Do workout twice a day and eat less';
      } else {
        return 'Enter Correct value';
      }
    } else if (gen == 'Gender.female') {
      if (_rfm >= 10 && _rfm <= 13) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are underweight..Try eating more healhty food';
      } else if (_rfm >= 14 && _rfm <= 20) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are underweight..Eat more healhty food';
      } else if (_rfm >= 21 && _rfm <= 24) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are perfectly fit and healthy..';
      } else if (_rfm >= 25 && _rfm <= 31) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You have Average health..Eat less..';
      } else if (_rfm >= 32) {
        return 'ACE Health Guidelines for Body Fat Percentage Ranges (Caliper) : You are obesse. Do workout twice a day and eat less';
      } else {
        return 'Enter Correct value';
      }
    }
  }
}
