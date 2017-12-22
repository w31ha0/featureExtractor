.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;
.super Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;
.source "StartPlay.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJJJJJJJJJJJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZZJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->updateSeverity(Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;)V

    .line 73
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "level"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevel()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mid"

    invoke-virtual {v2, v3, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 75
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2

    .line 76
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "trackid"

    invoke-virtual {v2, v3, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "soffms"

    invoke-virtual {v2, v3, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moff"

    const-wide/16 v4, 0x3e8

    div-long v4, p9, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 80
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "moffms"

    move-wide/from16 v0, p9

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    invoke-static/range {p11 .. p11}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vdlid"

    move-object/from16 v0, p11

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_3
    invoke-static/range {p12 .. p12}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 87
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "adlid"

    move-object/from16 v0, p12

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p15, v2

    if-lez v2, :cond_5

    .line 92
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbitrate"

    move-wide/from16 v0, p15

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v2, p17, v2

    if-lez v2, :cond_6

    .line 97
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abitrate"

    move-wide/from16 v0, p17

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p23, v2

    if-lez v2, :cond_7

    .line 102
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflmsec"

    move-wide/from16 v0, p23

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    :cond_7
    const-wide/16 v2, 0x0

    cmp-long v2, p25, v2

    if-lez v2, :cond_8

    .line 107
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "abuflbytes"

    move-wide/from16 v0, p25

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p19, v2

    if-lez v2, :cond_9

    .line 112
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflmsec"

    move-wide/from16 v0, p19

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    :cond_9
    const-wide/16 v2, 0x0

    cmp-long v2, p21, v2

    if-lez v2, :cond_a

    .line 117
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "vbuflbytes"

    move-wide/from16 v0, p21

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, p29, v2

    if-lez v2, :cond_b

    .line 129
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "nccplt"

    move-wide/from16 v0, p29

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 143
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, p33, v2

    if-lez v2, :cond_c

    .line 144
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "initialbw"

    move-wide/from16 v0, p31

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, p33, v2

    if-lez v2, :cond_d

    .line 148
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "initialbt"

    move-wide/from16 v0, p33

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 151
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, p35, v2

    if-lez v2, :cond_e

    .line 152
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "actualbw"

    move-wide/from16 v0, p35

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 155
    :cond_e
    const-wide/16 v2, 0x0

    cmp-long v2, p37, v2

    if-lez v2, :cond_f

    .line 156
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "actualbt"

    move-wide/from16 v0, p37

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 159
    :cond_f
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playdelay"

    move-wide/from16 v0, p39

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnid"

    move-wide/from16 v0, p45

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "cdnname"

    move-object/from16 v0, p47

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-static/range {p13 .. p13}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 166
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "brokendlid"

    move-object/from16 v0, p13

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_10
    const/4 v2, -0x1

    move/from16 v0, p48

    if-eq v0, v2, :cond_11

    .line 186
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "nccperr"

    move/from16 v0, p48

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    :cond_11
    const/16 v2, 0x190

    move/from16 v0, p49

    if-lt v0, v2, :cond_12

    .line 190
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "httperr"

    move/from16 v0, p49

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 193
    :cond_12
    invoke-static/range {p50 .. p50}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 194
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "nwerr"

    move-object/from16 v0, p50

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    :cond_13
    invoke-static/range {p65 .. p65}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 199
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errormsg"

    move-object/from16 v0, p65

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    :cond_14
    invoke-static/range {p66 .. p66}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 202
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorcode"

    move-object/from16 v0, p66

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_15
    invoke-static/range {p67 .. p67}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 206
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "errorstring"

    move-object/from16 v0, p67

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_16
    invoke-static/range {p68 .. p68}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 210
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "deviceerrorcode"

    move-object/from16 v0, p68

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_17
    invoke-static/range {p69 .. p69}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 214
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "deviceerrorstring"

    move-object/from16 v0, p69

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_18
    invoke-static/range {p52 .. p52}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 218
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "nettype"

    move-object/from16 v0, p52

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_19
    invoke-static/range {p53 .. p53}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 222
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "carrier"

    move-object/from16 v0, p53

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mcc"

    move-object/from16 v0, p54

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "mnc"

    move-object/from16 v0, p55

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "netspec"

    move-object/from16 v0, p56

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_1a
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "groupname"

    move-object/from16 v0, p51

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "downloadables"

    move-object/from16 v0, p58

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "fastplay"

    if-eqz p60, :cond_20

    const-string/jumbo v2, "true"

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "cachehit"

    if-eqz p61, :cond_21

    const-string/jumbo v2, "true"

    :goto_2
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    if-eqz p61, :cond_1b

    .line 235
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "manifestage"

    move-wide/from16 v0, p62

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 237
    :cond_1b
    invoke-static/range {p71 .. p71}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 238
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "playbackcontextid"

    move-object/from16 v0, p71

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    :cond_1c
    if-eqz p73, :cond_1d

    .line 242
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "eventlist"

    move-object/from16 v0, p73

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    :cond_1d
    invoke-static/range {p70 .. p70}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 246
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "filetoken"

    move-object/from16 v0, p70

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_1e
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v4, "pipeline"

    if-eqz p64, :cond_22

    const-string/jumbo v2, "true"

    :goto_3
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    invoke-static/range {p72 .. p72}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 252
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "manifestCacheSource"

    move-object/from16 v0, p72

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :cond_1f
    invoke-static/range {p74 .. p74}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v3, "videodecoder"

    move-object/from16 v0, p74

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 231
    :cond_20
    const-string/jumbo v2, "false"

    goto :goto_1

    .line 232
    :cond_21
    const-string/jumbo v2, "false"

    goto :goto_2

    .line 249
    :cond_22
    const-string/jumbo v2, "false"

    goto :goto_3
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string/jumbo v0, "startplay"

    return-object v0
.end method

.method public bridge synthetic getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/BaseStreamLogblob;->getXid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
