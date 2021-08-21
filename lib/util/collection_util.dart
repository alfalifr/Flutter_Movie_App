List<T> collectFirst<T>({
  required Iterable<T> iterable,
  int? count,
}) {
  if(count == null) {
    return iterable.toList();
  }
  final res = <T>[];
  final itr = iterable.iterator;
  for(int i = 0; i < count; i++) {
    if(!itr.moveNext()) break;
    res.add(itr.current);
  }
  return res;
}