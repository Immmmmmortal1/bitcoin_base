import 'package:blockchain_utils/numbers/big_rational.dart';

class BtcUtils {
  static BigInt toSatoshi(String decimal) {
    BigRational dec = BigRational.parseDecimal(decimal);
    dec = dec * BigRational(BigInt.from(10).pow(8));
    return dec.toBigInt();
  }
  static String toBitcoin(BigInt satoshi) {
    BigRational dec = BigRational(satoshi);
    dec = dec / BigRational(BigInt.from(10).pow(8));
    return dec.toStringAsFixed(8); // 确保有8位小数
  }
}
