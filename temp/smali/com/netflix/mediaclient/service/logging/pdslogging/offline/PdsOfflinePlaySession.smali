.class public Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;
.super Ljava/lang/Object;
.source "PdsOfflinePlaySession.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/pdslogging/IPdsOfflinePlaySession;


# static fields
.field private static final KEEP_ALIVE_DELAY:I = 0xea60

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private DUMP_PDS_MESSAGES:Z

.field private mAppSessionId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentBookmarkMs:J

.field private mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

.field private mDxid:Ljava/lang/String;

.field private mEventsLink:Lorg/json/JSONObject;

.field private mLegacyManifest:Z

.field private mNextHeartbeatMs:J

.field private mOxid:Ljava/lang/String;

.field private mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

.field private mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private mPlayStartClientTime:J

.field private mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

.field private mPlayableId:Ljava/lang/String;

.field private mStartPositionMs:J

.field private mUserSessionId:Ljava/lang/String;

.field private mXid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/IPdsLogging;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->DUMP_PDS_MESSAGES:Z

    .line 63
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mXid:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayableId:Ljava/lang/String;

    .line 66
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    .line 67
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mStartPositionMs:J

    .line 68
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mAppSessionId:Ljava/lang/String;

    .line 69
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mUserSessionId:Ljava/lang/String;

    .line 70
    iput-object p8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    .line 71
    iput-object p9, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 73
    return-void
.end method

.method private buildBasePdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 202
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mEventsLink:Lorg/json/JSONObject;

    .line 206
    const-string/jumbo v2, "version"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string/jumbo v2, "url"

    const-string/jumbo v3, "href"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string/jumbo v3, "event"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string/jumbo v3, "xid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mXid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string/jumbo v3, "clientTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string/jumbo v3, "position"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string/jumbo v3, "startPosition"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mStartPositionMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string/jumbo v3, "sessionStartTime"

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayStartClientTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 218
    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-ne p1, v3, :cond_0

    .line 219
    const-string/jumbo v3, "sessionEndTime"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_0
    const-string/jumbo v3, "trackId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v6}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v3, "sessionId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string/jumbo v3, "appId"

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    sget-object v3, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-eq v3, p1, :cond_1

    .line 234
    const-string/jumbo v3, "playTimes"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 238
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 239
    const-string/jumbo v7, "trackId"

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v8}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string/jumbo v7, "rank"

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v8}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getVideoPos()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v7, "row"

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v8}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getListPos()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    if-eqz v7, :cond_2

    .line 244
    const-string/jumbo v7, "uiDownloadContext"

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    invoke-virtual {v8}, Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    :cond_2
    const-string/jumbo v7, "uiplaycontext"

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string/jumbo v6, "sessionParams"

    invoke-virtual {v2, v6, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mLegacyManifest:Z

    if-nez v3, :cond_3

    .line 251
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :goto_0
    return-object v0

    .line 255
    :cond_3
    const-string/jumbo v3, "method"

    const-string/jumbo v6, "rel"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string/jumbo v1, "oxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mOxid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string/jumbo v1, "dxid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mDxid:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string/jumbo v1, "movieId"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    const-string/jumbo v1, "appid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mAppSessionId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    const-string/jumbo v1, "sessionid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mUserSessionId:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v1, "trackid"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v3}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v1, "sessionStartEpoch"

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayStartClientTime:J

    invoke-virtual {v2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v1, "sessionEndEpoch"

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 265
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 266
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 268
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 269
    const-string/jumbo v3, "stopEvents"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error building basePdsEvent, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 178
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "buildPdsEvent %s, bookmarkInMs(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mLegacyManifest:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    if-eq p1, v0, :cond_0

    .line 180
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "skip building non stop message for Legacy manifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    .line 198
    :goto_0
    :pswitch_0
    return-object v0

    .line 184
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildBasePdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$1;->$SwitchMap$com$netflix$mediaclient$service$player$bladerunnerclient$IBladeRunnerClient$PdsEventType:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "unexpected eventType, %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateNextHeartbeatTime()V
    .locals 4

    .prologue
    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mNextHeartbeatMs:J

    .line 282
    return-void
.end method


# virtual methods
.method public notifyPlayProgress(Landroid/content/Context;JLorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 143
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyPlayProgress %d, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 146
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    .line 150
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayStartClientTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mNextHeartbeatMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->updateNextHeartbeatTime()V

    .line 152
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->KEEP_ALIVE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    invoke-direct {p0, v0, p4, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    .line 156
    :cond_1
    return-void
.end method

.method public onManifest(Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;)V
    .locals 3

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    const-string/jumbo v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mEventsLink:Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mEventsLink:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 87
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Legacy manifest detected. only send stop message"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mLegacyManifest:Z

    .line 89
    const-string/jumbo v1, "stopPlayback"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mEventsLink:Lorg/json/JSONObject;

    .line 91
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEventsLink: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mEventsLink:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->dumpVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getOxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mOxid:Ljava/lang/String;

    .line 95
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDxId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mDxid:Ljava/lang/String;

    .line 96
    invoke-interface {p1}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;->getDownloadContext()Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mDc:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    .line 97
    return-void
.end method

.method public pause(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 116
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 117
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->PAUSE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    .line 118
    return-void
.end method

.method public play(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 103
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayStartClientTime:J

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->START:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    .line 110
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->updateNextHeartbeatTime()V

    .line 111
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PAUSED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    if-ne v0, v1, :cond_0

    .line 107
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->PLAYING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 108
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->RESUME:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public seekTo(J)V
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    .line 124
    return-void
.end method

.method public sendPdsEvent(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 159
    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->sendPdsEventViaLogging(Ljava/lang/String;)V

    .line 166
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->DUMP_PDS_MESSAGES:Z

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "pdsEvent: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    .line 175
    :cond_1
    return-void
.end method

.method public stop(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STARTING:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ignore duplicate stop message, playableId: %s, errorCode: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;->STOPPED:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPlayState:Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession$PlayState;

    .line 134
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;->STOP:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mCurrentBookmarkMs:J

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->buildPdsEvent(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;Lorg/json/JSONObject;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->sendPdsEvent(Lorg/json/JSONObject;)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/pdslogging/offline/PdsOfflinePlaySession;->mPdsLogging:Lcom/netflix/mediaclient/service/logging/IPdsLogging;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/logging/IPdsLogging;->flushEventsInLogging()V

    goto :goto_0
.end method
