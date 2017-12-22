.class public final Lcom/netflix/mediaclient/util/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field private static final decoderClassifier:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/netflix/mediaclient/util/MediaUtils$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/MediaUtils$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDecoderCapbilityForFormatIfUpdated()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const-string/jumbo v1, "video/hevc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MediaUtils;->getQualifiedDecoders(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 134
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDecoders()[Landroid/media/MediaCodecInfo;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 155
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 156
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 157
    return-object v0
.end method

.method private static getDecodersForK()[Landroid/media/MediaCodecInfo;
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    .line 145
    new-array v2, v1, [Landroid/media/MediaCodecInfo;

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 147
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 148
    aput-object v3, v2, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v2
.end method

.method private static getMaxLevelForProfile([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 226
    .line 227
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 228
    iget v4, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v4, p1, :cond_0

    .line 229
    iget v3, v3, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return v0
.end method

.method private static getQualifiedDecoders(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7

    .prologue
    .line 161
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 163
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecoders()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 169
    :goto_0
    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 170
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecodersForK()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 175
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 179
    invoke-virtual {v4, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    .line 180
    if-eqz v5, :cond_0

    const-string/jumbo v6, "adaptive-playback"

    invoke-virtual {v5, v6}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    invoke-static {v4, p0}, Lcom/netflix/mediaclient/util/MediaUtils;->logDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 182
    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 187
    :cond_3
    return-object v2
.end method

.method private static logDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 197
    const-string/jumbo v0, "secure-playback"

    invoke-virtual {v3, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v4

    .line 199
    const/4 v1, 0x0

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/util/MediaUtils;->decoderClassifier:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;

    .line 201
    if-nez v0, :cond_0

    move-object v0, v2

    .line 222
    :goto_0
    return-object v0

    .line 204
    :cond_0
    iget-object v3, v3, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getInterestedProfile()I

    move-result v5

    invoke-static {v3, v5}, Lcom/netflix/mediaclient/util/MediaUtils;->getMaxLevelForProfile([Landroid/media/MediaCodecInfo$CodecProfileLevel;I)I

    move-result v3

    .line 205
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getFhdLevel()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 206
    const/4 v0, 0x3

    .line 213
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 215
    :try_start_0
    const-string/jumbo v3, "name"

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v3, "securePlayback"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string/jumbo v3, "hdPlayback"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 222
    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getHdLevel()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 208
    const/4 v0, 0x2

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/MediaUtils$VideoDecoderClassfier;->getLowestLevel()I

    move-result v0

    if-lt v3, v0, :cond_3

    .line 210
    const/4 v0, 0x1

    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    .line 220
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
