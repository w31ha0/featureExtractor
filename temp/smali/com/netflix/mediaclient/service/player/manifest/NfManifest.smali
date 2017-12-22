.class public Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
.super Ljava/lang/Object;
.source "NfManifest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_10S_GOP:I = 0x2710

.field private static final DEFAULT_2S_GOP:I = 0x7d0

.field private static final DEFAULT_MANIFEST_LIFE_MS:J = 0x6ddd00L

.field private static final DRM_MANIFEST_LIFE_MS:J = 0xdbba0L

.field public static final EXPIRATION:Ljava/lang/String; = "expiration"

.field public static final LOCAL_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TAG:Ljava/lang/String;

.field private static sManifestLifeFromConfig:J


# instance fields
.field private aspectRatioHeight:I

.field private aspectRatioWidth:I

.field private birthTimeMs:J

.field private croppedHeight:I

.field private croppedWidth:I

.field private defaultLifeMs:J

.field private drmHeader:[B

.field private duration:J

.field private final expiryTimeInEndPointTime:J

.field private hasDrmProfile:Z

.field private mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

.field private mLdlLicenseLink:Ljava/lang/String;

.field private mLicenseLink:Ljava/lang/String;

.field private mManifestFetchedTimeInMs:J

.field private mNumVideoTracks:I

.field private mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

.field private mWatermark:Lcom/netflix/mediaclient/media/Watermark;

.field private manifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

.field protected manifestJSONObject:Lorg/json/JSONObject;

.field private maxGopSize:I

.field private movieId:J

.field private playbackContextId:Ljava/lang/String;

.field private selfInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    .line 392
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->maxGopSize:I

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mManifestFetchedTimeInMs:J

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "movieId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->movieId:J

    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackContextId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->playbackContextId:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "duration"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->duration:J

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "expiration"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    .line 98
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 99
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expiryTime is less than currentTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v3, "video_tracks"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    iput v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mNumVideoTracks:I

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 105
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v3, "drmHeader"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    if-eqz v3, :cond_1

    .line 113
    const-string/jumbo v4, "bytes"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmHeader:[B

    .line 114
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    .line 116
    :cond_1
    const-string/jumbo v3, "maxWidth"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 117
    const-string/jumbo v4, "maxHeight"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 118
    const-string/jumbo v5, "pixelAspectX"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 119
    const-string/jumbo v6, "pixelAspectY"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 120
    const-string/jumbo v7, "maxCroppedWidth"

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedWidth:I

    .line 121
    const-string/jumbo v7, "maxCroppedHeight"

    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedHeight:I

    .line 123
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    if-lez v5, :cond_3

    if-lez v6, :cond_3

    .line 124
    const/16 v7, 0x64

    iput v7, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    .line 125
    int-to-long v8, v3

    int-to-long v10, v5

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    mul-int v5, v4, v6

    int-to-long v6, v5

    div-long v6, v8, v6

    long-to-int v5, v6

    iput v5, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    .line 126
    iget v5, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedWidth:I

    int-to-long v6, v5

    iget v5, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    int-to-long v8, v5

    mul-long/2addr v6, v8

    int-to-long v8, v3

    div-long/2addr v6, v8

    long-to-int v3, v6

    iput v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedWidth:I

    .line 127
    iget v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedHeight:I

    int-to-long v6, v3

    iget v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    int-to-long v8, v3

    mul-long/2addr v6, v8

    int-to-long v4, v4

    div-long v4, v6, v4

    long-to-int v3, v4

    iput v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedHeight:I

    .line 133
    :goto_0
    const-string/jumbo v3, "profile"

    const-string/jumbo v4, "default"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->isVP9profile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2710

    :goto_1
    iput v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->maxGopSize:I

    .line 143
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing defaultTrackOrderList"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "defaultTrackOrderList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 146
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    move v0, v2

    .line 147
    :goto_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 148
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    new-instance v3, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mManifestFetchedTimeInMs:J

    invoke-direct {v3, v4, v6, v7}, Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;-><init>(Lorg/json/JSONObject;J)V

    aput-object v3, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 129
    :cond_3
    const/16 v3, 0x9

    iput v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    .line 130
    const/16 v3, 0x10

    iput v3, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 134
    goto :goto_1

    .line 155
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    if-eqz v0, :cond_6

    const-wide/32 v0, 0xdbba0

    :goto_3
    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->defaultLifeMs:J

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->birthTimeMs:J

    .line 158
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->retrieveLicenseLinks()V

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->retrieveWatermark()V

    .line 161
    new-instance v1, Lcom/netflix/mediaclient/media/PlayerManifestData;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->duration:J

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseAvailableBitrates()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    move-result-object v5

    iget v6, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->maxGopSize:I

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/media/PlayerManifestData;-><init>(J[Ljava/lang/String;Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing manifest end."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 155
    :cond_6
    const-wide/32 v0, 0x6ddd00

    goto :goto_3
.end method

.method static configureManifestLife(J)V
    .locals 0

    .prologue
    .line 394
    sput-wide p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    .line 395
    return-void
.end method

.method private getPriority()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->getPriority()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method private isVP9profile(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vp9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAndCacheManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 400
    invoke-static {p0, v0, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private parseAvailableBitrates()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getVideoTracks()Ljava/util/List;

    move-result-object v0

    .line 365
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 366
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 367
    iget v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->bitrate:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 371
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 372
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 373
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 372
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 375
    :cond_1
    return-object v2
.end method

.method public static parseManifestResponse(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 397
    invoke-static {p0, v0, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseManifestResponse(Lorg/json/JSONObject;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static parseManifestResponse(Lorg/json/JSONObject;ZZ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing manifest response start ..."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 408
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 413
    const-string/jumbo v3, "timestamp"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "skip bad entry to break manifest fetch loop"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-object v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseManifestResponse error:"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    new-instance v2, Ljava/lang/Throwable;

    const-string/jumbo v3, "parseManifestResponse error:"

    invoke-direct {v2, v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 440
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing manifest response end."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    return-object v1

    .line 421
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 423
    if-eqz p2, :cond_2

    .line 424
    :try_start_2
    new-instance v3, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/player/manifest/CacheCompressedNfManifest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 430
    :catch_1
    move-exception v0

    .line 431
    :try_start_3
    sget-object v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "parsing error:"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "parseManifestResponse adding manifest error:"

    invoke-direct {v3, v4, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 425
    :cond_2
    if-eqz p1, :cond_3

    .line 426
    :try_start_4
    new-instance v3, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 428
    :cond_3
    new-instance v3, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-direct {v3, v0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method private retrieveLicenseLinks()V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 462
    if-eqz v0, :cond_1

    .line 463
    const-string/jumbo v1, "license"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 464
    const-string/jumbo v2, "ldl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 466
    if-eqz v1, :cond_0

    const-string/jumbo v2, "href"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const-string/jumbo v2, "href"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mLicenseLink:Ljava/lang/String;

    .line 469
    :cond_0
    if-eqz v0, :cond_1

    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    const-string/jumbo v1, "href"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mLdlLicenseLink:Ljava/lang/String;

    .line 473
    :cond_1
    return-void
.end method

.method private retrieveWatermark()V
    .locals 5

    .prologue
    .line 484
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "watermarkInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "watermarkInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/netflix/mediaclient/media/Watermark;->createWatermark(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/Watermark;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    .line 488
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "watermark : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "error retrieving watermark"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)I
    .locals 5

    .prologue
    .line 380
    invoke-direct {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getPriority()I

    move-result v1

    sub-int/2addr v0, v1

    .line 381
    if-eqz v0, :cond_0

    .line 388
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v0

    .line 385
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getRemainLife()J

    move-result-wide v2

    .line 386
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->compareTo(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)I

    move-result v0

    return v0
.end method

.method public getAspectWidthHeight()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 194
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->aspectRatioHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mDefaultTrackOrderList:[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;

    return-object v0
.end method

.method public getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 304
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getAudioTrackList, manifest JSONObject is not loaded "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-array v0, v2, [Lcom/netflix/mediaclient/media/AudioSource;

    .line 326
    :cond_0
    :goto_0
    return-object v0

    .line 309
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing audio_tracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "audio_tracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 311
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 313
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/AudioSource;

    move v1, v2

    .line 314
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 315
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/player/NccpAudioSource;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " exception when parsing audio_tracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/AudioSource;

    goto :goto_0
.end method

.method public getCroppedWidthHeight()Landroid/graphics/Point;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedWidth:I

    iget v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->croppedHeight:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getDrmHeader()[B
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->drmHeader:[B

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->duration:J

    return-wide v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getLdlLicenseLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mLdlLicenseLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mLicenseLink:Ljava/lang/String;

    return-object v0
.end method

.method public getLicenseLinkJson()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_0

    const-string/jumbo v1, "license"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "links"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestData:Lcom/netflix/mediaclient/media/PlayerManifestData;

    return-object v0
.end method

.method public getManifestExpiryInEndPointTime()J
    .locals 2

    .prologue
    .line 359
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->expiryTimeInEndPointTime:J

    return-wide v0
.end method

.method public getMovieId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->movieId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getNumVideoTracks()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mNumVideoTracks:I

    return v0
.end method

.method public getPlaybackContextId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->playbackContextId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackDisplaySpec()Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;
    .locals 3

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAspectWidthHeight()Landroid/graphics/Point;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getCroppedWidthHeight()Landroid/graphics/Point;

    move-result-object v1

    .line 502
    new-instance v2, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/media/PlayerManifestData$PlaybackDisplaySpec;-><init>(Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v2
.end method

.method public getPrefetchSource()Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    return-object v0
.end method

.method public getRemainLife()J
    .locals 6

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->selfInvalidated:Z

    if-eqz v0, :cond_0

    .line 338
    const-wide/high16 v0, -0x8000000000000000L

    .line 347
    :goto_0
    return-wide v0

    .line 340
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->birthTimeMs:J

    sub-long/2addr v0, v2

    .line 342
    sget-wide v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 343
    sget-wide v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->sManifestLifeFromConfig:J

    sub-long v0, v2, v0

    goto :goto_0

    .line 345
    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->defaultLifeMs:J

    sub-long v0, v2, v0

    goto :goto_0
.end method

.method public getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 233
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing timedtexttracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 235
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "timedtexttracks, manifest JSONObject is not loaded "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-array v0, v2, [Lcom/netflix/mediaclient/media/Subtitle;

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "timedtexttracks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 241
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Subtitle;

    move v1, v2

    .line 242
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 243
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/netflix/mediaclient/ui/player/NccpSubtitle;->newInstance(Lorg/json/JSONObject;I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exception when parsing timedtexttracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/Subtitle;

    goto :goto_0
.end method

.method public getSubtitleTracks(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/SubtitleTrackData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 256
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 257
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSubtitleTracks, manifest JSONObject is not loaded "

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    :goto_0
    return-object v0

    .line 260
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing timedtexttracks"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "timedtexttracks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 262
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 265
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 266
    new-instance v4, Lcom/netflix/mediaclient/media/SubtitleTrackData;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5, v2, p1, p2}, Lcom/netflix/mediaclient/media/SubtitleTrackData;-><init>(Lorg/json/JSONObject;IJ)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 271
    goto :goto_0

    .line 272
    :catch_0
    move-exception v1

    .line 273
    sget-object v2, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "exception when parsing timedtexttracks "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getTrickplayUrls()[Lcom/netflix/mediaclient/media/TrickplayUrl;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 280
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getTrickplayUrls, manifest JSONObject is not loaded "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-array v0, v2, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    .line 299
    :cond_0
    :goto_0
    return-object v0

    .line 283
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parsing trickplays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v1, "trickplays"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 285
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 287
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    move v1, v2

    .line 288
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 289
    new-instance v4, Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/netflix/mediaclient/media/TrickplayUrl;-><init>(Lorg/json/JSONObject;)V

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, " exception when parsing trickplays"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_2
    new-array v0, v2, [Lcom/netflix/mediaclient/media/TrickplayUrl;

    goto :goto_0
.end method

.method public getVideoTracks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getVideoTracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->parseVideoTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWatermark()Lcom/netflix/mediaclient/media/Watermark;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mWatermark:Lcom/netflix/mediaclient/media/Watermark;

    return-object v0
.end method

.method public hasDrm()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->hasDrmProfile:Z

    return v0
.end method

.method protected invalidateSelf()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->selfInvalidated:Z

    .line 173
    return-void
.end method

.method public limitVp9VideoHeight(I)V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    if-lez p1, :cond_1

    .line 511
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "will not limit video height %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string/jumbo v0, "vp9-profile0-"

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "video_tracks"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 517
    if-eqz v3, :cond_0

    move v2, v1

    .line 518
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 519
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 520
    const-string/jumbo v0, "profile"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "vp9-profile0-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 518
    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 524
    :cond_3
    const-string/jumbo v0, "maxHeight"

    const v5, 0x7fffffff

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 525
    sget-object v5, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "has video track with max height %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 526
    if-le v0, p1, :cond_2

    .line 527
    const-string/jumbo v0, "streams"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 528
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 532
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 533
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 534
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 535
    const-string/jumbo v8, "res_h"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 536
    if-gt v7, p1, :cond_4

    .line 537
    sget-object v8, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "add stream with height %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 538
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 533
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 540
    :cond_4
    sget-object v8, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "remove stream with height %d"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v8, v9, v10}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 547
    :catch_0
    move-exception v0

    .line 548
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "limitVp9VideoHeight fail to parse video_tracks."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_5
    :try_start_1
    const-string/jumbo v0, "streams"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public parseVideoTracks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    sget-object v0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseVideoTracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    const/4 v0, 0x0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    const-string/jumbo v2, "video_tracks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 216
    :goto_0
    if-eqz v2, :cond_1

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 218
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/media/manifest/NfManifestParser;->parseVideoTrack(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    move-result-object v0

    .line 219
    if-eqz v0, :cond_0

    .line 220
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 213
    :catch_0
    move-exception v1

    .line 214
    sget-object v1, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no video_tracks"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    .line 224
    :cond_1
    return-object v3
.end method

.method setPrefetchSource(Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    .line 335
    return-void
.end method
