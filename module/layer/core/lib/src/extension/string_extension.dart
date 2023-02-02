extension StringExtension on String? {
  bool get isNullOrEmpty {
    return this != null ? this!.isEmpty : true;
  }

  bool get isNotNullOrEmpty {
    return this != null ? this!.isNotEmpty : false;
  }

  bool get isLowerCase {
    return this == this?.toLowerCase();
  }

  bool get isUpperCase {
    return this == this?.toUpperCase();
  }

  bool compareIgnoreCase(String? value) {
    return value?.toLowerCase() == this?.toLowerCase();
  }

  bool compare(String? value) {
    return value == this;
  }

  String? get reverse {
    if (this == null) {
      return null;
    }
    return String.fromCharCodes(
      this!.runes.toList().reversed,
    );
  }
}