import 'package:flutter/material.dart';

/// Widget-Method that adds Branding to current Page. It returns a Widget.
Widget buildBranding() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Text(
          'Spielerisch Sprachen lernen',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.indigoAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    ],
  );
}

/// Widget-Method that adds SubName to current Page. It returns a Widget.
Widget buildSubName(String subName) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0.0, 60.0, 0.0, 10.0),
    child: Text(
      subName,
      style: const TextStyle(
        /// TextStyle Properties
        fontSize: 24.0,
        color: Colors.indigoAccent,
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
      ),
    ),
  );
}

/// Widget-Method that adds the current Date.
Widget buildDate(created) {
  return Text(
    ('Erstellt am: ' + created.day.toString() + '.' + created.month.toString() + '.' + created.year.toString()),
    style: const TextStyle(
      fontSize: 13.0,
      color: Colors.black,
    ),
  );
}

/// Weitget-Method that adds the current Date compact.
Widget buildDateCompact(created) {
  return Text(
    ('Erstellt am: \n' + created.day.toString() + '.' + created.month.toString() + '.' + created.year.toString()),
    style: const TextStyle(
      fontSize: 13.0,
      color: Colors.black,
    ),
  );
}

/// Adds: Universal AppBar Style
AppBar universalAppBar(String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Colors.grey[300],
    foregroundColor: Colors.indigoAccent,
    elevation: 0.0,

    /// Adds "Logout"-Button in upper left corner
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
      ),
    ),

    /// TODO: Change with StakeStories Logo
  );
}

AppBar universalAppBarWhiteBackground(String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: Colors.indigoAccent,
    elevation: 0.0,
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        height: 3.0,
      ),
    ),
  );
}

/// Widget-Method that adds a FloatingActionButton to current Page. It returns a FloatingActionButton-Widget.
FloatingActionButton universalFloatingActionButton(BuildContext context, String destinationRoute) {
  return FloatingActionButton(
    backgroundColor: Colors.indigoAccent,
    foregroundColor: Colors.white,
    onPressed: () {
      /// Navigate to a new submenu to create a new project
      Navigator.of(context).pushNamed(destinationRoute);
    },
    child: const Icon(Icons.add),
  );
}

/// Widget-Method that adds a custom SuccessDialog to current Page.
void universalSuccessDialog(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: Colors.grey[300],
          child: SizedBox(
            width: 300,
            height: 274,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Erfolg!',
                  style: TextStyle(
                    /// TextStyle Properties
                    fontSize: 24.0,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    //fontFamily: 'Montserrat',
                  ),
                ),
                Image.asset(
                  'assets/checkmark_blue_fast.gif',
                  repeat: ImageRepeat.noRepeat,
                ),
              ],
            ),
          ),
          insetAnimationDuration: const Duration(milliseconds: 800),
        );
      });
}

/// Adds: Universal CircularProgressIndicator
CircularProgressIndicator universalCircularProgressIndicator() {
  return CircularProgressIndicator(
    backgroundColor: Colors.grey[200],
    color: Colors.indigoAccent,
    strokeWidth: 3,
  );
}

/// Adds: Universal Text for App
Text universalTextStyle(String textName, double fontSize) {
  return Text(
    textName,
    style: TextStyle(
      fontSize: fontSize,
      fontFamily: 'Montserrat',
      //fontWeight: FontWeight.bold,
    ),
  );
}

/// Adds: AlertDialog Title TextStyle
Text universalAlertDialogTitle(String title) {
  return Text(
    title,
    style: const TextStyle(
      color: Colors.redAccent,
      //fontFamily: 'Montserrat',
    ),
  );
}

/// Adds: AlertDialog SubTitle
Text universalAlertDialogSubTitle(String subTitle) {
  return Text(
    subTitle,
    style: const TextStyle(
      color: Colors.black,
      //fontFamily: 'Montserrat',
    ),
  );
}

/// Adds: AlerDialog TextButton Text
Text universalAlertDialogTextButton(String buttonName) {
  return Text(
    buttonName,
    style: const TextStyle(
      color: Colors.indigoAccent,
      fontSize: 14,
      //fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
    ),
  );
}

