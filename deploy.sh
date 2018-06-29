#!/usr/bin/env bash

AndroidAppId=4e761043b5b648ff8d7c7345f8f3a8f8
HockeyAppToken=ef4eaad18b6d46709739cffb3ae3be87

curl \
-F "status=2" \
-F "notify=0" \
-F "ipa=@/home/circleci/project/outputs/outputs/apk/debug/app-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload