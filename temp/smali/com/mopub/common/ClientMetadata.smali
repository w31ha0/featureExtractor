.class public Lcom/mopub/common/ClientMetadata;
.super Ljava/lang/Object;
.source "ClientMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_ORIENTATION_LANDSCAPE:Ljava/lang/String; = "l"

.field private static final DEVICE_ORIENTATION_PORTRAIT:Ljava/lang/String; = "p"

.field private static final DEVICE_ORIENTATION_SQUARE:Ljava/lang/String; = "s"

.field private static final DEVICE_ORIENTATION_UNKNOWN:Ljava/lang/String; = "u"

.field private static final IFA_PREFIX:Ljava/lang/String; = "ifa:"

.field private static final MISSING_VALUE:I = -0x1

.field private static final SHA_PREFIX:Ljava/lang/String; = "sha:"

.field private static final TYPE_ETHERNET:I = 0x9

.field private static final UNKNOWN_NETWORK:I = -0x1

.field private static volatile sInstance:Lcom/mopub/common/ClientMetadata;


# instance fields
.field private mAdvertisingInfoSet:Z

.field private mAppName:Ljava/lang/String;

.field private final mAppPackageName:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManufacturer:Ljava/lang/String;

.field private final mDeviceModel:Ljava/lang/String;

.field private final mDeviceOsVersion:Ljava/lang/String;

.field private final mDeviceProduct:Ljava/lang/String;

.field private mDoNotTrack:Z

.field private final mIsoCountryCode:Ljava/lang/String;

.field private final mNetworkOperator:Ljava/lang/String;

.field private mNetworkOperatorForUrl:Ljava/lang/String;

.field private mNetworkOperatorName:Ljava/lang/String;

.field private final mSdkVersion:Ljava/lang/String;

.field private final mSimIsoCountryCode:Ljava/lang/String;

.field private mSimOperator:Ljava/lang/String;

.field private mSimOperatorName:Ljava/lang/String;

.field private mUdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v4, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v4, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z

    .line 52
    iput-boolean v4, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    .line 144
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    .line 145
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 146
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    .line 147
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    .line 148
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    .line 149
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    .line 151
    const-string v4, "4.15.0"

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    .line 155
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 156
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 157
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    .line 159
    :try_start_0
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 163
    :goto_0
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    .line 167
    :cond_0
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    .line 168
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 169
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 170
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    .line 171
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 172
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 173
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    .line 174
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    .line 177
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    .line 178
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    .line 181
    :try_start_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 182
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 183
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/mopub/common/ClientMetadata;->setAmazonAdvertisingInfo()V

    .line 191
    iget-boolean v4, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z

    if-nez v4, :cond_3

    .line 194
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mopub/common/ClientMetadata;->getDeviceIdFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;

    .line 197
    :cond_3
    return-void

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/SecurityException;
    iput-object v7, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    .line 187
    iput-object v7, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    goto :goto_1

    .line 160
    .end local v1    # "e":Ljava/lang/SecurityException;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static clearForTesting()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    sput-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 441
    return-void
.end method

.method private static getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 219
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "exception":Ljava/lang/Exception;
    const-string v3, "Failed to retrieve PackageInfo#versionName."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 222
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDeviceIdFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 229
    :cond_0
    invoke-static {v0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/mopub/common/ClientMetadata;
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 131
    .local v0, "result":Lcom/mopub/common/ClientMetadata;
    if-nez v0, :cond_0

    .line 133
    const-class v2, Lcom/mopub/common/ClientMetadata;

    monitor-enter v2

    .line 134
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 135
    monitor-exit v2

    .line 138
    :cond_0
    return-object v0

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 112
    .local v0, "result":Lcom/mopub/common/ClientMetadata;
    if-nez v0, :cond_1

    .line 113
    const-class v3, Lcom/mopub/common/ClientMetadata;

    monitor-enter v3

    .line 114
    :try_start_0
    sget-object v0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 115
    if-nez v0, :cond_0

    .line 116
    new-instance v1, Lcom/mopub/common/ClientMetadata;

    invoke-direct {v1, p0}, Lcom/mopub/common/ClientMetadata;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "result":Lcom/mopub/common/ClientMetadata;
    .local v1, "result":Lcom/mopub/common/ClientMetadata;
    :try_start_1
    sput-object v1, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 119
    .end local v1    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v0    # "result":Lcom/mopub/common/ClientMetadata;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 121
    :cond_1
    return-object v0

    .line 119
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v1    # "result":Lcom/mopub/common/ClientMetadata;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Lcom/mopub/common/ClientMetadata;
    .restart local v0    # "result":Lcom/mopub/common/ClientMetadata;
    goto :goto_0
.end method

.method public static setInstance(Lcom/mopub/common/ClientMetadata;)V
    .locals 2
    .param p0, "clientMetadata"    # Lcom/mopub/common/ClientMetadata;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 433
    const-class v1, Lcom/mopub/common/ClientMetadata;

    monitor-enter v1

    .line 434
    :try_start_0
    sput-object p0, Lcom/mopub/common/ClientMetadata;->sInstance:Lcom/mopub/common/ClientMetadata;

    .line 435
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getActiveNetworkType()Lcom/mopub/common/ClientMetadata$MoPubNetworkType;
    .locals 4

    .prologue
    .line 251
    const/4 v1, -0x1

    .line 252
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v2, v3}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 254
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 257
    .end local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/mopub/common/ClientMetadata$MoPubNetworkType;->access$000(I)Lcom/mopub/common/ClientMetadata$MoPubNetworkType;

    move-result-object v2

    return-object v2

    .line 255
    .restart local v0    # "activeNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getDeviceDimensions()Landroid/graphics/Point;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method public declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDeviceLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mDeviceProduct:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceScreenHeightDip()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenHeightAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDeviceScreenWidthDip()I
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/util/Dips;->screenWidthAsIntDips(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorForUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorForUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mNetworkOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientationString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    iget-object v2, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 238
    .local v1, "orientationInt":I
    const-string v0, "u"

    .line 239
    .local v0, "orientation":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 240
    const-string v0, "p"

    .line 246
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 242
    const-string v0, "l"

    goto :goto_0

    .line 243
    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 244
    const-string v0, "s"

    goto :goto_0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSimIsoCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimIsoCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mopub/common/ClientMetadata;->mSimOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized isAdvertisingInfoSet()Z
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDoNotTrackSet()Z
    .locals 1

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAdvertisingInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "doNotTrack"    # Z

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ifa:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/common/ClientMetadata;->mUdid:Ljava/lang/String;

    .line 338
    iput-boolean p2, p0, Lcom/mopub/common/ClientMetadata;->mDoNotTrack:Z

    .line 339
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/common/ClientMetadata;->mAdvertisingInfoSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setAmazonAdvertisingInfo()V
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 204
    iget-object v4, p0, Lcom/mopub/common/ClientMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 205
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v4, "limit_ad_tracking"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 206
    .local v2, "limitAdTracking":I
    const-string v4, "advertising_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "advertisingId":Ljava/lang/String;
    if-eq v2, v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 210
    .local v1, "doNotTrack":Z
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/ClientMetadata;->setAdvertisingInfo(Ljava/lang/String;Z)V

    .line 212
    .end local v1    # "doNotTrack":Z
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
