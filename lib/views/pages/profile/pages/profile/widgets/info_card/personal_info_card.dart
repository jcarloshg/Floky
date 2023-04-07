import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/views/utils/utils.index.dart';
import 'package:floky/views/widgets/widgets.index.dart';
import 'package:flutter/material.dart';

class PersonalInfoCard extends StatelessWidget {
  const PersonalInfoCard({
    super.key,
    required this.globalState,
  });

  final GlobalState globalState;

  @override
  Widget build(BuildContext context) {
    //

    final currentStudent = globalState.getCurrentStudent()!;

    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Titles.subtitle('Información personal 👩‍🎓👨‍🎓'),
        Spacers.spacer10,
        Container(
          width: double.infinity,
          height: width * 0.45,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: _boxDecoration(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Image(
                width: 70,
                height: 70,
                image: AssetImage('assets/profile/avatar.png'),
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    collegeName(currentStudent.collegeName),
                    Column(
                      children: [
                        personalInfo(currentStudent.fullName),
                        const SizedBox(height: 5),
                        personalInfo(currentStudent.email),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        infoWithTitle(
                          'Matrícula',
                          currentStudent.collegeEnrollment,
                        ),
                        infoWithTitle(
                          'ID',
                          currentStudent.id.substring(0, 8),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Text collegeName(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static Text personalInfo(String? title) {
    return Text(
      title ?? '[NOT_TITLE]',
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }

  Row infoWithTitle(String title, String info) {
    Text titleWidget = Text(
      '$title: ',
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );

    Text infoWidget = Text(
      info,
      style: const TextStyle(
        color: Color.fromARGB(255, 56, 72, 80),
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );

    return Row(
      children: [titleWidget, infoWidget],
    );
  }

  BoxDecoration _boxDecoration() => BoxDecoration(
        border: Border.all(
          color: ColorsApp.greyAAAAAA,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      );
}
