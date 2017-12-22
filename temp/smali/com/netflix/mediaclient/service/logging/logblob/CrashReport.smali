.class public final Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "CrashReport.java"


# instance fields
.field private episodeId:Ljava/lang/String;

.field private errorCode:J

.field private errorNumber:J

.field private movieId:Ljava/lang/String;

.field private pid:I

.field private sigNumber:J

.field private signal:Lcom/netflix/mediaclient/servicemgr/Signal;

.field private trkId:I

.field private ts:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/Signal;JJJI)V
    .locals 14

    .prologue
    .line 57
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;-><init>(Lcom/netflix/mediaclient/servicemgr/Signal;JJJLjava/lang/String;Ljava/lang/String;IJI)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/Signal;JJJLjava/lang/String;Ljava/lang/String;IJI)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    .line 74
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->signal:Lcom/netflix/mediaclient/servicemgr/Signal;

    .line 75
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->sigNumber:J

    .line 76
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorNumber:J

    .line 77
    iput-wide p6, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorCode:J

    .line 78
    iput-wide p11, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->ts:J

    .line 79
    invoke-direct {p0, p8}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    .line 80
    invoke-direct {p0, p9}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    .line 81
    iput p10, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    .line 82
    iput p13, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->pid:I

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->populate()V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;-><init>(Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "JSON is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "signal"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/Signal;->toSignal(I)Lcom/netflix/mediaclient/servicemgr/Signal;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->signal:Lcom/netflix/mediaclient/servicemgr/Signal;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "signumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->sigNumber:J

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorCode:J

    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorNumber"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorNumber:J

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "movieId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "epId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "trkId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->ts:J

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->pid:I

    .line 46
    return-void
.end method

.method private populate()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "signal"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->signal:Lcom/netflix/mediaclient/servicemgr/Signal;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/Signal;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "signumber"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->sigNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorCode"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorCode:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errorNumber"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorNumber:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "movieId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "epId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "trkId"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "ts"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->ts:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->pid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    return-void
.end method

.method private toGmtString(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 212
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toNoNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string/jumbo p1, ""

    .line 145
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCrashTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->ts:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toGmtString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorCode:J

    return-wide v0
.end method

.method public getErrorNumber()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorNumber:J

    return-wide v0
.end method

.method public getMovieId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->pid:I

    return v0
.end method

.method public getSigNumber()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->sigNumber:J

    return-wide v0
.end method

.method public getSignal()Lcom/netflix/mediaclient/servicemgr/Signal;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->signal:Lcom/netflix/mediaclient/servicemgr/Signal;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->ts:J

    return-wide v0
.end method

.method public getTrkId()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "crashreport"

    return-object v0
.end method

.method public setAsset(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getTrackId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->setTrkId(I)V

    .line 281
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->isEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->setMovieId(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->setMovieId(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/Asset;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->setEpisodeId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEpisodeId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setMovieId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->toNoNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setTrkId(I)V
    .locals 0

    .prologue
    .line 265
    iput p1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CrashReport [errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorCode:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", errorNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->errorNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sigNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->sigNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->signal:Lcom/netflix/mediaclient/servicemgr/Signal;

    .line 182
    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/Signal;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->getCrashTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", movieId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->movieId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", epId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->episodeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", trkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/CrashReport;->trkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    return-object v0
.end method
