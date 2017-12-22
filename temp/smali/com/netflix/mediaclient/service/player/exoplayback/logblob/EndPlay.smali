.class public Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;
.super Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;
.source "EndPlay.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;ZLorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 23
    invoke-direct {p0, p6, p7, p8}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/OfflinePlaybackBaseLogblob;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V

    .line 27
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackoffline"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 30
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "trackid"

    invoke-virtual {v2, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 32
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "endreason"

    move-object/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "totaltime"

    move-wide/from16 v0, p13

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 36
    if-eqz p17, :cond_0

    .line 37
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playstat"

    move-object/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_0
    if-eqz p18, :cond_1

    .line 40
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "batterystat"

    move-object/from16 v0, p18

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_1
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "offlinenetworkstatus"

    if-nez p16, :cond_7

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    invoke-static/range {p20 .. p20}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errormsg"

    move-object/from16 v0, p20

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    :cond_2
    invoke-static/range {p19 .. p19}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorcode"

    move-object/from16 v0, p19

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_3
    invoke-static/range {p21 .. p21}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorstring"

    move-object/from16 v0, p21

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_4
    invoke-static/range {p22 .. p22}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 51
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "activitydata"

    move-object/from16 v0, p22

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    :cond_5
    if-eqz p23, :cond_6

    invoke-virtual/range {p23 .. p23}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 54
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "subtitleqoe"

    move-object/from16 v0, p23

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_6
    return-void

    .line 42
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "endplay"

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method
