.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "EndPlay.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;ZLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V

    .line 35
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 37
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 38
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p5, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 39
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    invoke-virtual {v2, v3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "minconnecttime"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 41
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "totaltime"

    const-wide/16 v4, 0x3e8

    div-long v4, p9, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdndldist"

    move-object/from16 v0, p16

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "networkdist"

    move-object/from16 v0, p17

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "outputdist"

    move-object/from16 v0, p18

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "avtp"

    move-wide/from16 v0, p35

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    invoke-virtual/range {p42 .. p42}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnavtp"

    move-object/from16 v0, p42

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "endreason"

    move-object/from16 v0, p19

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-static/range {p20 .. p20}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errormsg"

    move-object/from16 v0, p20

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_1
    invoke-static/range {p21 .. p21}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorcode"

    move-object/from16 v0, p21

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_2
    invoke-static/range {p22 .. p22}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorstring"

    move-object/from16 v0, p22

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_3
    if-lez p23, :cond_4

    .line 66
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "actnccptimeout"

    move/from16 v0, p23

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 69
    :cond_4
    invoke-static/range {p24 .. p24}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "deviceerrorcode"

    move-object/from16 v0, p24

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    :cond_5
    invoke-static/range {p25 .. p25}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 74
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "deviceerrorstring"

    move-object/from16 v0, p25

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_6
    if-eqz p41, :cond_7

    invoke-virtual/range {p41 .. p41}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 78
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "subtitleqoe"

    move-object/from16 v0, p41

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    :cond_7
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "pipeline"

    if-eqz p37, :cond_c

    const-string/jumbo v2, "true"

    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "groupname"

    move-object/from16 v0, p38

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-static/range {p13 .. p13}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "carrier"

    move-object/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mcc"

    move-object/from16 v0, p14

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mnc"

    move-object/from16 v0, p15

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_8
    invoke-static/range {p43 .. p43}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 96
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "videodecoder"

    move-object/from16 v0, p43

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    :cond_9
    if-eqz p29, :cond_a

    .line 100
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playqualvideo"

    invoke-virtual/range {p29 .. p29}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->getJSONRepresentation()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_a
    if-eqz p30, :cond_b

    .line 104
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "disabledVP9Decoder"

    move/from16 v0, p30

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    :cond_b
    return-void

    .line 81
    :cond_c
    const-string/jumbo v2, "false"

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "endplay"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method
