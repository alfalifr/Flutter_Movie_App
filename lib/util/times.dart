import 'package:dicoding_movie_app/util/type_util.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

Future<String> formatTime(DateTime date, { String localeName = "id_ID" }) async {
  await initializeDateFormatting(localeName);
  return DateFormat.yMMMMd(localeName).format(date);
}

String syncFormatTimeFromStr(String datestr, { String localeName = "id_ID" }) =>
  syncFormatTime(parseDate(datestr), localeName: localeName);
String syncFormatTime(DateTime date, { String localeName = "id_ID" }) {
  //initializeDateFormatting("id_ID");
  try {
    //prind("Platform.localeName = ${Platform.localeName}");
    //prind("window.locales = ${window.locales}");
    return DateFormat.yMMMMd(localeName).format(date);
  } catch(e) {
    return DateFormat.yMMMMd().format(date);
  }
}