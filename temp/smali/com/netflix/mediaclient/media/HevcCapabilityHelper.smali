.class public final Lcom/netflix/mediaclient/media/HevcCapabilityHelper;
.super Ljava/lang/Object;
.source "HevcCapabilityHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final HEIGHT_HD:I = 0x438

.field private static final HEIGHT_SD:I = 0x1e0

.field private static final MAX_FRAMERATE:D = 30.0

.field private static final TAG:Ljava/lang/String;

.field private static final WIDTH_HD:I = 0x780

.field private static final WIDTH_SD:I = 0x2d0

.field private static mTunneledModeSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mTunneledModeSelected:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static createVideoFormat(Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;II)Landroid/media/MediaFormat;
    .locals 5

    .prologue
    const/16 v0, 0x780

    const/16 v1, 0x438

    .line 220
    .line 222
    if-gt p2, v1, :cond_0

    if-le p1, v0, :cond_2

    :cond_0
    move p1, v0

    move p2, v1

    .line 229
    :cond_1
    :goto_0
    new-instance v2, Landroid/media/MediaFormat;

    invoke-direct {v2}, Landroid/media/MediaFormat;-><init>()V

    .line 230
    sget-object v3, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 264
    :goto_1
    return-object v2

    .line 225
    :cond_2
    if-lez p2, :cond_3

    if-gtz p1, :cond_1

    .line 226
    :cond_3
    const/16 p2, 0x1e0

    .line 227
    const/16 p1, 0x2d0

    goto :goto_0

    .line 232
    :pswitch_0
    const-string/jumbo v0, "mime"

    const-string/jumbo v1, "video/avc"

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v0, "max-width"

    invoke-virtual {v2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v0, "max-height"

    invoke-virtual {v2, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 235
    const-string/jumbo v0, "width"

    invoke-virtual {v2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 236
    const-string/jumbo v0, "height"

    invoke-virtual {v2, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 239
    :pswitch_1
    const-string/jumbo v3, "mime"

    const-string/jumbo v4, "video/hevc"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string/jumbo v3, "max-width"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 241
    const-string/jumbo v3, "max-height"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 242
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 243
    const-string/jumbo v0, "height"

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 246
    :pswitch_2
    const-string/jumbo v3, "mime"

    const-string/jumbo v4, "video/dolby-vision"

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string/jumbo v3, "profile"

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 248
    const-string/jumbo v3, "max-width"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 249
    const-string/jumbo v3, "max-height"

    invoke-virtual {v2, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 250
    const-string/jumbo v3, "width"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 251
    const-string/jumbo v0, "height"

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_1

    .line 254
    :pswitch_3
    const-string/jumbo v0, "mime"

    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v0, "max-width"

    invoke-virtual {v2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 256
    const-string/jumbo v0, "max-height"

    invoke-virtual {v2, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 257
    const-string/jumbo v0, "width"

    invoke-virtual {v2, v0, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 258
    const-string/jumbo v0, "height"

    invoke-virtual {v2, v0, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getDecoders(Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const-string/jumbo v0, "video/avc"

    .line 85
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 87
    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 88
    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v3, v1

    .line 89
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :pswitch_0
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    .line 80
    :pswitch_1
    const-string/jumbo v0, "video/dolby-vision"

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    .line 99
    invoke-virtual {v5, v0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    .line 102
    const-string/jumbo v7, "adaptive-playback"

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string/jumbo v7, "secure-playback"

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 117
    sget-boolean v7, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->mTunneledModeSelected:Z

    if-eqz v7, :cond_2

    .line 118
    const-string/jumbo v7, "tunneled-playback"

    invoke-virtual {v6, v7}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 127
    :cond_2
    sget-object v7, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 139
    :cond_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 129
    :pswitch_2
    const/16 v7, 0x1000

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->supportsCodecProfileLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 134
    :pswitch_3
    const/16 v7, 0x8

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->supportsCodecProfileLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 144
    :cond_4
    return-object v2

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getHevcDecoderName(Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get decoder name for Hevc type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->getDecoders(Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;)Ljava/util/List;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHighestLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 199
    .line 200
    iget-object v2, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 201
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 202
    iget v5, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v5, p2, :cond_0

    .line 203
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    :cond_1
    return v0
.end method

.method private getSupportedAvcDecoderFromList(Ljava/util/List;)Landroid/media/MediaCodecInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;)",
            "Landroid/media/MediaCodecInfo;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSupportedHevcDecoderFromList(Ljava/util/List;ZIID)Landroid/media/MediaCodecInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaCodecInfo;",
            ">;ZIID)",
            "Landroid/media/MediaCodecInfo;"
        }
    .end annotation

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodecInfo;

    .line 158
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    invoke-virtual {v3, p3, p4, p5, p6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 170
    sget-object v1, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "profileLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 173
    if-eqz p2, :cond_2

    .line 175
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 195
    :cond_1
    :goto_1
    return-object v0

    .line 181
    :cond_2
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 171
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Found no HEVC decoder"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getVideoMime(Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$1;->$SwitchMap$com$netflix$mediaclient$media$HevcCapabilityHelper$SupportedCapabilites:[I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/HevcCapabilityHelper$SupportedCapabilites;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 278
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 270
    :pswitch_0
    const-string/jumbo v0, "video/avc"

    goto :goto_0

    .line 272
    :pswitch_1
    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    .line 274
    :pswitch_2
    const-string/jumbo v0, "video/dolby-vision"

    goto :goto_0

    .line 276
    :pswitch_3
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static supportsCodecProfileLevel(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 148
    iget-object v2, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 149
    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-lt v4, p1, :cond_1

    .line 150
    const/4 v0, 0x1

    .line 153
    :cond_0
    return v0

    .line 148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
