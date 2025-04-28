//fungsi
int luasPersegiPanjang() {
  int angka1 = 10;
  int angka2 = 2;

  return angka1 * angka2;
}

String ganjilOrGenap(angka) {
  if (angka % 2 == 0) {
    return "genap";
  } else if (angka % 2 == 1) {
    return "ganjil";
  } else {
    return "bukan angka!";
  }
}

void main() {
  int hasil1 = luasPersegiPanjang();
  print("luas persegi panjang: $hasil1");

  String hasil2 = ganjilOrGenap(8);
  print("hasil: $hasil2");
}
