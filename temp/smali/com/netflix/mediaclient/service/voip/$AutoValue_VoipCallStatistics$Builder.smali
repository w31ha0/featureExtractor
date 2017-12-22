.class final Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;
.super Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
.source "$AutoValue_VoipCallStatistics.java"


# instance fields
.field private averageJitterRx:Ljava/lang/Float;

.field private averageJitterTx:Ljava/lang/Float;

.field private averageRtt:Ljava/lang/Float;

.field private bytesReceived:Ljava/lang/Long;

.field private bytesSent:Ljava/lang/Long;

.field private codec:Ljava/lang/String;

.field private downloadBw:Ljava/lang/Float;

.field private incomingPacketsLost:Ljava/lang/Long;

.field private incomingTooLate:Ljava/lang/Long;

.field private maxJitterRx:Ljava/lang/Float;

.field private maxJitterTx:Ljava/lang/Float;

.field private maxRtt:Ljava/lang/Float;

.field private minJitterRx:Ljava/lang/Float;

.field private minJitterTx:Ljava/lang/Float;

.field private minRtt:Ljava/lang/Float;

.field private packetsReceived:Ljava/lang/Long;

.field private packetsSent:Ljava/lang/Long;

.field private rate:Ljava/lang/Integer;

.field private recvLossRate:Ljava/lang/Float;

.field private sdk:Ljava/lang/String;

.field private sendLossRate:Ljava/lang/Float;

.field private uploadBw:Ljava/lang/Float;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;-><init>()V

    .line 325
    return-void
.end method


# virtual methods
.method public build()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;
    .locals 31

    .prologue
    .line 438
    const-string/jumbo v2, ""

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->rate:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 442
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->downloadBw:Ljava/lang/Float;

    if-nez v3, :cond_1

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " downloadBw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->uploadBw:Ljava/lang/Float;

    if-nez v3, :cond_2

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " uploadBw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsSent:Ljava/lang/Long;

    if-nez v3, :cond_3

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packetsSent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsReceived:Ljava/lang/Long;

    if-nez v3, :cond_4

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " packetsReceived"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 454
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesSent:Ljava/lang/Long;

    if-nez v3, :cond_5

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytesSent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesReceived:Ljava/lang/Long;

    if-nez v3, :cond_6

    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytesReceived"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->sendLossRate:Ljava/lang/Float;

    if-nez v3, :cond_7

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sendLossRate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->recvLossRate:Ljava/lang/Float;

    if-nez v3, :cond_8

    .line 464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " recvLossRate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 466
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingTooLate:Ljava/lang/Long;

    if-nez v3, :cond_9

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " incomingTooLate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingPacketsLost:Ljava/lang/Long;

    if-nez v3, :cond_a

    .line 470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " incomingPacketsLost"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterRx:Ljava/lang/Float;

    if-nez v3, :cond_b

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " averageJitterRx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterRx:Ljava/lang/Float;

    if-nez v3, :cond_c

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minJitterRx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterRx:Ljava/lang/Float;

    if-nez v3, :cond_d

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " maxJitterRx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 481
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterTx:Ljava/lang/Float;

    if-nez v3, :cond_e

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " averageJitterTx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterTx:Ljava/lang/Float;

    if-nez v3, :cond_f

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minJitterTx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 487
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterTx:Ljava/lang/Float;

    if-nez v3, :cond_10

    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " maxJitterTx"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 490
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageRtt:Ljava/lang/Float;

    if-nez v3, :cond_11

    .line 491
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " averageRtt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minRtt:Ljava/lang/Float;

    if-nez v3, :cond_12

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " minRtt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxRtt:Ljava/lang/Float;

    if-nez v3, :cond_13

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " maxRtt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 499
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 500
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Missing required properties:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 502
    :cond_14
    new-instance v2, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->sdk:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->codec:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->rate:Ljava/lang/Integer;

    .line 505
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->downloadBw:Ljava/lang/Float;

    .line 506
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->uploadBw:Ljava/lang/Float;

    .line 507
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsSent:Ljava/lang/Long;

    .line 508
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsReceived:Ljava/lang/Long;

    .line 509
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesSent:Ljava/lang/Long;

    .line 510
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesReceived:Ljava/lang/Long;

    .line 511
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->sendLossRate:Ljava/lang/Float;

    move-object/from16 v16, v0

    .line 512
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Float;->floatValue()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->recvLossRate:Ljava/lang/Float;

    move-object/from16 v17, v0

    .line 513
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingTooLate:Ljava/lang/Long;

    move-object/from16 v18, v0

    .line 514
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingPacketsLost:Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 515
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterRx:Ljava/lang/Float;

    move-object/from16 v22, v0

    .line 516
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterRx:Ljava/lang/Float;

    move-object/from16 v23, v0

    .line 517
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterRx:Ljava/lang/Float;

    move-object/from16 v24, v0

    .line 518
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterTx:Ljava/lang/Float;

    move-object/from16 v25, v0

    .line 519
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Float;->floatValue()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterTx:Ljava/lang/Float;

    move-object/from16 v26, v0

    .line 520
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Float;->floatValue()F

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterTx:Ljava/lang/Float;

    move-object/from16 v27, v0

    .line 521
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageRtt:Ljava/lang/Float;

    move-object/from16 v28, v0

    .line 522
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minRtt:Ljava/lang/Float;

    move-object/from16 v29, v0

    .line 523
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Float;->floatValue()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxRtt:Ljava/lang/Float;

    move-object/from16 v30, v0

    .line 524
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Float;->floatValue()F

    move-result v30

    invoke-direct/range {v2 .. v30}, Lcom/netflix/mediaclient/service/voip/AutoValue_VoipCallStatistics;-><init>(Ljava/lang/String;Ljava/lang/String;IFFJJJJFFJJFFFFFFFFF)V

    .line 502
    return-object v2
