#!/usr/bin/env bash

AndroidAppId=97fe1375109d46f7a7bec54bf070d77a
HockeyAppToken=4953a39b75d44b01ad8ed8bad1953682

curl \
-F "status=2" \
-F "notify=0" \
-F "ipa=@/home/circleci/project/outputs/outputs/apk/debug/app-debug.apk" \
-H "X-HockeyAppToken: $HockeyAppToken" \
https://rink.hockeyapp.net/api/2/apps/$AndroidAppId/app_versions/upload