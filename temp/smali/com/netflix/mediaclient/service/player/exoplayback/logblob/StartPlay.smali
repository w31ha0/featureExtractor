.class public Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;
.super Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.source "StartPlay.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JLjava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 18
    invoke-direct {p0, p6, p7, p8}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V

    .line 25
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "trackid"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 26
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soff"

    const-wide/16 v4, 0x3e8

    div-long v4, p9, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p11, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    invoke-static/range {p13 .. p13}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    move-object/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vBitrate"

    move-wide/from16 v0, p14

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    :cond_0
    invoke-static/range {p16 .. p16}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "adlid"

    move-object/from16 v0, p16

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abitrate"

    move-wide/from16 v0, p17

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 43
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playdelay"

    move-wide/from16 v0, p19

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "offlinenetworkstatus"

    if-nez p21, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 46
    invoke-static/range {p23 .. p23}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errormsg"

    move-object/from16 v0, p23

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_2
    invoke-static/range {p22 .. p22}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorcode"

    move-object/from16 v0, p22

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_3
    invoke-static/range {p24 .. p24}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 51
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorstring"

    move-object/from16 v0, p24

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :cond_4
    return-void

    .line 44
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "startplay"

    return-object v0
.end method
