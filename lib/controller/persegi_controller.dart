import 'package:get/get.dart';

class PersegiController extends GetxController {
  int sisi = 8;
  final hasil = "".obs;
  final kel = "".obs;

  void hitungLuas() {
    int hitung = sisi * sisi;
    hasil.value = "Hasil perhitungan dari $sisi x $sisi = $hitung";
  }

    void hitungKeliling() {
      int kel = sisi * 4;
      hasil.value =
      "Hasil perhitungan dari $sisi x 4 = $kel";
    }
  }