/// Adds: ElevatedButton Style for Projectlist
ButtonStyle universalElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    alignment: Alignment.centerLeft,
    primary: Colors.white,
    fixedSize: const Size(275.0, 50.0), // DO NOT CHANGE SIZE UNLESS YOU KNOW WHAT YOU DO!
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16.0)),
      //borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), bottomLeft: Radius.circular(16.0)),
    ),
    textStyle: const TextStyle(
      //fontFamily: 'Montserrat',
    ),
  );
}

/// Adds: ElevatedButton Style for Projectlist
ButtonStyle universalElevatedButtonStyleForStory() {
  return ElevatedButton.styleFrom(
    alignment: Alignment.centerLeft,
    primary: Colors.white,
    fixedSize: const Size(325.0, 100.0), // DO NOT CHANGE SIZE UNLESS YOU KNOW WHAT YOU DO!
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), bottomLeft: Radius.circular(16.0)),
    ),
    textStyle: const TextStyle(
      //fontFamily: 'Montserrat',
    ),
  );
}

/// Adds: ElevatedButton Style in App-Color
ButtonStyle universalElevatedButtonStyleForTheme() {
  return ElevatedButton.styleFrom(
    primary: Colors.indigoAccent,
    minimumSize: const Size(250.0, 60.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  );
}

/// Adds: ElevatedButton Name
Container universalElevatedButtonText(String title) {
  return Container(
    //margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 25.0),
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.indigoAccent,
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        overflow: TextOverflow.ellipsis,
      ),
    ),
  );
}

/// Adds: ElevatedButton Name
Text universalElevatedButtonTextNoEllipsis(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 14.0,
      color: Colors.indigoAccent,
      fontWeight: FontWeight.bold,
      //fontFamily: 'Montserrat',
    ),
  );
}

Text universalElevatedButtonTextNoEllipsisBlack(String title) {
  return Text(
    title,
    style: const TextStyle(
      fontSize: 14.0,
      color: Colors.black,
      //fontWeight: FontWeight.bold,
      //fontFamily: 'Montserrat',
    ),
  );
}

/// Widget Method that adds a Loading-Dialog.
void universalLoadingDialog(BuildContext context, String dialogText) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: Colors.grey[300],
          child: SizedBox(
            width: 300,
            height: 274,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  dialogText,
                  style: const TextStyle(
                    /// TextStyle Properties
                    fontSize: 24.0,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.bold,
                    //fontFamily: 'Montserrat',
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                universalCircularProgressIndicator(),
              ],
            ),
          ),
        );
      });
}

Widget universalElevatedCancelButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.fromLTRB(32.0, 10.0, 32.0, 5.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        //elevation: 8.0,
        padding: const EdgeInsets.all(20.0),
        minimumSize: const Size(200.0, 60.0),
        side: const BorderSide(
          color: Colors.indigoAccent,
          width: 2.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        textStyle: const TextStyle(
          //fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
        ),
      ),

      /// Navigates to the Project-Overview again
      onPressed: () {
        Navigator.pop(context);
      },
      child: const Text(
        'Abbrechen',
        style: TextStyle(
          color: Colors.indigoAccent,
          //fontFamily: 'Montserrat',
        ),
      ),
    ),
  );
}

/////////////////////////////////////////////////////////////////////////////
/////////////////////IDEAS & STORIES & BACKLOG///////////////////////////////
/////////////////////////////////////////////////////////////////////////////
/// AppBar for Ideas/Stories/Backlog
AppBar pageAppBar(String title) {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    backgroundColor: Colors.white,
    foregroundColor: Colors.indigoAccent,
    elevation: 0.0,
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        //fontFamily: 'Montserrat',
        height: 3.0,
      ),
    ),
  );
}

