part of 'widgets.dart';

class EmpWidget extends StatelessWidget {
  final EmpModel emp;

  const EmpWidget({
    super.key,
    required this.emp,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
      color: AppColors.bgSurfaceSecondary,
      shadowColor: AppColors.appPrimaryColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(color: AppColors.border, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: Sizes.s90,
            height: Sizes.s90,
            decoration: BoxDecoration(
              color: AppColors.appSecondaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: AppColors.border, width: 1),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.adjust,
                    color: emp.status == 'Sick'
                        ? AppColors.textErrorColor
                        : AppColors.green,
                    size: Sizes.s90,
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 0),
                  child: Container(
                    height: Sizes.s68,
                    width: Sizes.s68,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      emp.avatar!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                emp.id! + " | " + emp.firstName!,
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: Sizes.s14,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              SizedBox(
                height: Sizes.s16,
                width: Sizes.s16,
              ),
              Text(
                emp.location!,
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: Sizes.s10,
                  color: AppColors.textPrimaryColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Container(
              height: 20,
              width: 20,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Container(
                color: emp.status == 'sick'
                    ? AppColors.textErrorColor
                    : AppColors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
