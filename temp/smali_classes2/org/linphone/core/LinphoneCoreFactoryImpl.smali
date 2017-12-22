.class public Lorg/linphone/core/LinphoneCoreFactoryImpl;
.super Lorg/linphone/core/LinphoneCoreFactory;
.source "LinphoneCoreFactoryImpl.java"


# static fields
.field public static ABI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 48
    invoke-static {}, Lorg/linphone/mediastream/Version;->getCpuAbis()Ljava/util/List;

    move-result-object v0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v1, 0x0

    .line 51
    const-string/jumbo v3, "gnustl_shared"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    const-string/jumbo v4, "LinphoneCoreFactoryImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Trying to load liblinphone for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ffmpeg-linphone-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->loadOptionalLibrary(Ljava/lang/String;)Z

    .line 57
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bctoolbox-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ortp-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mediastreamer_base-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mediastreamer_voip-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "linphone-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    sput-object v0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->ABI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v0, 0x1

    .line 70
    :goto_1
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    if-nez v1, :cond_1

    :goto_2
    move-object v1, v0

    .line 68
    goto/16 :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lorg/linphone/mediastream/Version;->dumpCapabilities()V

    .line 76
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactory;-><init>()V

    return-void
.end method

.method private native _createTunnelConfig()Ljava/lang/Object;
.end method

.method private native _setLogHandler(Ljava/lang/Object;)V
.end method

