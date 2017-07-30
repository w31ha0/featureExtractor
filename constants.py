TEMP_DIRECTORY = 'temp'
ANDROGUARD_PATH = '../tools/androguard/'
SMALI_PATH = 'smali'
BAKSMALI_PATH = ' ~/tools/baksmali-2.2.1.jar'

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

MALICIOUS_PERMISSIONS = ['android.permission.INTERNET','android.permission.WRITE_SMS','android.permission.DISABLE_KEYGUARD']
MALICIOUS_INTENTS = ['android.intent.action.BOOT_COMPLETED','android.provider.Telephony.SMS_RECEIVED','android.intent.action.UMS_CONNECTED']
MALICIOUS_HARDWARES = ['android.hardware.sensor.stepcounter']
MALICIOUS_ACTIVITIES = ['FirstAActivity']
MALICIOUS_SERVICES = ['FirstAService']
MALICIOUS_RECEIVERS = ['BaseABroadcastReceiver']
MALICIOUS_PROVIDERS = []

SENSITIVE_APIS = ['getSMSCFromSms']
REFLECTION_LABEL = "Ljava/lang/reflect/Method"
GET_METHOD_LABEL = "getMethod"