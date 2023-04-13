import QtQuick 1.1
import com.nokia.symbian 1.1
import QtMobility.systeminfo 1.2

Page {
    id: mainPage
         DeviceInfo {
         id: deviceinfo
         monitorBatteryLevelChanges: true
     }

    Text {
        id: text1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: qsTr("Battery Status: %1%").arg(progressbar1.value)
        color: platformStyle.colorNormalLight
        font.pixelSize: 20
    }

    ProgressBar {
        id: progressbar1
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: text1.horizontalCenter
        anchors.top: text1.bottom
        anchors.topMargin: 20
        minimumValue: 0
        maximumValue: 100
        value: deviceinfo.batteryLevel
    }
}
