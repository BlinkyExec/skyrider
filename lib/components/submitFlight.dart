import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmitFlightWidget extends StatefulWidget {
  const SubmitFlightWidget({
    Key key,
    this.userProfile,
  }) : super(key: key);

  final DocumentReference userProfile;

  @override
  _SubmitFlightWidgetState createState() => _SubmitFlightWidgetState();
}

class _SubmitFlightWidgetState extends State<SubmitFlightWidget>
    with TickerProviderStateMixin {
  DateTime datePicked1;
  DateTime datePicked2;
  String dropDownValue;
  TextEditingController flightLocationController;
  TextEditingController personsNameController;
  TextEditingController problemDescriptionController1;
  TextEditingController planeItemController1;
  String radioButtonValue1;
  TextEditingController planeItemController2;
  String radioButtonValue2;
  TextEditingController planeItemController3;
  String radioButtonValue3;
  TextEditingController planeItemController4;
  String radioButtonValue4;
  TextEditingController planeItemController5;
  String radioButtonValue5;
  TextEditingController planeItemController6;
  String radioButtonValue6;
  TextEditingController planeItemController7;
  String radioButtonValue7;
  TextEditingController planeItemController8;
  String radioButtonValue8;
  String isCriticalValue;
  TextEditingController criticalEventController;
  TextEditingController problemDescriptionController2;
  final animationsMap = {
    'textFieldOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'dropDownOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 40,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 60,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 30),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 9),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'textFieldOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 60,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 30),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation1': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 150,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
    'buttonOnPageLoadAnimation2': AnimationInfo(
      curve: Curves.bounceOut,
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 150,
      hideBeforeAnimating: false,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 20),
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );

    criticalEventController = TextEditingController(text: '[key]');
    flightLocationController = TextEditingController(text: '[locationCode]');
    personsNameController = TextEditingController(text: '[Persons name]');
    problemDescriptionController1 = TextEditingController();
    planeItemController1 = TextEditingController(text: '[key]');
    planeItemController2 = TextEditingController(text: '[key]');
    planeItemController3 = TextEditingController(text: '[key]');
    planeItemController4 = TextEditingController(text: '[key]');
    planeItemController5 = TextEditingController(text: '[key]');
    planeItemController6 = TextEditingController(text: '[key]');
    planeItemController7 = TextEditingController(text: '[key]');
    planeItemController8 = TextEditingController(text: '[key]');
    problemDescriptionController2 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).darkBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: StreamBuilder<UsersRecord>(
          stream: UsersRecord.getDocument(currentUserReference),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: SpinKitRing(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 40,
                  ),
                ),
              );
            }
            final columnUsersRecord = snapshot.data;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 3,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFF465056),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                        child: Text(
                          'דיווח טיסה',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Text(
                            'טופס דיווח טיסה מבצעית המחולק לפרטים, רכיבים ותיאור מקרה של אירוע חריג במידת הצורך',
                            textAlign: TextAlign.end,
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 6),
                          child: Text(
                            'פרטים',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.looks_one,
                          color: FlutterFlowTheme.of(context).textColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: TextFormField(
                      controller: personsNameController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'שם צוות',
                        labelStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                  fontWeight: FontWeight.bold,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFF090F13),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation1']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: TextFormField(
                      controller: flightLocationController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'קוד מיקום',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFF090F13),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation2']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: FlutterFlowDropDown(
                      options: ['מפעיל I', 'מפעיל II', 'משגר', 'מפקד המנ\"ח'],
                      onChanged: (val) => setState(() => dropDownValue = val),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 60,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                      hintText: 'אחראי טיסה',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).grayLight,
                        size: 15,
                      ),
                      fillColor: Color(0xFF090F13),
                      elevation: 3,
                      borderColor: FlutterFlowTheme.of(context).background,
                      borderWidth: 2,
                      borderRadius: 8,
                      margin: EdgeInsetsDirectional.fromSTEB(20, 4, 16, 4),
                      hidesUnderline: true,
                    ).animated([animationsMap['dropDownOnPageLoadAnimation']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                            child: InkWell(
                              onTap: () async {
                                await DatePicker.showDateTimePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked1 = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: DateTime(0, 0, 0),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.44,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF090F13),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).background,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: Icon(
                                              Icons.date_range_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayLight,
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'נחיתה',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        fontSize: 12,
                                                      ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 4, 0, 0),
                                              child: Text(
                                                '[Date Chosen]',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                            child: InkWell(
                              onTap: () async {
                                await DatePicker.showDateTimePicker(
                                  context,
                                  showTitleActions: true,
                                  onConfirm: (date) {
                                    setState(() => datePicked2 = date);
                                  },
                                  currentTime: getCurrentTimestamp,
                                  minTime: DateTime(0, 0, 0),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.44,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Color(0xFF090F13),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF090F13),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).background,
                                    width: 2,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 30,
                                            buttonSize: 46,
                                            icon: Icon(
                                              Icons.date_range_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayLight,
                                              size: 20,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'המראה',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        fontSize: 12,
                                                      ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 4, 0, 0),
                                              child: Text(
                                                '[Date Chosen]',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'תיאור מבצעי',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 20),
                    child: TextFormField(
                      controller: problemDescriptionController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'תיאור מבצעי',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: Color(0xFF090F13),
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                      textAlign: TextAlign.start,
                      maxLines: 8,
                      keyboardType: TextInputType.multiline,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation3']]),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 6),
                          child: Text(
                            'רכיבים',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.looks_two,
                          color: FlutterFlowTheme.of(context).textColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: TextFormField(
                      controller: planeItemController1,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'ד. ימין',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation4']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue1 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController2,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'ד. שמאל',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation5']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue2 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController3,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'כנפ\"ם',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation6']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue3 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController4,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'מתעד',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation7']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue4 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController5,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'פוד',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation8']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue5 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController6,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'בו\"ם זנב',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation9']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue6 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController7,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'הגה גובה',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation10']]),
                  ),
                  FlutterFlowRadioButton(
                    options: ['תקין', 'תקול'].toList(),
                    onChanged: (value) {
                      setState(() => radioButtonValue7 = value);
                    },
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: FlutterFlowTheme.of(context).textColor,
                        ),
                    selectedTextStyle:
                        FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                    buttonPosition: RadioButtonPosition.right,
                    direction: Axis.horizontal,
                    radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveRadioButtonColor:
                        FlutterFlowTheme.of(context).grayLight,
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.end,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: TextFormField(
                      controller: planeItemController8,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'הגה כיוון',
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).background,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).darkBackground,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                      ),
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                      keyboardType: TextInputType.number,
                    ).animated(
                        [animationsMap['textFieldOnPageLoadAnimation11']]),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: FlutterFlowRadioButton(
                      options: ['תקין', 'תקול'].toList(),
                      onChanged: (value) {
                        setState(() => radioButtonValue8 = value);
                      },
                      optionHeight: 25,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                      selectedTextStyle:
                          FlutterFlowTheme.of(context).bodyText1.override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textColor,
                              ),
                      buttonPosition: RadioButtonPosition.right,
                      direction: Axis.horizontal,
                      radioButtonColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).grayLight,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.end,
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 6),
                          child: Text(
                            'אירוע חריג',
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                          ),
                        ),
                        Icon(
                          Icons.looks_3,
                          color: FlutterFlowTheme.of(context).textColor,
                          size: 36,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'היה אירוע חריג?',
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowRadioButton(
                        options: ['לא', 'כן'].toList(),
                        onChanged: (value) {
                          setState(() => isCriticalValue = value);
                        },
                        optionHeight: 25,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                        selectedTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Lexend Deca',
                                  color: FlutterFlowTheme.of(context).textColor,
                                ),
                        buttonPosition: RadioButtonPosition.right,
                        direction: Axis.horizontal,
                        radioButtonColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        inactiveRadioButtonColor:
                            FlutterFlowTheme.of(context).grayLight,
                        toggleable: false,
                        horizontalAlignment: WrapAlignment.start,
                        verticalAlignment: WrapCrossAlignment.end,
                      ),
                    ],
                  ),
                  if ((isCriticalValue == 'כן'))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: TextFormField(
                        controller: criticalEventController,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'קוד אירוע',
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xFF090F13),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 16, 24),
                        ),
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.end,
                        keyboardType: TextInputType.number,
                      ).animated(
                          [animationsMap['textFieldOnPageLoadAnimation12']]),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if ((isCriticalValue == 'כן'))
                          Text(
                            'תיאור אירוע',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                      ],
                    ),
                  ),
                  if ((isCriticalValue == 'כן'))
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 20),
                      child: TextFormField(
                        controller: problemDescriptionController2,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'תיאור אירוע',
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).background,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xFF090F13),
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textColor,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 8,
                        keyboardType: TextInputType.multiline,
                      ).animated(
                          [animationsMap['textFieldOnPageLoadAnimation13']]),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'חזור',
                          options: FFButtonOptions(
                            width: 100,
                            height: 50,
                            color: FlutterFlowTheme.of(context).background,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ).animated(
                            [animationsMap['buttonOnPageLoadAnimation1']]),
                        FFButtonWidget(
                          onPressed: () async {
                            final flightsCreateData = createFlightsRecordData();
                            await FlightsRecord.collection
                                .doc()
                                .set(flightsCreateData);
                            Navigator.pop(context);
                          },
                          text: 'שלח',
                          options: FFButtonOptions(
                            width: 150,
                            height: 50,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 3,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ).animated(
                            [animationsMap['buttonOnPageLoadAnimation2']]),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