.method private native getAllDialPlanNative()[Lorg/linphone/core/DialPlan;
.end method

.method public static isArmv7()Z
    .locals 2

    .prologue
    .line 196
    const-string/jumbo v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "armv7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static loadOptionalLibrary(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 39
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    const/4 v0, 0x1

    .line 44
    :goto_0
    return v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    const-string/jumbo v1, "LinphoneCoreFactoryImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load optional library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadingDownloadedOpenH264(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/../lib/libmsopenh264.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "LinphoneCoreFactoryImpl"

    aput-object v3, v2, v0

    const-string/jumbo v3, " libmsopenh264 not found, we disable the download of Openh264"

    aput-object v3, v2, v1

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 118
    :goto_0
    return v0

    .line 111
    :cond_0
    new-instance v2, Lorg/linphone/tools/OpenH264DownloadHelper;

    invoke-direct {v2, p1}, Lorg/linphone/tools/OpenH264DownloadHelper;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v2}, Lorg/linphone/tools/OpenH264DownloadHelper;->isCodecFound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "LinphoneCoreFactoryImpl"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Loading OpenH264 downloaded plugin:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/linphone/tools/OpenH264DownloadHelper;->getFullPathLib()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v2}, Lorg/linphone/tools/OpenH264DownloadHelper;->getFullPathLib()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    :goto_1
    move v0, v1

    .line 118
    goto :goto_0

    .line 116
    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "LinphoneCoreFactoryImpl"

    aput-object v3, v2, v0

    const-string/jumbo v0, " Cannot load OpenH264 downloaded plugin"

    aput-object v0, v2, v1

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public createAccountCreator(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)Lorg/linphone/core/LinphoneAccountCreator;
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lorg/linphone/core/LinphoneAccountCreatorImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/LinphoneAccountCreatorImpl;-><init>(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lorg/linphone/core/LinphoneAuthInfoImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;
    .locals 7

    .prologue
    .line 202
    new-instance v0, Lorg/linphone/core/LinphoneAuthInfoImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/linphone/core/LinphoneAuthInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneContent;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    new-instance v2, Lorg/linphone/core/LinphoneContentImpl;

    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {v2, p1, p2, v0, v1}, Lorg/linphone/core/LinphoneContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public createLinphoneContent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lorg/linphone/core/LinphoneContent;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lorg/linphone/core/LinphoneContentImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/LinphoneContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V

    return-object v0
.end method

.method public createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
    .locals 4

    .prologue
    .line 144
    :try_start_0
    move-object v0, p2

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    iput-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    .line 145
    const/4 v1, 0x0

    .line 146
    if-eqz p2, :cond_0

    iget-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->loadingDownloadedOpenH264(Landroid/content/Context;)Z

    move-result v1

    .line 147
    :cond_0
    invoke-static {p2}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setContext(Ljava/lang/Object;)V

    .line 148
    new-instance v2, Lorg/linphone/core/LinphoneCoreImpl;

    invoke-direct {v2, p1}, Lorg/linphone/core/LinphoneCoreImpl;-><init>(Lorg/linphone/core/LinphoneCoreListener;)V

    .line 149
    invoke-interface {v2, v1}, Lorg/linphone/core/LinphoneCore;->enableDownloadOpenH264(Z)V

    .line 150
    if-eqz p2, :cond_1

    invoke-interface {v2, p2}, Lorg/linphone/core/LinphoneCore;->setContext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_1
    return-object v2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    const-string/jumbo v3, "Cannot create LinphoneCore"

    invoke-direct {v2, v3, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 126
    :try_start_0
    move-object v0, p5

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    iput-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    .line 127
    const/4 v1, 0x0

    .line 128
    if-eqz p5, :cond_3

    iget-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->loadingDownloadedOpenH264(Landroid/content/Context;)Z

    move-result v1

    move v4, v1

    .line 129
    :goto_0
    invoke-static {p5}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setContext(Ljava/lang/Object;)V

    .line 130
    if-nez p2, :cond_1

    move-object v3, v2

    .line 131
    :goto_1
    if-nez p3, :cond_2

    move-object v1, v2

    .line 132
    :goto_2
    new-instance v2, Lorg/linphone/core/LinphoneCoreImpl;

    invoke-direct {v2, p1, v3, v1, p4}, Lorg/linphone/core/LinphoneCoreImpl;-><init>(Lorg/linphone/core/LinphoneCoreListener;Ljava/io/File;Ljava/io/File;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v2, v4}, Lorg/linphone/core/LinphoneCore;->enableDownloadOpenH264(Z)V

    .line 134
    if-eqz p5, :cond_0

    invoke-interface {v2, p5}, Lorg/linphone/core/LinphoneCore;->setContext(Ljava/lang/Object;)V

    .line 135
    :cond_0
    return-object v2

    .line 130
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_1

    .line 131
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 136
    :catch_0
    move-exception v1

    .line 137
    new-instance v2, Lorg/linphone/core/LinphoneCoreException;

    const-string/jumbo v3, "Cannot create LinphoneCore"

    invoke-direct {v2, v3, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    move v4, v1

    goto :goto_0
.end method

.method public createLinphoneFriend()Lorg/linphone/core/LinphoneFriend;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->createLinphoneFriend(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;

    move-result-object v0

    return-object v0
.end method

.method public createLinphoneFriend(Ljava/lang/String;)Lorg/linphone/core/LinphoneFriend;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lorg/linphone/core/LinphoneFriendImpl;

    invoke-direct {v0, p1}, Lorg/linphone/core/LinphoneFriendImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createLpConfig(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lorg/linphone/core/LpConfigImpl;->fromFile(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public createLpConfigFromString(Ljava/lang/String;)Lorg/linphone/core/LpConfig;
    .locals 1

    .prologue
    .line 100
    invoke-static {p1}, Lorg/linphone/core/LpConfigImpl;->fromBuffer(Ljava/lang/String;)Lorg/linphone/core/LpConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public createOpenH264DownloadHelper()Lorg/linphone/tools/OpenH264DownloadHelper;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/linphone/core/LinphoneCoreException;

    const-string/jumbo v1, "Cannot create OpenH264DownloadHelper"

    invoke-direct {v0, v1}, Lorg/linphone/core/LinphoneCoreException;-><init>(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/tools/OpenH264DownloadHelper;

    iget-object v1, p0, Lorg/linphone/core/LinphoneCoreFactoryImpl;->fcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/linphone/tools/OpenH264DownloadHelper;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public createPresenceActivity(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceActivity;
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lorg/linphone/core/PresenceActivityImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/PresenceActivityImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceModel()Lorg/linphone/core/PresenceModel;
    .locals 1

    .prologue
    .line 229
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0}, Lorg/linphone/core/PresenceModelImpl;-><init>()V

    return-object v0
.end method

.method public createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0, p1, p2}, Lorg/linphone/core/PresenceModelImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceModel(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lorg/linphone/core/PresenceModelImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/linphone/core/PresenceModelImpl;-><init>(Lorg/linphone/core/PresenceActivityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createPresenceService(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)Lorg/linphone/core/PresenceService;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lorg/linphone/core/PresenceServiceImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/linphone/core/PresenceServiceImpl;-><init>(Ljava/lang/String;Lorg/linphone/core/PresenceBasicStatus;Ljava/lang/String;)V

    return-object v0
.end method

.method public createTunnelConfig()Lorg/linphone/core/TunnelConfig;
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->_createTunnelConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/TunnelConfig;

    return-object v0
.end method

.method public native enableLogCollection(Z)V
.end method

.method public getAllDialPlan()[Lorg/linphone/core/DialPlan;
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->getAllDialPlanNative()[Lorg/linphone/core/DialPlan;

    move-result-object v0

    return-object v0
.end method

.method public native setDebugMode(ZLjava/lang/String;)V
.end method

.method public native setLogCollectionPath(Ljava/lang/String;)V
.end method

.method public setLogHandler(Lorg/linphone/core/LinphoneLogHandler;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lorg/linphone/core/LinphoneCoreFactoryImpl;->_setLogHandler(Ljava/lang/Object;)V

    .line 165
    return-void
.end method
