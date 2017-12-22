.class public Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;
.super Ljava/lang/Object;
.source "PdsManifestData.java"


# static fields
.field private static final MAX_NUM_STREAMS_PER_TRACK:I = 0x1e

.field private static TAG:Ljava/lang/String;


# instance fields
.field private defaultMediaId:Ljava/lang/String;

.field private mEventsLink:Lorg/json/JSONObject;

.field private mNumVideoTracks:I

.field private mPdsCompositeMediaIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdsDownloadIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdsTrackIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsDownloadIds:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsTrackIds:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsCompositeMediaIds:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->buildPdsTrackAndDownloadIdLists(Lorg/json/JSONObject;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->buildDefaultMediaId(Lorg/json/JSONObject;)V

    .line 41
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->buildCompositeMediaIdSet(Lorg/json/JSONObject;)V

    .line 42
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getNumVideoTracks()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mNumVideoTracks:I

    .line 43
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->retrieveEventsLink(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mEventsLink:Lorg/json/JSONObject;

    .line 44
    return-void
.end method

.method private addToPdsTrackAndDownloadIdList(Lorg/json/JSONArray;I)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v3, v2

    .line 131
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 132
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "new_track_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsTrackIds:Ljava/util/Map;

    add-int v5, p2, v3

    invoke-direct {p0, v5}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getPdsMediaIdMapIndex(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v1, "streams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v1, v2

    .line 142
    :goto_2
    if-ge v1, v5, :cond_2

    .line 143
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 144
    const-string/jumbo v6, "downloadable_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsDownloadIds:Ljava/util/Map;

    add-int v7, p2, v3

    invoke-direct {p0, v7, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getPdsDownloadIdMapIndex(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 131
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error add tracks to downloadIdList"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildCompositeMediaIdSet(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 96
    :try_start_0
    const-string/jumbo v0, "media"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 97
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 98
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsCompositeMediaIds:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to get tracks"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :cond_1
    return-void
.end method

.method private buildDefaultMediaId(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    const-string/jumbo v0, "defaultTrackOrderList"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 55
    const v3, 0x7fffffff

    .line 57
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 58
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    const-string/jumbo v5, "preferenceOrder"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "mediaId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    const-string/jumbo v5, "preferenceOrder"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 61
    if-ge v5, v3, :cond_0

    .line 62
    const-string/jumbo v5, "mediaId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "defaultTrackOrderlist parsing exception"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->defaultMediaId:Ljava/lang/String;

    .line 71
    :cond_2
    return-void
.end method

.method private buildPdsTrackAndDownloadIdLists(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    const-string/jumbo v0, "video_tracks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "audio_tracks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 117
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->addToPdsTrackAndDownloadIdList(Lorg/json/JSONArray;I)V

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->addToPdsTrackAndDownloadIdList(Lorg/json/JSONArray;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unable to get tracks"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getPdsDownloadIdMapIndex(II)I
    .locals 1

    .prologue
    .line 155
    mul-int/lit8 v0, p1, 0x1e

    add-int/2addr v0, p2

    return v0
.end method

.method private getPdsMediaIdMapIndex(I)I
    .locals 0

    .prologue
    .line 159
    return p1
.end method

.method private retrieveEventsLink(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_0

    .line 185
    const-string/jumbo v0, "events"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEventsLink: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getDefaultMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->defaultMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultSubtitleMediaId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->defaultMediaId:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 87
    const-string/jumbo v4, "T:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    :goto_1
    return-object v0

    .line 86
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDownloadId(II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsDownloadIds:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getPdsDownloadIdMapIndex(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEventsLink()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mEventsLink:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMediaId(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsTrackIds:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->getPdsMediaIdMapIndex(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNumVideoTracks()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mNumVideoTracks:I

    return v0
.end method

.method public isMediaIdInManifest(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsCompositeMediaIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsManifestData;->mPdsCompositeMediaIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
