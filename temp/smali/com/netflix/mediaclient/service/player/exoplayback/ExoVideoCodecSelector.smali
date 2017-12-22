.class public Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;
.super Ljava/lang/Object;
.source "ExoVideoCodecSelector.java"

# interfaces
.implements Lcom/google/android/exoplayer/MediaCodecSelector;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hasDolbyVisionDecoder:Z

.field private static final hasHEVCHardwareDecoder:Z

.field private static final hasHdr10Decoder:Z

.field private static final hasSecureHEVCDecoder:Z

.field private static final hasSecureVP9Decoder:Z

.field private static final hasVP9HardwareDecoder:Z

.field private static final sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

.field private static final sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

.field private static final supportVP9:Z

.field private static useSoftwareDecoder:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    .line 32
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->isVideoFormatSupported(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->supportVP9:Z

    .line 34
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    .line 35
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    .line 36
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 37
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 38
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasVP9HardwareDecoder:Z

    .line 39
    const-string/jumbo v0, "video/hevc"

    sget-object v1, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHEVCHardwareDecoder:Z

    .line 40
    const-string/jumbo v0, "video/hevc"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHdr10Decoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHdr10Decoder:Z

    .line 41
    const-string/jumbo v0, "video/dolby-vision"

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasDolbyVisionDecoder:Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSoftwareDecoder(Ljava/lang/String;)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 4

    .prologue
    .line 78
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 86
    const-string/jumbo v1, ".google."

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/DecoderInfo;

    .line 88
    iget-object v3, v0, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasHardwareDecoder(Ljava/lang/String;Lcom/google/android/exoplayer/DecoderInfo;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_1

    .line 119
    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/exoplayer/DecoderInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 124
    :cond_1
    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static hasHdr10Decoder(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureDecoder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->supportsCodecProfileLevel(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasSecureDecoder(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHasDolbyVisionDecoder()Z
    .locals 1

    .prologue
    .line 184
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasDolbyVisionDecoder:Z

    return v0
.end method

.method public static isHasHEVCHardwareDecoder()Z
    .locals 1

    .prologue
    .line 176
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHEVCHardwareDecoder:Z

    return v0
.end method

.method public static isHasHEVCSoftwareDecoder()Z
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHasHdr10Decoder()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasHdr10Decoder:Z

    return v0
.end method

.method public static isHasSecureHEVCDecoder()Z
    .locals 1

    .prologue
    .line 160
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    return v0
.end method

.method public static isHasSecureVP9Decoder()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    return v0
.end method

.method public static isHasVP9HardwareDecoder()Z
    .locals 1

    .prologue
    .line 172
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasVP9HardwareDecoder:Z

    return v0
.end method

.method public static isHasVP9SoftwareDecoder()Z
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportVP9()Z
    .locals 1

    .prologue
    .line 180
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->supportVP9:Z

    return v0
.end method

.method public static isUseSoftwareDecoder()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    return v0
.end method

.method private static isVideoFormatSupported(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 103
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v1}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUseSoftwareDecoder(Z)V
    .locals 0

    .prologue
    .line 149
    sput-boolean p0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    .line 150
    return-void
.end method

.method private static supportsCodecProfileLevel(Ljava/lang/String;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v2

    .line 49
    iget-object v2, v2, Lcom/google/android/exoplayer/DecoderInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 50
    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 51
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I
    :try_end_0
    .catch Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v5, p1, :cond_0

    .line 58
    :goto_1
    return v0

    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lcom/google/android/exoplayer/MediaCodecUtil$DecoderQueryException;->printStackTrace()V

    :cond_1
    move v0, v1

    .line 58
    goto :goto_1
.end method


# virtual methods
.method public getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    if-eqz v2, :cond_0

    .line 130
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sVP9SoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    .line 139
    :goto_0
    return-object v0

    .line 132
    :cond_0
    if-eqz p2, :cond_2

    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureVP9Decoder:Z

    if-eqz v2, :cond_2

    .line 139
    :cond_1
    :goto_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;Z)Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 132
    goto :goto_1

    .line 133
    :cond_3
    const-string/jumbo v2, "video/hevc"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 134
    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->useSoftwareDecoder:Z

    if-eqz v2, :cond_4

    .line 135
    sget-object v0, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->sHEVCSoftwareDecoder:Lcom/google/android/exoplayer/DecoderInfo;

    goto :goto_0

    .line 137
    :cond_4
    if-eqz p2, :cond_5

    sget-boolean v2, Lcom/netflix/mediaclient/service/player/exoplayback/ExoVideoCodecSelector;->hasSecureHEVCDecoder:Z

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, p2

    goto :goto_1
.end method

.method public getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/google/android/exoplayer/MediaCodecUtil;->getPassthroughDecoderInfo()Lcom/google/android/exoplayer/DecoderInfo;

    move-result-object v0

    return-object v0
.end method
