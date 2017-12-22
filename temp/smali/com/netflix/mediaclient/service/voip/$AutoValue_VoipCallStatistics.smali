.class abstract Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;
.super Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
.source "$AutoValue_VoipCallStatistics.java"


# instance fields
.field private final averageJitterRx:F

.field private final averageJitterTx:F

.field private final averageRtt:F

.field private final bytesReceived:J

.field private final bytesSent:J

.field private final codec:Ljava/lang/String;

.field private final downloadBw:F

.field private final incomingPacketsLost:J

.field private final incomingTooLate:J

.field private final maxJitterRx:F

.field private final maxJitterTx:F

.field private final maxRtt:F

.field private final minJitterRx:F

.field private final minJitterTx:F

.field private final minRtt:F

.field private final packetsReceived:J

.field private final packetsSent:J

.field private final rate:I

.field private final recvLossRate:F

.field private final sdk:Ljava/lang/String;

.field private final sendLossRate:F

.field private final uploadBw:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;IFFJJJJFFJJFFFFFFFFF)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    .line 56
    iput p3, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->rate:I

    .line 57
    iput p4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->downloadBw:F

    .line 58
    iput p5, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->uploadBw:F

    .line 59
    iput-wide p6, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    .line 60
    iput-wide p8, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    .line 61
    iput-wide p10, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    .line 62
    iput-wide p12, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    .line 63
    move/from16 v0, p14

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sendLossRate:F

    .line 64
    move/from16 v0, p15

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->recvLossRate:F

    .line 65
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    .line 66
    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    .line 67
    move/from16 v0, p20

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterRx:F

    .line 68
    move/from16 v0, p21

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterRx:F

    .line 69
    move/from16 v0, p22

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterRx:F

    .line 70
    move/from16 v0, p23

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterTx:F

    .line 71
    move/from16 v0, p24

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterTx:F

    .line 72
    move/from16 v0, p25

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterTx:F

    .line 73
    move/from16 v0, p26

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageRtt:F

    .line 74
    move/from16 v0, p27

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minRtt:F

    .line 75
    move/from16 v0, p28

    iput v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxRtt:F

    .line 76
    return-void
.end method


# virtual methods
.method public averageJitterRx()F
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterRx:F

    return v0
.end method

.method public averageJitterTx()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterTx:F

    return v0
.end method

.method public averageRtt()F
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageRtt:F

    return v0
.end method

.method public bytesReceived()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    return-wide v0
.end method

.method public bytesSent()J
    .locals 2

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    return-wide v0
.end method

.method public codec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public downloadBw()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->downloadBw:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 223
    :cond_1
    instance-of v2, p1, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    if-eqz v2, :cond_5

    .line 224
    check-cast p1, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    .line 225
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sdk()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 226
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->codec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_2
    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->rate:I

    .line 227
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->rate()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->downloadBw:F

    .line 228
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->downloadBw()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->uploadBw:F

    .line 229
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->uploadBw()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    .line 230
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsSent()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    .line 231
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsReceived()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    .line 232
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesSent()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    .line 233
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesReceived()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sendLossRate:F

    .line 234
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sendLossRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->recvLossRate:F

    .line 235
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->recvLossRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    .line 236
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingTooLate()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    .line 237
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingPacketsLost()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterRx:F

    .line 238
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterRx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterRx:F

    .line 239
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterRx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterRx:F

    .line 240
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterRx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterTx:F

    .line 241
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterTx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterTx:F

    .line 242
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterTx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterTx:F

    .line 243
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterTx()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageRtt:F

    .line 244
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageRtt()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minRtt:F

    .line 245
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minRtt()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxRtt:F

    .line 246
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxRtt()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    .line 225
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_1

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->codec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 248
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x20

    const v6, 0xf4243

    .line 253
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    xor-int/2addr v0, v6

    .line 256
    mul-int/2addr v0, v6

    .line 257
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    .line 258
    mul-int/2addr v0, v6

    .line 259
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->rate:I

    xor-int/2addr v0, v1

    .line 260
    mul-int/2addr v0, v6

    .line 261
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->downloadBw:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 262
    mul-int/2addr v0, v6

    .line 263
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->uploadBw:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 264
    mul-int/2addr v0, v6

    .line 265
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 266
    mul-int/2addr v0, v6

    .line 267
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 268
    mul-int/2addr v0, v6

    .line 269
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 270
    mul-int/2addr v0, v6

    .line 271
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 272
    mul-int/2addr v0, v6

    .line 273
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sendLossRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 274
    mul-int/2addr v0, v6

    .line 275
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->recvLossRate:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 276
    mul-int/2addr v0, v6

    .line 277
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 278
    mul-int/2addr v0, v6

    .line 279
    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    ushr-long/2addr v2, v7

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    xor-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 280
    mul-int/2addr v0, v6

    .line 281
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterRx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 282
    mul-int/2addr v0, v6

    .line 283
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterRx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 284
    mul-int/2addr v0, v6

    .line 285
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterRx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 286
    mul-int/2addr v0, v6

    .line 287
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterTx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 288
    mul-int/2addr v0, v6

    .line 289
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterTx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 290
    mul-int/2addr v0, v6

    .line 291
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterTx:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 292
    mul-int/2addr v0, v6

    .line 293
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageRtt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 294
    mul-int/2addr v0, v6

    .line 295
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minRtt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 296
    mul-int/2addr v0, v6

    .line 297
    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxRtt:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    .line 298
    return v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto/16 :goto_0

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto/16 :goto_1
.end method

.method public incomingPacketsLost()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    return-wide v0
.end method

.method public incomingTooLate()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    return-wide v0
.end method

.method public maxJitterRx()F
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterRx:F

    return v0
.end method

.method public maxJitterTx()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterTx:F

    return v0
.end method

.method public maxRtt()F
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxRtt:F

    return v0
.end method

.method public minJitterRx()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterRx:F

    return v0
.end method

.method public minJitterTx()F
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterTx:F

    return v0
.end method

.method public minRtt()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minRtt:F

    return v0
.end method

.method public packetsReceived()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    return-wide v0
.end method

.method public packetsSent()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    return-wide v0
.end method

.method public rate()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->rate:I

    return v0
.end method

.method public recvLossRate()F
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->recvLossRate:F

    return v0
.end method

.method public sdk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    return-object v0
.end method

.method public sendLossRate()F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sendLossRate:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoipCallStatistics{sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sdk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", codec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadBw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->downloadBw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadBw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->uploadBw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packetsSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packetsReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->packetsReceived:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->bytesReceived:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sendLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->sendLossRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recvLossRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->recvLossRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", incomingTooLate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingTooLate:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", incomingPacketsLost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->incomingPacketsLost:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageJitterRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterRx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minJitterRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterRx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxJitterRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterRx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageJitterTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageJitterTx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minJitterTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minJitterTx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxJitterTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxJitterTx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", averageRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->averageRtt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->minRtt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxRtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->maxRtt:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uploadBw()F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics;->uploadBw:F

    return v0
.end method
