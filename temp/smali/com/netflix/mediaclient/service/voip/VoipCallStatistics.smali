.class public abstract Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
.super Ljava/lang/Object;
.source "VoipCallStatistics.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static builder()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;-><init>()V

    return-object v0
.end method

.method public static typeAdapter(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics$GsonTypeAdapter;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract averageJitterRx()F
.end method

.method public abstract averageJitterTx()F
.end method

.method public abstract averageRtt()F
.end method

.method public abstract bytesReceived()J
.end method

.method public abstract bytesSent()J
.end method

.method public abstract codec()Ljava/lang/String;
.end method

.method public abstract downloadBw()F
.end method

.method public abstract incomingPacketsLost()J
.end method

.method public abstract incomingTooLate()J
.end method

.method public abstract maxJitterRx()F
.end method

.method public abstract maxJitterTx()F
.end method

.method public abstract maxRtt()F
.end method

.method public abstract minJitterRx()F
.end method

.method public abstract minJitterTx()F
.end method

.method public abstract minRtt()F
.end method

.method public abstract packetsReceived()J
.end method

.method public abstract packetsSent()J
.end method

.method public abstract rate()I
.end method

.method public abstract recvLossRate()F
.end method

.method public abstract sdk()Ljava/lang/String;
.end method

.method public abstract sendLossRate()F
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(FFJJJJJJFFFFF)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
    .locals 15

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesSent()J

    move-result-wide v2

    .line 114
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesReceived()J

    move-result-wide v4

    .line 116
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->builder()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v6

    .line 118
    const-wide/16 v8, 0x0

    cmp-long v7, p5, v8

    if-lez v7, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->downloadBw()F

    move-result v7

    long-to-float v8, v4

    mul-float/2addr v7, v8

    sub-long v8, p5, v4

    long-to-float v8, v8

    mul-float v8, v8, p1

    add-float/2addr v7, v8

    move-wide/from16 v0, p5

    long-to-float v8, v0

    div-float/2addr v7, v8

    .line 120
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->recvLossRate()F

    move-result v8

    long-to-float v9, v4

    mul-float/2addr v8, v9

    sub-long v10, p5, v4

    long-to-float v9, v10

    mul-float v9, v9, p16

    add-float/2addr v8, v9

    move-wide/from16 v0, p5

    long-to-float v9, v0

    div-float/2addr v8, v9

    .line 121
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterTx()F

    move-result v9

    long-to-float v10, v4

    mul-float/2addr v9, v10

    sub-long v10, p5, v4

    long-to-float v10, v10

    mul-float v10, v10, p17

    add-float/2addr v9, v10

    move-wide/from16 v0, p5

    long-to-float v10, v0

    div-float/2addr v9, v10

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageRtt()F

    move-result v10

    long-to-float v11, v4

    mul-float/2addr v10, v11

    sub-long v4, p5, v4

    long-to-float v4, v4

    mul-float v4, v4, p19

    add-float/2addr v4, v10

    move-wide/from16 v0, p5

    long-to-float v5, v0

    div-float/2addr v4, v5

    .line 124
    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    float-to-double v10, v5

    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-float v5, v10

    invoke-virtual {v6, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setDownloadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    float-to-double v10, v7

    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v10, v12

    .line 125
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    double-to-float v7, v10

    invoke-virtual {v5, v7}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v9

    float-to-double v8, v7

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v8, v10

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-float v7, v8

    invoke-virtual {v5, v7}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v4, v7

    float-to-double v8, v4

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v8, v10

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-float v4, v8

    invoke-virtual {v5, v4}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    .line 130
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-lez v4, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->uploadBw()F

    move-result v4

    long-to-float v5, v2

    mul-float/2addr v4, v5

    sub-long v8, p3, v2

    long-to-float v5, v8

    mul-float v5, v5, p2

    add-float/2addr v4, v5

    move-wide/from16 v0, p3

    long-to-float v5, v0

    div-float/2addr v4, v5

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sendLossRate()F

    move-result v5

    long-to-float v7, v2

    mul-float/2addr v5, v7

    sub-long v8, p3, v2

    long-to-float v7, v8

    mul-float v7, v7, p15

    add-float/2addr v5, v7

    move-wide/from16 v0, p3

    long-to-float v7, v0

    div-float/2addr v5, v7

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterRx()F

    move-result v7

    long-to-float v8, v2

    mul-float/2addr v7, v8

    sub-long v2, p3, v2

    long-to-float v2, v2

    mul-float v2, v2, p18

    add-float/2addr v2, v7

    move-wide/from16 v0, p3

    long-to-float v3, v0

    div-float/2addr v2, v3

    .line 135
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-double v8, v3

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-float v3, v8

    invoke-virtual {v6, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setUploadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    float-to-double v8, v2

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v8, v10

    .line 136
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    double-to-float v2, v8

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    float-to-double v4, v3

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    add-double/2addr v4, v8

    .line 137
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v8

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSendLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sdk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 141
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->codec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->rate()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRate(I)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 143
    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 144
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 145
    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 146
    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 147
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 148
    move-wide/from16 v0, p13

    invoke-virtual {v2, v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterTx()F

    move-result v3

    move/from16 v0, p17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterTx()F

    move-result v3

    move/from16 v0, p17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 151
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterRx()F

    move-result v3

    move/from16 v0, p18

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterRx()F

    move-result v3

    move/from16 v0, p18

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 153
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minRtt()F

    move-result v3

    move/from16 v0, p19

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 154
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxRtt()F

    move-result v3

    move/from16 v0, p19

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    .line 156
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->build()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    move-result-object v2

    return-object v2
.end method

.method public abstract uploadBw()F
.end method
