TEMP_DIRECTORY = 'temp'
ANDROGUARD_PATH = '../tools/androguard/'

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

PERMISSION_KEY = '{http://schemas.android.com/apk/res/android}name'
MALICIOUS_PERMISSIONS = ['android.permission.INTERNET','android.permission.WRITE_SMS','android.permission.DISABLE_KEYGUARD']

INTENT_KEY = '{http://schemas.android.com/apk/res/android}name'
MALICIOUS_INTENTS = ['android.intent.action.BOOT_COMPLETED','android.provider.Telephony.SMS_RECEIVED','android.intent.action.UMS_CONNECTED']

HARDWARE_KEY = '{http://schemas.android.com/apk/res/android}name'
MALICIOUS_HARDWARES = ['android.hardware.sensor.stepcounter']