.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "PlaybackAborted.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJZJLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    sget-object v4, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 21
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "abortedevent"

    if-eqz p8, :cond_1

    const-string/jumbo v2, "startplay"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "waittime"

    move-wide v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "groupname"

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-static/range {p12 .. p12}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "resumeplayreason"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_0
    return-void

    .line 24
    :cond_1
    const-string/jumbo v2, "resumeplay"

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "playbackaborted"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
