.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final firstPeriodId:I

.field private final manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)V
    .locals 0
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "firstPeriodId"    # I
    .param p6, "offsetInFirstPeriodUs"    # J
    .param p8, "windowDurationUs"    # J
    .param p10, "windowDefaultStartPositionUs"    # J
    .param p12, "manifest"    # Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 531
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    .line 532
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    .line 533
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    .line 534
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    .line 535
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    .line 536
    iput-wide p10, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    .line 537
    iput-object p12, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 538
    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4
    .param p1, "uid"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 571
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_1

    .line 575
    .end local p1    # "uid":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 574
    .restart local p1    # "uid":Ljava/lang/Object;
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "uid":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 575
    .local v0, "periodId":I
    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    if-lt v0, v2, :cond_0

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int v1, v0, v1

    goto :goto_0
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 10
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Lcom/google/android/exoplayer2/Timeline$Period;
    .param p3, "setIdentifiers"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 548
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    .line 549
    .local v1, "id":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 550
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v4

    invoke-static {p1, v3, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    move-result v4

    add-int/2addr v0, v4

    .line 549
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 551
    .local v2, "uid":Ljava/lang/Integer;
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 552
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/C;->msToUs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long/2addr v6, v8

    move-object v0, p2

    .line 551
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    return-object v0

    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "uid":Ljava/lang/Integer;
    :cond_1
    move-object v1, v2

    .line 548
    goto :goto_0
.end method

.method public getPeriodCount()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v0

    return v0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;Z)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 18
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Lcom/google/android/exoplayer2/Timeline$Window;
    .param p3, "setIdentifier"    # Z

    .prologue
    .line 563
    const/4 v2, 0x0

    const/4 v3, 0x1

    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    .line 564
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    iget-boolean v9, v2, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 566
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v16, v0

    move-object/from16 v2, p2

    .line 564
    invoke-virtual/range {v2 .. v17}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;JJZZJJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v2

    return-object v2
.end method

.method public getWindowCount()I
    .locals 1

    .prologue
    .line 558
    const/4 v0, 0x1

    return v0
.end method
