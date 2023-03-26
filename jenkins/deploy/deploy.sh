#!/bin/bash

echo pratice > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

scp -i /home/meena/MyPracticeInstanceKey /tmp/.auth ubuntu@18.205.119.48:/tmp/.auth
scp -i /home/meena/MyPracticeInstanceKey ./jenkins/deploy/publish ubuntu@18.205.119.48:/tmp/publish
ssh -i /home/meena/MyPracticeInstanceKey ubuntu@18.205.119.48  "/tmp/publish"
