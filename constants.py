import os

TEMP_DIRECTORY = 'temp'
ANDROGUARD_PATH = '../tools/androguard/'
SMALI_PATH = 'smali'
BAKSMALI_PATH = ' ~/tools/baksmali-2.2.1.jar'
APKTOOL_PATH = '~/tools/apktool_2.2.4.jar'
PROJECT_PATH = os.path.dirname(os.path.realpath(__file__))+"/../"
HIDEX_PATH = 'hidex.pl'
START_ROW = 1

#Manifest
MANIFEST_FILE_RAW = 'AndroidManifest.xml'
MANIFEST_FILE_CONVERTED = 'AndroidManifest.xml'

ACTIVITY_LABEL = 'activity'
APPLICATION_LABEL = 'application'
PERMISSION_LABEL = 'uses-permission'
RECEVIER_LABEL = 'receiver'
INTENT_LABEL = 'intent-filter'
ACTION_LABEL = 'action'
HARDWARE_LABEL = 'uses-feature'
SERVICE_LABEL = 'service'
PROVIDER_LABEL = 'provider'
SIGNATURE_LABL = 'PackageInfo;->signatures'

OBJECT_KEY = '{http://schemas.android.com/apk/res/android}name'
OBJECT_KEY2 = "name"

MALICIOUS_PERMISSIONS = ['android.permission.BROADCAST_WAP_PUSH','android.permission.WRITE_SMS','android.permission.DISABLE_KEYGUARD','android.permission.RECEIVE_WAP_PUSH',
'android.permission.RECEIVE_MMS','android.permission.WRITE_APN_SETTINGS','android.permission.READ_SMS','android.permission.INSTALL_PACKAGES','android.permission.DELETE_PACKAGES',
'android.permission.BROADCAST_PACKAGE_REMOVED','android.permission.SEND_SMS','android.permission.BRICK','android.permission.ADD_SYSTEM_SERVICE','android.permission.EXPAND_STATUS_BAR',
'android.permission.SET_PROCESS_LIMIT','android.permission.RECEIVE_SMS','android.permission.SEND_SMS','android.permission.SET_WALLPAPER_HINTS','android.permission.FACTORY_TEST',
'android.permission.RESTART_PACKAGES','android.permission.BIND_APPWIDGET','android.permission.MODIFY_PHONE_STATE','android.permission.INTERNAL_SYSTEM_WINDOW','android.permission.DEVICE_POWER',
'android.permission.PERSISTENT_ACTIVITY','android.permission.WRITE_CONTACTS','android.permission.SET_ALWAYS_FINISH','android.permission.PROCESS_OUTGOING_CALLS','android.permission.CHANGE_WIFI_STATE',
'android.permission.BROADCAST_SMS','android.permission.READ_FRAME_BUFFER','android.permission.READ_LOGS','android.permission.DELETE_CACHE_FILES','android.permission.STATUS_BAR']
MALICIOUS_INTENTS = ['BOOT_COMPLETED','SMS_RECEIVED','UMS_CONNECTED','SENDTO','DIAL','SCREEN_OFF','TEXT','SEND','USER_PRESENT','PACKAGE_ADDED','SCREEN_ON','CALL']
MALICIOUS_HARDWARES = ['android.hardware.camera','android.hardware.microphone','android.hardware.location','android.hardware.telephony']
MALICIOUS_ACTIVITIES = ['FirstAActivity','SecondAActivity','ThirdAActivity','FourthAActivity','MainA']
MALICIOUS_SERVICES = ['FirstAService','SecondAService','ThirdAService','FourthAService','AdSmsService','OperateService','SMSService','SMSSendService']
MALICIOUS_RECEIVERS = ['BaseABroadcastReceiver']
MALICIOUS_PROVIDERS = []

BANGCLE_ACTIVITIES = ["FirstApplication","ACall","com.bangcle.everisk.stub.NewActivity"]
BANGCLE_LIBRARIES = ["libsecexe.so","libsecmain.so","libSecShell.so","libSecShell-x86.so"]
BANGCLE_LABELS = ["com.secapk.wrapper.ApplicationWrapper","com.secshell.secData.ApplicationWrapper"]

SENSITIVE_APIS = ['getSMSCFromSms','getSubscriberId','Service;->onDestroy','Service;->onCreate','getDeviceId','Context;->startService','PackageManager','SmsManager;->getDefault','sendTextMessage'
,'Timer;-><init>','Bundle;->get','ApplicationInfo;->loadLabel','Process;->getOutputStream','Runtime;->exec','TimerTask;-><init>','DataOutputStream;->flush','FileOutputStream;->flush','Process;->waitFor'
,'NetworkInfo;->getExtraInfo','TelephonyManager;->getLine1Number','TelephonyManager','SmsManager']
REFLECTION_LABEL = "Ljava/lang/reflect/Method"
GET_METHOD_LABEL = "getMethod"
DEX_CLASS_LABEL = "Ldalvik/system/DexClassLoader"
DECRYPTION_LABEL = "Ljavax/crypto/Cipher"
DO_FINAL_LABEL = "doFinal"
NATIVE_LOAD_LABEL = "loadLibrary"
NATIVE_FUNCTION_LABEL = "native"
APKPROTECT_LABEL = "APKProtected"
LOAD_CLASS_LABEL = "loadClass(Ljava/lang/String;)"
