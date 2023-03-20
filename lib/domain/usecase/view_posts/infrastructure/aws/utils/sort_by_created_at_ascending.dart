import 'package:amplify_flutter/amplify_flutter.dart';

int sortByCreatedAtAscending({
  required TemporalDateTime? a,
  required TemporalDateTime? b,
}) {
  if (a == null) return 1;
  if (b == null) return 1;

  return b.compareTo(a);
}