/// SubTitle for Ideas/Stories/Backlog
Widget buildPageSubTitle(String subTitle) {
  return Row(
    // returns row because there could be a potential filter icon
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 10.0),
          alignment: Alignment.bottomCenter,
          child: Center(
            child: Text(
              subTitle,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                //fontFamily: 'Montserrat',
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget universalUserIconWithSize() {
  return Column(
    children: const [
      SizedBox(height: 16),
      Icon(
        Icons.person,
        color: Colors.grey,
        size: 35.0,
      ),
      Text(
        'Product\n Owner',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget universalUserIconWithoutSize() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
    child: Column(
      children: const [
        Icon(
          Icons.person,
          color: Colors.grey,
          size: 35.0,
        ),
        Text(
          'Product\n Owner',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

/// Method that defines Icon for Email Formfield
Icon iconForEmailField() {
  return const Icon(Icons.mail, color: Colors.indigoAccent);
}

/// Method that defines Icon for Password Formfield
Icon iconForPasswordField() {
  return const Icon(Icons.vpn_key, color: Colors.indigoAccent);
}

/// Method that defines Icon for Project Formfield
Icon iconForProjectField() {
  return const Icon(Icons.note_add, color: Colors.indigoAccent);
}

/// Method that defines Icon for Project Formfield
Icon iconForDORField() {
  return const Icon(Icons.notes, color: Colors.indigoAccent);
}

/// Widget that provides a pre-defined TextFormField
Widget buildFormFieldUniversal(
    GlobalKey<FormState> globalKey, TextEditingController globalController, String labelText, String hintText, String? errorMsg, Icon prefixIcon) {
  return StatefulBuilder(
    builder: (context, _setState) => Container(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      child: Form(
        key: globalKey,
        child: TextFormField(
          cursorColor: Colors.indigoAccent,
          controller: globalController,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: labelText,
              hintText: hintText,
              errorText: errorMsg,
              labelStyle: TextStyle(
                color: Colors.grey[700],
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.indigoAccent, width: 1.5),
                borderRadius: BorderRadius.circular(16.0),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: globalController.text.isEmpty
                  ? Container(width: 0) // Icon not visible
                  : IconButton(
                onPressed: () {
                  globalController.clear();
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.indigoAccent,
                ),
              )),
          textInputAction: TextInputAction.done,
          // Validator for email/password Inputfield
          validator: (source) {
            if (source!.isEmpty) {
              return 'Geben Sie einen Projektnamen an.';
            } else if (source.length > 35) {
              return 'Der Projektname darf maximal 35 Zeichen enthalten.\nAktuell: ${source.length} Zeichen.';
            } else {
              return null;
            }
          },
        ),
      ),
    ),
  );
}

/// Widget that provides a pre-defined TextFormField
/*Widget buildFormFieldDOR(GlobalKey<FormState> globalKey, TextEditingController globalController, String labelText, String hintText, String? _errorMsg,
    Icon prefixIcon, Function() onPressedFunction) {
  return StatefulBuilder(
    builder: (context, _setState) => Container(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      child: Form(
        key: globalKey,
        child: TextFormField(
          cursorColor: Colors.indigoAccent,
          controller: globalController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: labelText,
            hintText: hintText,
            errorText: _errorMsg,
            labelStyle: TextStyle(
              color: Colors.grey[700],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.indigoAccent, width: 1.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: IconButton(
              onPressed: onPressedFunction,
              icon: const Icon(Icons.add, color: Colors.indigoAccent),
            ),
          ),
          textInputAction: TextInputAction.done,
          // Validator for email/password Inputfield
          validator: (source) {
            if(dorList.isEmpty) {
              //return 'Geben sie mindestens eine Definition of Ready an.';
            }
            if (source!.isNotEmpty) {
              //return 'Hinzufügen?';
            } else if (source.isEmpty) {
              return null;
            } else {

              return null;
            }
          },
        ),
      ),
    ),
  );
}*/

bool isFirstPasswordObscured = true;
bool isSecondPasswordObscured = true;

/// Widget that provides a pre-defined Password TextFormField
Widget buildPasswordFormField(GlobalKey<FormState> globalKey, TextEditingController globalController, TextEditingController globalControllerTwo,
    String labelText, String hintText, String? _errorMsg, Icon prefixIcon, bool isFirstPassword) {
  return StatefulBuilder(
    builder: (context, _setState) => Container(
      padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
      child: Form(
        key: globalKey,
        child: TextFormField(
          cursorColor: Colors.indigoAccent,
          controller: globalController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            labelText: labelText,
            hintText: hintText,
            errorText: _errorMsg,
            labelStyle: TextStyle(
              color: Colors.grey[700],
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.indigoAccent, width: 1.5),
              borderRadius: BorderRadius.circular(16.0),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: IconButton(
              icon: isFirstPassword
                  ? isFirstPasswordObscured
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility)
                  : isSecondPasswordObscured
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
              color: Colors.indigoAccent,
              onPressed: () {
                _setState(() {
                  if (isFirstPassword) {
                    isFirstPasswordObscured = !isFirstPasswordObscured;
                  } else {
                    isSecondPasswordObscured = !isSecondPasswordObscured;
                  }
                });
              },
            ),
          ),
          textInputAction: TextInputAction.done,
          obscureText: isFirstPassword ? isFirstPasswordObscured : isSecondPasswordObscured,
          // Validator for email/password Inputfield
          validator: (source) {
            // Validator for Password Inputfield
            if (!isFirstPassword && source!.length > 5 && source.isNotEmpty) {
              if (globalController.text.compareTo(globalControllerTwo.text) != 0) {
                return 'Die Passwörter stimmen nicht überein.';
              }
            }
            if (source!.isEmpty) {
              return 'Geben Sie ein Passwort ein.';
            } else if (source.length <= 5) {
              return 'Geben Sie 6 Zeichen oder mehr ein.';
            } else {
              return null;
            }
          },
        ),
      ),
    ),
  );
}

/// Widget that acts like a PrimaryButton template.
Widget buildElevatedButton(String primaryName, Function() onPressedFunction) {
  return Container(
    padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 8.0),
    child: ElevatedButton(
      style: universalElevatedButtonStyleForTheme(),
      onPressed: onPressedFunction,
      child: universalTextStyle(primaryName, 16.0),
    ),
  );
}

Scaffold buildUniversalScaffold(String subname, Widget buildListview) {
  return Scaffold(
    backgroundColor: Colors.grey[300],
    appBar: universalAppBar('Vokabbel'), // Adds: Title-Text "Vokabbel"
    body: Column(
      children: [
        //buildBranding(), // Adds: Text "from CIAAA"
        buildSubName(subname), // Adds: Text "Anmeldung"
        Expanded(
          child: buildListview, // Adds: Custom Listview
        ),
      ],
    ),
  );
}

Scaffold buildUniversalScaffoldWithActionButton(AppBar appBar, String subname, Widget buildListview, Widget buildFloatingActionButton) {
  return Scaffold(
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    backgroundColor: Colors.grey[300],
    appBar: appBar, // Adds: Title-Text "StakeStories"
    body: Column(
      children: [
        //buildBranding(), // Adds: Text "from CIAAA"
        buildSubName(subname), // Adds: Text "Anmeldung"
        Expanded(
          child: buildListview, // Adds: Custom Listview
        ),
        const SizedBox(
          height: 75,
        ),
      ],
    ),
    floatingActionButton: buildFloatingActionButton,
  );
}

Widget universalViewHeadline(String headline) {
  return Text(
    headline,
    style: const TextStyle(
      color: Colors.indigoAccent,
      fontSize: 16.0,
    ),
  );
}

BoxDecoration universalBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(
      color: Colors.indigoAccent,
      width: 1.5,
    ),
    borderRadius: BorderRadius.circular(15.0),
  );
}

/// Adds: Edit-ElevatedButton
ElevatedButton universalElevatedButtonEdit(Function() onPressedFunction) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigoAccent,
        fixedSize: const Size(50.0, 50.0), // DO NOT CHANGE SIZE UNLESS YOU KNOW WHAT YOU DO!
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(16.0)),
        ),
      ),
      onPressed: onPressedFunction,
      child: const Icon(Icons.edit));
}

/// Adds: Delete-ElevatedButton
ElevatedButton universalElevatedButtonDelete(Function() onPressedFunction) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.redAccent,
        fixedSize: const Size(50.0, 50.0), // DO NOT CHANGE SIZE UNLESS YOU KNOW WHAT YOU DO!
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(16.0)),
        ),
      ),
      onPressed: onPressedFunction,
      child: const Icon(Icons.delete_forever));
}

/*Scaffold buildIdeaStoryBacklogScaffold(String subTitle, Widget buildListView, Widget floatingButton) {
  return Scaffold(
    backgroundColor: Colors.grey[300],
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    endDrawer: const DrawerPage(),
    appBar: pageAppBar(getProjectTitle()),
    body: Column(children: [
      buildPageSubTitle(subTitle),
      const SizedBox(height: 10.0),
      buildListView,
    ]),
    floatingActionButton: floatingButton,
  );
}*/

Text buildUniversalContainerHeadline(String headline) {
  return Text(
    headline,
    style: const TextStyle(
      color: Colors.indigoAccent,
      fontSize: 16.0,
    ),
  );
}