.end method

.method public setAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 393
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterRx:Ljava/lang/Float;

    .line 394
    return-object p0
.end method

.method public setAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 408
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageJitterTx:Ljava/lang/Float;

    .line 409
    return-object p0
.end method

.method public setAverageRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 423
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->averageRtt:Ljava/lang/Float;

    .line 424
    return-object p0
.end method

.method public setBytesReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 368
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesReceived:Ljava/lang/Long;

    .line 369
    return-object p0
.end method

.method public setBytesSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 363
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->bytesSent:Ljava/lang/Long;

    .line 364
    return-object p0
.end method

.method public setCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->codec:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setDownloadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 343
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->downloadBw:Ljava/lang/Float;

    .line 344
    return-object p0
.end method

.method public setIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 388
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingPacketsLost:Ljava/lang/Long;

    .line 389
    return-object p0
.end method

.method public setIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 383
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->incomingTooLate:Ljava/lang/Long;

    .line 384
    return-object p0
.end method

.method public setMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 403
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterRx:Ljava/lang/Float;

    .line 404
    return-object p0
.end method

.method public setMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 418
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxJitterTx:Ljava/lang/Float;

    .line 419
    return-object p0
.end method

.method public setMaxRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 433
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->maxRtt:Ljava/lang/Float;

    .line 434
    return-object p0
.end method

.method public setMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 398
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterRx:Ljava/lang/Float;

    .line 399
    return-object p0
.end method

.method public setMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minJitterTx:Ljava/lang/Float;

    .line 414
    return-object p0
.end method

.method public setMinRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 428
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->minRtt:Ljava/lang/Float;

    .line 429
    return-object p0
.end method

.method public setPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 358
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsReceived:Ljava/lang/Long;

    .line 359
    return-object p0
.end method

.method public setPacketsSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 353
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->packetsSent:Ljava/lang/Long;

    .line 354
    return-object p0
.end method

.method public setRate(I)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->rate:Ljava/lang/Integer;

    .line 339
    return-object p0
.end method

.method public setRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->recvLossRate:Ljava/lang/Float;

    .line 379
    return-object p0
.end method

.method public setSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->sdk:Ljava/lang/String;

    .line 329
    return-object p0
.end method

.method public setSendLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 373
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->sendLossRate:Ljava/lang/Float;

    .line 374
    return-object p0
.end method

.method public setUploadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;
    .locals 1

    .prologue
    .line 348
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/$AutoValue_VoipCallStatistics$Builder;->uploadBw:Ljava/lang/Float;

    .line 349
    return-object p0
.end method
