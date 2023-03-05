import 'package:flutter/material.dart';

const String baseUrl = "http://94.198.219.88:8085/";
// const String baseUrl = "http://94.198.219.88:8085/";
const String urlReference = 'https://student.mpt.ru/';
const String SERVER_FAILURE_MESSAGE = 'Server Failure';
const String CACHED_FAILURE_MESSAGE = 'Cache Failure';
const String SAVED_SCHEDULE = "SAVED_SCHEDULE";
const String SAVED_WEEK = "SAVED_WEEK";
const String SAVED_USER_GROUP = "SAVED_USER_GROUP";
const String SAVED_USER_SPECIALITIES = 'SAVED_USER_SPECIALITIES';
const String SAVED_USER_THEME = "SAVED_USER_THEME";
const String SAVED_USER_SYSTEM_THEME = 'SAVED_USER_SYSTEM_THEME';
bool firstLoading = true;
List<Widget> pages = [];
String week = '';
int index = 0;
