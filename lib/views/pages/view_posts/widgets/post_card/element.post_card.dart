part of 'widget.post_card.dart';

BoxDecoration _boxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(
      color: ColorsApp.greyAAAAAA,
      width: 1,
    ),
  );
}

Widget postCardTitle(String title) => Flexible(
      flex: 1,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey.shade900,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

Widget postCardAuthor(String authorFullName) => Text(
      authorFullName,
      style: TextStyle(
        color: Colors.blueGrey.shade900,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );

Widget postCardCreatedAt() {
  DateFormat dateFormat = DateFormat("dd, MMMM yyyy");
  String string = dateFormat.format(DateTime.now());
  return Text(
    string,
    style: TextStyle(
      color: Colors.blueGrey.shade900,
      fontSize: 13,
      fontWeight: FontWeight.w300,
    ),
  );
}
