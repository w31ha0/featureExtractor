.class public Lorg/linphone/mediastream/MediastreamerAndroidContext;
.super Ljava/lang/Object;
.source "MediastreamerAndroidContext.java"


# static fields
.field private static final DEVICE_CHOICE:I = 0x0

.field public static final DEVICE_HAS_BUILTIN_AEC:I = 0x1

.field public static final DEVICE_HAS_BUILTIN_AEC_CRAPPY:I = 0x2

.field public static final DEVICE_HAS_BUILTIN_OPENSLES_AEC:I = 0x8

.field public static final DEVICE_USE_ANDROID_MIC:I = 0x4

.field private static instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static enableFilterFromName(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->enableFilterFromNameImpl(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v1, Lorg/linphone/mediastream/MediastreamException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "enable"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " filter  name ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/linphone/mediastream/MediastreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string/jumbo v0, "disable"

    goto :goto_0

    .line 105
    :cond_1
    return-void
.end method

.method private native enableFilterFromNameImpl(Ljava/lang/String;Z)I
.end method

.method public static filterFromNameEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->filterFromNameEnabledImpl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native filterFromNameEnabledImpl(Ljava/lang/String;)Z
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;

    invoke-direct {v0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;-><init>()V

    sput-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    .line 47
    :cond_0
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 85
    .line 87
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 91
    :goto_0
    return p1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to integer ; using default value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setContext(Ljava/lang/Object;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 59
    :cond_0
    check-cast p0, Landroid/content/Context;

    sput-object p0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    .line 61
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 62
    sget-object v1, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.audio.pro"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 63
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Device] hasLowLatencyFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", hasProFeature: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 65
    const/16 v1, 0x100

    .line 66
    const v2, 0xac44

    .line 67
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v3

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v0, v4, :cond_1

    .line 71
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "audio"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 72
    const-string/jumbo v4, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-static {v4, v1}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 74
    const-string/jumbo v4, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0, v2}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    new-array v2, v5, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[Device] Output frames per buffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", output sample rates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for OpenSLES MS sound card."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 77
    invoke-direct {v3, v0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setDeviceFavoriteSampleRate(I)V

    .line 78
    invoke-direct {v3, v1}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setDeviceFavoriteBufferSize(I)V

    goto/16 :goto_0

    .line 80
    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "Android < 4.4 detected, android context not used."

    aput-object v1, v0, v6

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private native setDeviceFavoriteBufferSize(I)V
.end method

.method private native setDeviceFavoriteSampleRate(I)V
.end method
