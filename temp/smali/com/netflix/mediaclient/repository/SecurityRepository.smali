.class public final Lcom/netflix/mediaclient/repository/SecurityRepository;
.super Ljava/lang/Object;
.source "SecurityRepository.java"


# static fields
.field private static final BOOTLOADER_PARAMETER_CERTIFICATION_VERSION:Ljava/lang/String; = "certification_version"

.field private static final BOOTLOADER_PARAMETER_DEVICE_CATEGORY:Ljava/lang/String; = "device_cat"

.field private static final BOOTLOADER_PARAMETER_DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final BOOTLOADER_PARAMETER_FULL_ESN:Ljava/lang/String; = "e"

.field private static final BOOTLOADER_PARAMETER_OS:Ljava/lang/String; = "os"

.field private static final BOOTLOADER_PARAMETER_SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final BOOTLOADER_PARAMETER_SOFTWARE_VERSION:Ljava/lang/String; = "sw_version"

.field private static final BOOTLOADER_PARAMETER_WEB_API_VERSION:Ljava/lang/String; = "v"

.field private static final BOOTLOADER_URL:Ljava/lang/String; = "https://www.netflix.com"

.field private static final BOOTLOADER_WEB_API_VERSION:Ljava/lang/String; = "2.0"

.field private static final CONSTANT_CRITTERCISM_APP_ID:I = 0x2

.field private static final CONSTANT_DEVICE_ID_TOKEN:I = 0x1

.field public static final CUSTOMER_SUPPORT_FILE_NAME:Ljava/lang/String; = "cs.dat"

.field private static final ESN_DELIM:Ljava/lang/String; = "-"

.field private static final MODEL_DELIM:Ljava/lang/String; = "_"

.field private static final MSL_STORE_FILE_NAME:Ljava/lang/String; = "ms.dat"

.field private static final SECURE_STORE_FILE_NAME:Ljava/lang/String; = "kf.dat"

.field public static final SENDER_ID:Ljava/lang/String; = "484286080282"

.field private static final TAG:Ljava/lang/String; = "SEC"

.field private static crittercismAppId:Ljava/lang/String;

.field private static deviceIdToken:Ljava/lang/String;

.field private static esnPrefix:Ljava/lang/String;

.field private static sLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static getBootloaderParameterCertificationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "certification_version"

    return-object v0
.end method

.method public static getBootloaderParameterDeviceCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string/jumbo v0, "device_cat"

    return-object v0
.end method

.method public static getBootloaderParameterDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string/jumbo v0, "device_type"

    return-object v0
.end method

.method public static getBootloaderParameterFullEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "e"

    return-object v0
.end method

.method public static getBootloaderParameterOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "os"

    return-object v0
.end method

.method public static getBootloaderParameterSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string/jumbo v0, "sdk_version"

    return-object v0
.end method

.method public static getBootloaderParameterSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    const-string/jumbo v0, "sw_version"

    return-object v0
.end method

.method public static getBootloaderParameterWebApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "v"

    return-object v0
.end method

.method public static getBootloaderUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string/jumbo v0, "https://www.netflix.com"

    return-object v0
.end method

.method public static getBootloaderWebApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public static getCrittercismAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->crittercismAppId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceIdToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->deviceIdToken:Ljava/lang/String;

    return-object v0
.end method

.method public static getEsnDelim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-string/jumbo v0, "-"

    return-object v0
.end method

.method public static getEsnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->esnPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static final getLibraryVersion()I
    .locals 1

    .prologue
    .line 290
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getLibraryVersion()I

    move-result v0

    return v0
.end method

.method public static getModelDelim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, "_"

    return-object v0
.end method

.method public static getOldSecureStore(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 174
    const-string/jumbo v0, "kf.dat"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_loadOldSecureStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string/jumbo v1, "SEC"

    const-string/jumbo v2, "Received %s "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSecureStore(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    const-string/jumbo v0, "SEC"

    const-string/jumbo v1, "getSecureStore started..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string/jumbo v0, "ms.dat"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_loadGenericStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string/jumbo v1, "SEC"

    const-string/jumbo v2, "Received %s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    const-string/jumbo v1, "{}"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 195
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 196
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 197
    const-string/jumbo v1, "SEC"

    const-string/jumbo v2, "Received as JSON %s "

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public static getSystemPropety(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLoaded()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    return v0
.end method

.method public static declared-synchronized loadLibraries(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 301
    const-class v1, Lcom/netflix/mediaclient/repository/SecurityRepository;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    if-eqz v2, :cond_0

    .line 302
    const-string/jumbo v2, "SEC"

    const-string/jumbo v3, "We already loaded native libraries!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit v1

    return v0

    .line 306
    :cond_0
    :try_start_1
    const-string/jumbo v0, "cs.dat"

    const-string/jumbo v2, "cs.dat"

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/FileUtils;->copyFileFromAssetToFS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 307
    const-string/jumbo v0, "SEC"

    const-string/jumbo v2, "We copied cs.dat"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v0, "netflixmp_jni"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    .line 310
    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z

    if-eqz v0, :cond_1

    .line 311
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_init([B)V

    .line 312
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getConstant(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->deviceIdToken:Ljava/lang/String;

    .line 313
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_getConstant(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->crittercismAppId:Ljava/lang/String;

    .line 315
    :cond_1
    sget-boolean v0, Lcom/netflix/mediaclient/repository/SecurityRepository;->sLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static final native native_getConstant(I)Ljava/lang/String;
.end method

.method private static final native native_getLibraryVersion()I
.end method

.method private static native native_getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static final native native_init([B)V
.end method

.method private static native native_loadGenericStore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_loadOldSecureStore(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_loadVoipTokens(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native native_saveGenericStore(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static saveSecureStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    const-string/jumbo v0, "SEC"

    const-string/jumbo v1, "saveSecureStore started..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string/jumbo v0, "ms.dat"

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/repository/SecurityRepository;->native_saveGenericStore(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "SEC"

    const-string/jumbo v1, "saveSecureStore done."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method
