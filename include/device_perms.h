/*
* Copyright (C) 2012 The CyanogenMod Project
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

#ifndef DEVICE_PERMS_H
#define DEVICE_PERMS_H

#define PROPERTY_PERMS_APPEND \
    { "net.caif0.",       AID_RADIO,    0 }, \
    { "net.usb0.",        AID_RADIO,    0 }, \
    { "net.usb1.",        AID_RADIO,    0 }, \
    { "net.qmi0.",        AID_RADIO,    0 }, \
    { "net.qmi1.",        AID_RADIO,    0 }, \
    { "net.qmi2.",        AID_RADIO,    0 }, \
    { "net.gannet0.",     AID_RADIO,    0 }, \
    { "net.dns",          AID_DHCP,     0 }, \
    { "net.dns",          AID_VPN,      0 }, \
    { "net.vpnclient",    AID_VPN,      0 }, \
    { "net.dnschange",    AID_VPN,      0 }, \
    { "serialno",         AID_RADIO,    0 }, \
    { "radio.",           AID_RADIO,    0 }, \
    { "hostapd.",         AID_WIFI,     0 }, \
    { "debug.nfc.",       AID_NFC,      0 }, \
    { "log.",             AID_SHELL,    AID_LOG }, \
    { "persist.service.", AID_SYSTEM,   AID_RADIO }, \
    { "persist.log.",     AID_SHELL,    AID_LOG }, \
    { "persist.tcmd.", AID_MOT_TCMD,   0 }, \
    { "tcmd.",            AID_MOT_TCMD, AID_MOT_WHISPER }, \
    { "persist.mot.proximity.", AID_RADIO, 0}, \
    { "mot.backup_restore.",AID_MOT_TCMD, 0}, \
    { "mot.",             AID_MOT_TCMD, 0 }, \
    { "sys.",             AID_MOT_OSH,  0 }, \
    { "hw.",              AID_MOT_OSH,  0 }, \
    { "cdma.nbpcd.supported", AID_RADIO, AID_RADIO }, \
    { "hw.",              AID_MOT_WHISPER, 0 }, \
    { "lte.default.protocol",      AID_RADIO,    0 }, \
    { "lte.ignoredns",             AID_RADIO,    0 }, \
    { "vzw.inactivetimer",         AID_RADIO,    0 }, \
    { "android.telephony.apn-restore", AID_RADIO,    0 }, \
    { "hw.",              AID_MEDIA,   0 }, \
    { "persist.ril.event.report", AID_RADIO, 0 }, \
    { "persist.atvc.",    AID_MOT_ATVC,  0 }, \
    { "persist.audio.", AID_SYSTEM, 0 }, \
    { "tcmd.", AID_MOT_TCMD, AID_MOT_WHISPER }, \
    { "hw.whisper", AID_MOT_WHISPER, 0 }, \
    { "sys.media.", AID_RADIO, 0 }, \
    { "persist.atvc.", AID_SYSTEM, 0 }, \

#define CONTROL_PERMS_APPEND \
    { "bug2go-bugreport", AID_LOG, AID_LOG}, \
    { "hciattach", AID_MOT_TCMD, AID_MOT_TCMD }, \
    { "bluetoothd",AID_MOT_TCMD, AID_MOT_TCMD }, \
    { "bt_start", AID_MOT_TCMD, AID_MOT_TCMD }, \
    { "bt_stop", AID_MOT_TCMD, AID_MOT_TCMD }, \
    { "whisperd", AID_MOT_TCMD, AID_MOT_TCMD }, \
    { "gadget-lte-modem", AID_RADIO, AID_RADIO }, \
    { "gadget-qbp-modem", AID_RADIO, AID_RADIO }, \
    { "gadget-qbp-diag", AID_RADIO, AID_RADIO }, \
    { "ftmipcd", AID_RADIO, AID_RADIO }, \
    { "mdm_usb_suspend", AID_RADIO, AID_RADIO }, \
    { "pcsc",AID_WIFI, AID_WIFI },  /* Allow wpa_supplicant to start the pcsc-lite daemon used for EAP-SIM/AKA auth */ \
    { "uim",AID_BLUETOOTH, AID_BLUETOOTH }, \

#endif /* DEVICE_PERMS_H */
