TEMP_DIRECTORY = 'temp'
ANDROGUARD_PATH = '../tools/androguard/'
SMALI_PATH = 'smali'
BAKSMALI_PATH = ' ~/tools/baksmali-2.2.1.jar'
HIDEX_PATH = 'hidex.pl'

#Manifest
MANIFEST_FILE_RAW = 'AndroidManifest.xml'
MANIFEST_FILE_CONVERTED = 'Manifest.xml'

ACTIVITY_LABEL = 'activity'
APPLICATION_LABEL = 'application'
PERMISSION_LABEL = 'uses-permission'
RECEVIER_LABEL = 'receiver'
INTENT_LABEL = 'intent-filter'
ACTION_LABEL = 'action'
HARDWARE_LABEL = 'uses-feature'
SERVICE_LABEL = 'service'
PROVIDER_LABEL = 'provider'

OBJECT_KEY = '{http://schemas.android.com/apk/res/android}name'
OBJECT_KEY2 = "name"

MALICIOUS_PERMISSIONS = ['android.permission.INTERNET','android.permission.WRITE_SMS','android.permission.DISABLE_KEYGUARD','android.permission.RECEIVE_WAP_PUSH','android.permission.RECEIVE_MMS',
'android.permission.WRITE_APN_SETTINGS','android.permission.READ_SMS','android.permission.INSTALL_PACKAGES','android.permission.DELETE_PACKAGES','android.permission.BROADCAST_PACKAGE_REMOVED','android.permission.SEND_SMS']
MALICIOUS_INTENTS = ['BOOT_COMPLETED','SMS_RECEIVED','UMS_CONNECTED','SENDTO','DIAL','SCREEN_OFF','TEXT','SEND','USER_PRESENT','PACKAGE_ADDED','SCREEN_ON','CALL']
MALICIOUS_HARDWARES = ['android.hardware.camera','android.hardware.microphone','android.hardware.location','android.hardware.telephony']
MALICIOUS_ACTIVITIES = ['FirstAActivity','SecondAActivity','ThirdAActivity','FourthAActivity','MainA']
MALICIOUS_SERVICES = ['FirstAService','SecondAService','ThirdAService','FourthAService','AdSmsService','OperateService','SMSService','SMSSendService']
MALICIOUS_RECEIVERS = ['BaseABroadcastReceiver']
MALICIOUS_PROVIDERS = []

BANGCLE_ACTIVITIES = ["FirstApplication","ACall","com.bangcle.everisk.stub.NewActivity"]
BANGCLE_LIBRARIES = ["libsecexe.so","libsecmain.so","libSecShell.so","libSecShell-x86.so"]
BANGCLE_LABELS = ["com.secapk.wrapper.ApplicationWrapper","com.secshell.secData.ApplicationWrapper"]

SENSITIVE_APIS = ['getSMSCFromSms']
REFLECTION_LABEL = "Ljava/lang/reflect/Method"
GET_METHOD_LABEL = "getMethod"
DEX_CLASS_LABEL = "Ldalvik/system/DexClassLoader"
DECRYPTION_LABEL = "Ljavax/crypto/Cipher"
NATIVE_LOAD_LABEL = "loadLibrary"
NATIVE_FUNCTION_LABEL = "native"
APKPROTECT_LABEL = "APKProtected"