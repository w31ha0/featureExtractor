.class public Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;
.super Ljava/lang/Object;
.source "PdsPlayTimes.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final BOOKMARK_NOT_STARTED:J

.field private audioPlayTimesMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAudioId:Ljava/lang/String;

.field private mCurrentAudioMediaId:Ljava/lang/String;

.field private mCurrentTextId:Ljava/lang/String;

.field private mCurrentTextMediaId:Ljava/lang/String;

.field private mCurrentVideoId:Ljava/lang/String;

.field private mCurrentVideoMediaId:Ljava/lang/String;

.field private mPlayTimesLock:Ljava/lang/Object;

.field private mPrevBookmarkMs:J

.field private mSubtitlePlaying:Z

.field private mTotalPlayTime:J

.field private textPlayTimesMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private videoPlayTimesMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPlayTimesLock:Ljava/lang/Object;

    .line 39
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->BOOKMARK_NOT_STARTED:J

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->audioPlayTimesMs:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->videoPlayTimesMs:Ljava/util/Map;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->textPlayTimesMs:Ljava/util/Map;

    .line 47
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    .line 49
    return-void
.end method

.method private canUpdatePlayTimes()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillStreamPlayTimes(Lorg/json/JSONArray;Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 261
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 264
    const-string/jumbo v3, "downloadableId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string/jumbo v3, "duration"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error adding stream playTimes"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_1
    return-object p1
.end method

.method private hasAudioVideoStarted()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private streamPlayTimesMatchTotal(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/util/Map;Ljava/lang/Long;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 243
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 256
    :goto_0
    return v4

    .line 247
    :cond_0
    const-wide/16 v0, 0x0

    .line 248
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 250
    goto :goto_1

    .line 252
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move v0, v4

    .line 253
    :goto_2
    if-nez v0, :cond_2

    .line 254
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "type: %s, time:%d != total: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v0, v1, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move v0, v4

    :goto_3
    move v4, v0

    goto :goto_0

    :cond_3
    move v0, v5

    .line 252
    goto :goto_2

    :cond_4
    move v0, v5

    .line 256
    goto :goto_3
.end method

.method private updateCurrentIds(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCurrentIds tye:%s, downloadId:%s (%s), mCurrentAudioId: %s, mCurrentVideoId: %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    aput-object v3, v2, v8

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 168
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignoring null mediaId for streamType:%s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 187
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->AUDIO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    if-ne v0, p1, :cond_1

    .line 174
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    .line 185
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCurrentIds updated - mCurrentAudioId: %s(%s), mCurrentVideoId: %s(%s), mCurrentTextId: %s(%s)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoMediaId:Ljava/lang/String;

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 176
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->VIDEO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    if-ne v0, p1, :cond_2

    .line 177
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    .line 178
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoMediaId:Ljava/lang/String;

    goto :goto_1

    .line 179
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->TIMED_TEXT:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    if-ne v0, p1, :cond_3

    .line 180
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown streamType: %s received. did:%s (%s)"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private updatePlayTimes(J)V
    .locals 5

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->canUpdatePlayTimes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Ignore playTime update mCurrentAudioId: %s, mCurrentVideoId: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 217
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPlayTimesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateTotalPlayTime(Ljava/lang/Long;)V

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->audioPlayTimesMs:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateStreamPlayTime(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->videoPlayTimesMs:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateStreamPlayTime(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->textPlayTimesMs:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateStreamPlayTime(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateStreamPlayTime(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 229
    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 230
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void

    .line 229
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private updateTotalPlayTime(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 224
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mTotalPlayTime:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mTotalPlayTime:J

    .line 225
    return-void
.end method

.method private validatePlayTimes()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method


# virtual methods
.method public getCurrentAudioMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentMediaId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "currentMediaId null: audio: %s, video: %s, text: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoMediaId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioMediaId:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentSubtitleMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 84
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 85
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 88
    :try_start_0
    const-string/jumbo v4, "total"

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mTotalPlayTime:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    invoke-static {v4}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->audioPlayTimesMs:Ljava/util/Map;

    invoke-direct {p0, v0, v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->fillStreamPlayTimes(Lorg/json/JSONArray;Ljava/util/Map;)Lorg/json/JSONArray;

    .line 93
    :cond_0
    sget-object v4, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->AUDIO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->videoPlayTimesMs:Ljava/util/Map;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->fillStreamPlayTimes(Lorg/json/JSONArray;Ljava/util/Map;)Lorg/json/JSONArray;

    .line 98
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->VIDEO:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->textPlayTimesMs:Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->fillStreamPlayTimes(Lorg/json/JSONArray;Ljava/util/Map;)Lorg/json/JSONArray;

    .line 103
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->TIMED_TEXT:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    sget-object v2, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "error creating playtime json exception"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getTotalPlayTime()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mTotalPlayTime:J

    return-wide v0
.end method

.method public setDefaultSubtitleMediaId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextMediaId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public stopTicker(J)V
    .locals 5

    .prologue
    .line 133
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop ticker mSubtitlePlaying: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateTicker(J)V

    .line 135
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    .line 136
    return-void
.end method

.method public streamChanged(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stream changed type: %s, downloadId: %s (%s), mSubtitlePlaying:%b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v4

    aput-object p3, v2, v6

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 142
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;->TIMED_TEXT:Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;

    if-ne v0, p1, :cond_0

    .line 143
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->hasAudioVideoStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateCurrentIds(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->hasAudioVideoStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "audio/video has not started - ignore streamEvent %s; mCurrentAudioId: %s, mCurrentVideoId: %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p1, v2, v5

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updateCurrentIds(Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/IPdsPlayTimes$StreamType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public subtitleVisibilityChanged(Z)V
    .locals 5

    .prologue
    .line 160
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "subtitleVisibilityChanged : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 161
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v2, 0x27

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PdsPlayTimes{mCurrentAudioId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentAudioId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentVideoId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentVideoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCurrentTextId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mCurrentTextId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTotalPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mTotalPlayTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", audioPlayTimesMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->audioPlayTimesMs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videoPlayTimesMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->videoPlayTimesMs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", textPlayTimesMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->textPlayTimesMs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateTicker(J)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update ticker prevBookMarkMs: %d bookmarkMs: %d, delta:(%d),  mSubtitlePlaying : %b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    .line 114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mSubtitlePlaying:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 113
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 115
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 116
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    .line 128
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 122
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "un captured seek?. bookmarkMs: %d < prevBookmark %d"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 123
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    goto :goto_0

    .line 126
    :cond_1
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    sub-long v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->updatePlayTimes(J)V

    .line 127
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/streaming/PdsPlayTimes;->mPrevBookmarkMs:J

    goto :goto_0
.end method
