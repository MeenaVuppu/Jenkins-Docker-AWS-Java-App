#!/bin/bash

echo pratice > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

scp -i /opt/MyPracticeInstanceKey /tmp/.auth ubuntu@18.205.119.48:/tmp/.auth
scp -i /opt/MyPracticeInstanceKey ./jenkins/deploy/publish ubuntu@18.205.119.48:/tmp/publish
ssh -i /opt/MyPracticeInstanceKey ubuntu@18.205.119.48 "/tmp/publish"
