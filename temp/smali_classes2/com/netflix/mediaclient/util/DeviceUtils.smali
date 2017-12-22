.class public final Lcom/netflix/mediaclient/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final DEFAULT_ALLOW_HEVC_MOBILE:Z = false

.field public static final DEFAULT_ALLOW_VP9_MOBILE:Z

.field public static final DEVICE_WITH_MENU_BUTTON_BUG:Z

.field private static final HIGH_ASPECT_RATIO_DEVICE_THRESHOLD:F = 1.8f

.field public static final SCREEN_SIZE_LARGE:I = 0x3

.field public static final SCREEN_SIZE_NORMAL:I = 0x2

.field public static final SCREEN_SIZE_SMALL:I = 0x1

.field public static final SCREEN_SIZE_XLARGE:I = 0x4

.field private static final SYSTEM_PROPERTY_LOCAL_PLAYBACK_ENABLED:Ljava/lang/String; = "ro.nrdp.playback.enable"

.field private static final SYSTEM_PROPERTY_REMOTE_CONTROLS_ENABLED:Ljava/lang/String; = "ro.nrdp.mdx.remotecontrols"

.field private static final TAG:Ljava/lang/String; = "nf_device_utils"

.field private static sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v0, v3, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "LGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0

    :cond_1
    move v1, v2

    .line 68
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static canUseGooglePlayServices(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 563
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    .line 564
    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 569
    if-nez v2, :cond_0

    .line 570
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Success!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :goto_0
    return v0

    .line 573
    :cond_0
    if-ne v0, v2, :cond_1

    .line 574
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Device is not Google certified, skip"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 575
    goto :goto_0

    .line 576
    :cond_1
    const/16 v0, 0x9

    if-ne v0, v2, :cond_2

    .line 577
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Device is not Google certified, skip"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 578
    goto :goto_0

    .line 580
    :cond_2
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Device is Google certified, problem with Google Play Services"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 581
    goto :goto_0
.end method

.method public static forceHideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 358
    if-eqz p0, :cond_0

    .line 359
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 360
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->forceHideKeyboard(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 362
    :cond_0
    return-void
.end method

.method public static forceHideKeyboard(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 370
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 373
    :cond_0
    return-void
.end method

.method public static getBasicScreenOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getCertificationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 107
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 108
    if-lez v1, :cond_0

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getFirstStartTime(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 415
    const-class v2, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 418
    :cond_0
    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_first_start_after_install"

    const-wide/16 v4, -0x1

    invoke-static {p0, v0, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getGMSPkgVersion(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 590
    .line 592
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 596
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_0
    return v0

    .line 597
    :catch_0
    move-exception v1

    .line 598
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "gms package not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getGooglePlayClientSDKVersion(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 586
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public static getLocalCapabilities(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceUtils$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/DeviceUtils$1;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-object v0
.end method

.method public static getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 491
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 492
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 494
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRealScreenHeightInPixels(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 274
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 276
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenAspectRatio(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 165
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getScreenBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getScreenHeightInDPs(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 230
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    return v0
.end method

.method public static getScreenHeightInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenResolutionCategoryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 189
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 175
    :sswitch_0
    const-string/jumbo v0, "hdpi"

    goto :goto_0

    .line 177
    :sswitch_1
    const-string/jumbo v0, "ldpi"

    goto :goto_0

    .line 179
    :sswitch_2
    const-string/jumbo v0, "mdpi"

    goto :goto_0

    .line 181
    :sswitch_3
    const-string/jumbo v0, "tvdpi"

    goto :goto_0

    .line 183
    :sswitch_4
    const-string/jumbo v0, "xhdpi"

    goto :goto_0

    .line 185
    :sswitch_5
    const-string/jumbo v0, "xxhdpi"

    goto :goto_0

    .line 187
    :sswitch_6
    const-string/jumbo v0, "xxxhdpi"

    goto :goto_0

    .line 173
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xa0 -> :sswitch_2
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
        0x280 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getScreenResolutionDpi(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSensorOrientation(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x6

    .line 137
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getScreenSizeCategory(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getScreenSizeCategoryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 196
    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    .line 198
    :pswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    .line 202
    :pswitch_3
    const-string/jumbo v0, "xlarge"

    goto :goto_0

    .line 204
    :pswitch_4
    const-string/jumbo v0, "undefined"

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScreenWidthInDPs(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 222
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    return v0
.end method

.method public static getScreenWidthInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "N/A"

    .line 89
    :cond_0
    return-object v0
.end method

.method public static hasHardwareNavigationKeys()Z
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 381
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 382
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hashCode(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 474
    const-wide/16 v2, 0x0

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 476
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 477
    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    aget-char v4, v1, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-wide v2
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 350
    return-void
.end method

.method public static declared-synchronized isDeviceEnabled(Landroid/content/Context;I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 434
    const-class v3, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v3

    if-gtz p1, :cond_1

    .line 435
    :try_start_0
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Everybody is enabled"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :cond_0
    :goto_0
    monitor-exit v3

    return v0

    .line 439
    :cond_1
    const/16 v2, 0x64

    if-lt p1, v2, :cond_2

    .line 440
    :try_start_1
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Everybody is disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 441
    goto :goto_0

    .line 444
    :cond_2
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getHashedDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->hashCode(Ljava/lang/String;)J

    move-result-wide v4

    .line 448
    const-wide/16 v6, 0x64

    rem-long/2addr v4, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int v2, v4

    .line 449
    if-gez v2, :cond_3

    .line 450
    add-int/lit8 v2, v2, 0x64

    .line 453
    :cond_3
    rsub-int/lit8 v4, p1, 0x64

    .line 454
    if-le v2, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static isDeviceHd(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 680
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSmallestWidthGreaterOrEqualThan(Landroid/app/Activity;I)Z
    .locals 3

    .prologue
    .line 249
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 251
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 252
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 253
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 254
    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 255
    int-to-float v2, v2

    div-float v0, v2, v0

    .line 256
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 258
    int-to-float v1, p1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceWithHigherAspectRatio(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 684
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenAspectRatio(Landroid/content/Context;)F

    move-result v0

    const v1, 0x3fe66666    # 1.8f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirstApplicationStartAfterInstallation(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 393
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 394
    const-class v1, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v1

    .line 395
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v0, "nf_first_start_after_install"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 397
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    .line 398
    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 399
    if-eqz v0, :cond_0

    .line 400
    const-string/jumbo v0, "nf_first_start_after_install"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 403
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 397
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotTabletByContext(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 294
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRemoteControlEnabled()Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public static isTabletByContext(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 305
    if-nez p0, :cond_0

    .line 306
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_0
    return v0

    .line 309
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 310
    if-nez v2, :cond_1

    .line 311
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context.getResources() is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 315
    if-nez v2, :cond_2

    .line 316
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context.getResources().getConfiguration() is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_2
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    .line 326
    packed-switch v2, :pswitch_data_0

    .line 341
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Screen size is at least XL - tablet UI"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 342
    goto :goto_0

    .line 328
    :pswitch_0
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size undefined - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :pswitch_1
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size normal - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 334
    :pswitch_2
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size small - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :pswitch_3
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Screen size large - tablet UI"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 339
    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 507
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Library name not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_1

    .line 519
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 530
    :goto_0
    const/4 v0, 0x1

    .line 535
    :goto_1
    return v0

    .line 528
    :cond_1
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Failed to load library from assumed location"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 535
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lockScreenToSensorOrientation(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static shouldShow5dot1Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 654
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->is5dot1Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideo5dot1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowDolbyVisionIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 672
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isDolbyVisionSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoDolbyVision()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdIcon(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 639
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isDeviceHd(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 644
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isHdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdr10Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 663
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isHdr10Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHdr10()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowUhdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 649
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isUltraHdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoUhd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSoftKeyboard(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 377
    return-void
.end method
