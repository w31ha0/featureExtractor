.class public Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.super Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    }
.end annotation


# static fields
.field private static final FRACTION_TO_CONSIDER_FULLSCREEN:F = 0.98f

.field private static final NO_TRACKS:[I


# instance fields
.field private final adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

.field private final params:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "eventHandler"    # Landroid/os/Handler;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)V
    .locals 2
    .param p1, "eventHandler"    # Landroid/os/Handler;
    .param p2, "adaptiveVideoTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector;-><init>(Landroid/os/Handler;)V

    .line 348
    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->params:Ljava/util/concurrent/atomic/AtomicReference;

    .line 350
    return-void
.end method

.method private static comparePixelCounts(II)I
    .locals 1
    .param p0, "first"    # I
    .param p1, "second"    # I

    .prologue
    const/4 v0, -0x1

    .line 580
    if-ne p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method private static filterAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IILjava/util/List;)V
    .locals 8
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p6, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_1

    .line 513
    invoke-interface {p6, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 514
    .local v7, "trackIndex":I
    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    aget v2, p1, v7

    move-object v1, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-interface {p6, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 512
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 519
    .end local v7    # "trackIndex":I
    :cond_1
    return-void
.end method

.method private static formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 1
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 706
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IILjava/util/List;)I
    .locals 9
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "requiredAdaptiveSupport"    # I
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 498
    .local p6, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 499
    .local v6, "adaptiveTrackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 500
    invoke-interface {p6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 501
    .local v8, "trackIndex":I
    invoke-virtual {p0, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    aget v2, p1, v8

    move-object v1, p3

    move v3, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    add-int/lit8 v6, v6, 0x1

    .line 499
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 506
    .end local v8    # "trackIndex":I
    :cond_1
    return v6
.end method

.method private static getAdaptiveTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIZ)[I
    .locals 23
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "formatSupport"    # [I
    .param p2, "allowMixedMimeTypes"    # Z
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "viewportWidth"    # I
    .param p7, "viewportHeight"    # I
    .param p8, "orientationMayChange"    # Z

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 458
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    .line 492
    :goto_0
    return-object v4

    .line 461
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v10

    .line 463
    .local v10, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 464
    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    .line 467
    :cond_1
    const/4 v14, 0x0

    .line 468
    .local v14, "selectedMimeType":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 470
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 471
    .local v20, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .line 472
    .local v21, "selectedMimeTypeTrackCount":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    .line 473
    move/from16 v0, v19

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 474
    .local v22, "trackIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 475
    .local v7, "sampleMimeType":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 476
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    .line 477
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IILjava/util/List;)I

    move-result v18

    .line 480
    .local v18, "countForMimeType":I
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    .line 481
    move-object v14, v7

    .line 482
    move/from16 v21, v18

    .line 472
    .end local v18    # "countForMimeType":I
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .end local v7    # "sampleMimeType":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v20    # "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v21    # "selectedMimeTypeTrackCount":I
    .end local v22    # "trackIndex":I
    :cond_3
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, v10

    .line 489
    invoke-static/range {v11 .. v17}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->filterAdaptiveTrackCountForMimeType(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/lang/String;IILjava/util/List;)V

    .line 492
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_4

    sget-object v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->NO_TRACKS:[I

    goto :goto_0

    :cond_4
    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Util;->toArray(Ljava/util/List;)[I

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 4
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 764
    if-eqz p0, :cond_0

    if-le p3, p4, :cond_1

    move v3, v1

    :goto_0
    if-le p1, p2, :cond_2

    :goto_1
    if-eq v3, v1, :cond_0

    .line 766
    move v0, p1

    .line 767
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 768
    move p2, v0

    .line 771
    .end local v0    # "tempViewportWidth":I
    :cond_0
    mul-int v1, p3, p2

    mul-int v2, p4, p1

    if-lt v1, v2, :cond_3

    .line 773
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p1, p4

    invoke-static {v2, p3}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 776
    :goto_2
    return-object v1

    :cond_1
    move v3, v2

    .line 764
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 776
    :cond_3
    new-instance v1, Landroid/graphics/Point;

    mul-int v2, p2, p3

    invoke-static {v2, p4}, Lcom/google/android/exoplayer2/util/Util;->ceilDivide(II)I

    move-result v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method private static getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 11
    .param p0, "group"    # Lcom/google/android/exoplayer2/source/TrackGroup;
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "orientationMayChange"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x3f7ae148    # 0.98f

    const v9, 0x7fffffff

    .line 714
    new-instance v5, Ljava/util/ArrayList;

    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 715
    .local v5, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_0

    .line 716
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    :cond_0
    if-eq p1, v9, :cond_1

    if-ne p2, v9, :cond_2

    .line 755
    :cond_1
    return-object v5

    .line 724
    :cond_2
    const v2, 0x7fffffff

    .line 725
    .local v2, "maxVideoPixelsToRetain":I
    const/4 v1, 0x0

    :goto_1
    iget v7, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v1, v7, :cond_4

    .line 726
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 730
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    if-lez v7, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    if-lez v7, :cond_3

    .line 731
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    invoke-static {p3, p1, p2, v7, v8}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;

    move-result-object v3

    .line 733
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v0, Lcom/google/android/exoplayer2/Format;->height:I

    mul-int v6, v7, v8

    .line 734
    .local v6, "videoPixels":I
    iget v7, v0, Lcom/google/android/exoplayer2/Format;->width:I

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    iget v7, v0, Lcom/google/android/exoplayer2/Format;->height:I

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-lt v7, v8, :cond_3

    if-ge v6, v2, :cond_3

    .line 737
    move v2, v6

    .line 725
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v6    # "videoPixels":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 745
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_4
    if-eq v2, v9, :cond_1

    .line 746
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    :goto_2
    if-ltz v1, :cond_1

    .line 747
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 748
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v4

    .line 749
    .local v4, "pixelCount":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    if-le v4, v2, :cond_6

    .line 750
    :cond_5
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 746
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private static isSupported(I)Z
    .locals 2
    .param p0, "formatSupport"    # I

    .prologue
    .line 701
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedAdaptiveVideoTrack(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IIII)Z
    .locals 2
    .param p0, "format"    # Lcom/google/android/exoplayer2/Format;
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "formatSupport"    # I
    .param p3, "requiredAdaptiveSupport"    # I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I

    .prologue
    const/4 v1, -0x1

    .line 523
    invoke-static {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_3

    and-int v0, p2, p3

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 524
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->width:I

    if-gt v0, p4, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/Format;->height:I

    if-gt v0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 523
    :goto_0
    return v0

    .line 524
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 12
    .param p0, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "maxVideoWidth"    # I
    .param p4, "maxVideoHeight"    # I
    .param p5, "allowNonSeamlessAdaptiveness"    # Z
    .param p6, "allowMixedMimeAdaptiveness"    # Z
    .param p7, "viewportWidth"    # I
    .param p8, "viewportHeight"    # I
    .param p9, "orientationMayChange"    # Z
    .param p10, "adaptiveVideoTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 437
    if-eqz p5, :cond_0

    const/16 v4, 0xc

    .line 440
    .local v4, "requiredAdaptiveSupport":I
    :goto_0
    if-eqz p6, :cond_1

    .line 441
    invoke-interface {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 442
    .local v3, "allowMixedMimeTypes":Z
    :goto_1
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    iget v2, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v11, v2, :cond_3

    .line 443
    invoke-virtual {p1, v11}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 444
    .local v1, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v2, p2, v11

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getAdaptiveTracksForGroup(Lcom/google/android/exoplayer2/source/TrackGroup;[IZIIIIIZ)[I

    move-result-object v10

    .line 447
    .local v10, "adaptiveTracks":[I
    array-length v2, v10

    if-lez v2, :cond_2

    .line 448
    move-object/from16 v0, p10

    invoke-interface {v0, v1, v10}, Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 451
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "adaptiveTracks":[I
    :goto_3
    return-object v2

    .line 437
    .end local v3    # "allowMixedMimeTypes":Z
    .end local v4    # "requiredAdaptiveSupport":I
    .end local v11    # "i":I
    :cond_0
    const/16 v4, 0x8

    goto :goto_0

    .line 441
    .restart local v4    # "requiredAdaptiveSupport":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 442
    .restart local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .restart local v3    # "allowMixedMimeTypes":Z
    .restart local v10    # "adaptiveTracks":[I
    .restart local v11    # "i":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 451
    .end local v1    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "adaptiveTracks":[I
    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 18
    .param p0, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p1, "formatSupport"    # [[I
    .param p2, "maxVideoWidth"    # I
    .param p3, "maxVideoHeight"    # I
    .param p4, "viewportWidth"    # I
    .param p5, "viewportHeight"    # I
    .param p6, "orientationMayChange"    # Z
    .param p7, "exceedConstraintsIfNecessary"    # Z

    .prologue
    .line 532
    const/4 v9, 0x0

    .line 533
    .local v9, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v12, 0x0

    .line 534
    .local v12, "selectedTrackIndex":I
    const/4 v11, -0x1

    .line 535
    .local v11, "selectedPixelCount":I
    const/4 v10, 0x0

    .line 536
    .local v10, "selectedIsWithinConstraints":Z
    const/4 v5, 0x0

    .local v5, "groupIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_9

    .line 537
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 538
    .local v4, "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-static {v4, v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->getViewportFilteredTrackIndices(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v13

    .line 540
    .local v13, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v14, p1, v5

    .line 541
    .local v14, "trackFormatSupport":[I
    const/4 v15, 0x0

    .local v15, "trackIndex":I
    :goto_1
    iget v0, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 542
    aget v16, v14, v15

    invoke-static/range {v16 .. v16}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(I)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 543
    invoke-virtual {v4, v15}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    .line 544
    .local v3, "format":Lcom/google/android/exoplayer2/Format;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    iget v0, v3, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    iget v0, v3, Lcom/google/android/exoplayer2/Format;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    :cond_0
    iget v0, v3, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    iget v0, v3, Lcom/google/android/exoplayer2/Format;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    :cond_1
    const/4 v6, 0x1

    .line 547
    .local v6, "isWithinConstraints":Z
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v7

    .line 549
    .local v7, "pixelCount":I
    if-eqz v10, :cond_5

    .line 550
    if-eqz v6, :cond_4

    .line 551
    invoke-static {v7, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->comparePixelCounts(II)I

    move-result v16

    if-lez v16, :cond_4

    const/4 v8, 0x1

    .line 557
    .local v8, "selectTrack":Z
    :goto_3
    if-eqz v8, :cond_2

    .line 558
    move-object v9, v4

    .line 559
    move v12, v15

    .line 560
    move v11, v7

    .line 561
    move v10, v6

    .line 541
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "isWithinConstraints":Z
    .end local v7    # "pixelCount":I
    .end local v8    # "selectTrack":Z
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 544
    .restart local v3    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 551
    .restart local v6    # "isWithinConstraints":Z
    .restart local v7    # "pixelCount":I
    :cond_4
    const/4 v8, 0x0

    goto :goto_3

    .line 553
    :cond_5
    if-nez v6, :cond_6

    if-eqz p7, :cond_7

    if-eqz v9, :cond_6

    .line 555
    invoke-static {v7, v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->comparePixelCounts(II)I

    move-result v16

    if-gez v16, :cond_7

    :cond_6
    const/4 v8, 0x1

    .restart local v8    # "selectTrack":Z
    :goto_4
    goto :goto_3

    .end local v8    # "selectTrack":Z
    :cond_7
    const/4 v8, 0x0

    goto :goto_4

    .line 536
    .end local v3    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v6    # "isWithinConstraints":Z
    .end local v7    # "pixelCount":I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 566
    .end local v4    # "group":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v13    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "trackFormatSupport":[I
    .end local v15    # "trackIndex":I
    :cond_9
    if-nez v9, :cond_a

    const/16 v16, 0x0

    :goto_5
    return-object v16

    :cond_a
    new-instance v16, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v12}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_5
.end method


# virtual methods
.method public getParameters()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->params:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    return-object v0
.end method

.method protected selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 11
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "preferredAudioLanguage"    # Ljava/lang/String;

    .prologue
    .line 589
    const/4 v3, 0x0

    .line 590
    .local v3, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 591
    .local v4, "selectedTrackIndex":I
    const/4 v5, 0x0

    .line 592
    .local v5, "selectedTrackScore":I
    const/4 v1, 0x0

    .local v1, "groupIndex":I
    :goto_0
    iget v10, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v10, :cond_6

    .line 593
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 594
    .local v7, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v6, p2, v1

    .line 595
    .local v6, "trackFormatSupport":[I
    const/4 v8, 0x0

    .local v8, "trackIndex":I
    :goto_1
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v10, :cond_5

    .line 596
    aget v10, v6, v8

    invoke-static {v10}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 597
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 598
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v10, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    const/4 v2, 0x1

    .line 600
    .local v2, "isDefault":Z
    :goto_2
    invoke-static {v0, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 601
    if-eqz v2, :cond_2

    .line 602
    const/4 v9, 0x4

    .line 611
    .local v9, "trackScore":I
    :goto_3
    if-le v9, v5, :cond_0

    .line 612
    move-object v3, v7

    .line 613
    move v4, v8

    .line 614
    move v5, v9

    .line 595
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v2    # "isDefault":Z
    .end local v9    # "trackScore":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 598
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 604
    .restart local v2    # "isDefault":Z
    :cond_2
    const/4 v9, 0x3

    .restart local v9    # "trackScore":I
    goto :goto_3

    .line 606
    .end local v9    # "trackScore":I
    :cond_3
    if-eqz v2, :cond_4

    .line 607
    const/4 v9, 0x2

    .restart local v9    # "trackScore":I
    goto :goto_3

    .line 609
    .end local v9    # "trackScore":I
    :cond_4
    const/4 v9, 0x1

    .restart local v9    # "trackScore":I
    goto :goto_3

    .line 592
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v2    # "isDefault":Z
    .end local v9    # "trackScore":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v6    # "trackFormatSupport":[I
    .end local v7    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "trackIndex":I
    :cond_6
    if-nez v3, :cond_7

    const/4 v10, 0x0

    :goto_4
    return-object v10

    :cond_7
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v10, v3, v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method protected selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 12
    .param p1, "trackType"    # I
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I

    .prologue
    const/4 v10, 0x1

    .line 677
    const/4 v3, 0x0

    .line 678
    .local v3, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 679
    .local v4, "selectedTrackIndex":I
    const/4 v5, 0x0

    .line 680
    .local v5, "selectedTrackScore":I
    const/4 v1, 0x0

    .local v1, "groupIndex":I
    :goto_0
    iget v11, p2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v1, v11, :cond_4

    .line 681
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 682
    .local v7, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v6, p3, v1

    .line 683
    .local v6, "trackFormatSupport":[I
    const/4 v8, 0x0

    .local v8, "trackIndex":I
    :goto_1
    iget v11, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v8, v11, :cond_3

    .line 684
    aget v11, v6, v8

    invoke-static {v11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 685
    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 686
    .local v0, "format":Lcom/google/android/exoplayer2/Format;
    iget v11, v0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1

    move v2, v10

    .line 687
    .local v2, "isDefault":Z
    :goto_2
    if-eqz v2, :cond_2

    const/4 v9, 0x2

    .line 688
    .local v9, "trackScore":I
    :goto_3
    if-le v9, v5, :cond_0

    .line 689
    move-object v3, v7

    .line 690
    move v4, v8

    .line 691
    move v5, v9

    .line 683
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v2    # "isDefault":Z
    .end local v9    # "trackScore":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 686
    .restart local v0    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2    # "isDefault":Z
    :cond_2
    move v9, v10

    .line 687
    goto :goto_3

    .line 680
    .end local v0    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v2    # "isDefault":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v6    # "trackFormatSupport":[I
    .end local v7    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v8    # "trackIndex":I
    :cond_4
    if-nez v3, :cond_5

    const/4 v10, 0x0

    :goto_4
    return-object v10

    :cond_5
    new-instance v10, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v10, v3, v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method protected selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 13
    .param p1, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "formatSupport"    # [[I
    .param p3, "preferredTextLanguage"    # Ljava/lang/String;
    .param p4, "preferredAudioLanguage"    # Ljava/lang/String;

    .prologue
    .line 627
    const/4 v5, 0x0

    .line 628
    .local v5, "selectedGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    const/4 v6, 0x0

    .line 629
    .local v6, "selectedTrackIndex":I
    const/4 v7, 0x0

    .line 630
    .local v7, "selectedTrackScore":I
    const/4 v2, 0x0

    .local v2, "groupIndex":I
    :goto_0
    iget v12, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v2, v12, :cond_a

    .line 631
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v9

    .line 632
    .local v9, "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    aget-object v8, p2, v2

    .line 633
    .local v8, "trackFormatSupport":[I
    const/4 v10, 0x0

    .local v10, "trackIndex":I
    :goto_1
    iget v12, v9, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v10, v12, :cond_9

    .line 634
    aget v12, v8, v10

    invoke-static {v12}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 635
    invoke-virtual {v9, v10}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 636
    .local v1, "format":Lcom/google/android/exoplayer2/Format;
    iget v12, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    const/4 v3, 0x1

    .line 637
    .local v3, "isDefault":Z
    :goto_2
    iget v12, v1, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_2

    const/4 v4, 0x1

    .line 639
    .local v4, "isForced":Z
    :goto_3
    move-object/from16 v0, p3

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 640
    if-eqz v3, :cond_3

    .line 641
    const/4 v11, 0x6

    .line 661
    .local v11, "trackScore":I
    :goto_4
    if-le v11, v7, :cond_0

    .line 662
    move-object v5, v9

    .line 663
    move v6, v10

    .line 664
    move v7, v11

    .line 633
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v11    # "trackScore":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 636
    .restart local v1    # "format":Lcom/google/android/exoplayer2/Format;
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 637
    .restart local v3    # "isDefault":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 642
    .restart local v4    # "isForced":Z
    :cond_3
    if-nez v4, :cond_4

    .line 646
    const/4 v11, 0x5

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 648
    .end local v11    # "trackScore":I
    :cond_4
    const/4 v11, 0x4

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 650
    .end local v11    # "trackScore":I
    :cond_5
    if-eqz v3, :cond_6

    .line 651
    const/4 v11, 0x3

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 652
    .end local v11    # "trackScore":I
    :cond_6
    if-eqz v4, :cond_8

    .line 653
    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->formatHasLanguage(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 654
    const/4 v11, 0x2

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 656
    .end local v11    # "trackScore":I
    :cond_7
    const/4 v11, 0x1

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 659
    .end local v11    # "trackScore":I
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "trackScore":I
    goto :goto_4

    .line 630
    .end local v1    # "format":Lcom/google/android/exoplayer2/Format;
    .end local v3    # "isDefault":Z
    .end local v4    # "isForced":Z
    .end local v11    # "trackScore":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 669
    .end local v8    # "trackFormatSupport":[I
    .end local v9    # "trackGroup":Lcom/google/android/exoplayer2/source/TrackGroup;
    .end local v10    # "trackIndex":I
    :cond_a
    if-nez v5, :cond_b

    const/4 v12, 0x0

    :goto_5
    return-object v12

    :cond_b
    new-instance v12, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    invoke-direct {v12, v5, v6}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;I)V

    goto :goto_5
.end method

.method protected selectTracks([Lcom/google/android/exoplayer2/RendererCapabilities;[Lcom/google/android/exoplayer2/source/TrackGroupArray;[[[I)[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 17
    .param p1, "rendererCapabilities"    # [Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "rendererTrackGroupArrays"    # [Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "rendererFormatSupports"    # [[[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 380
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v0, v1, [Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-object/from16 v16, v0

    .line 381
    .local v16, "rendererTrackSelections":[Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->params:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 382
    .local v15, "params":Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v14, v1, :cond_0

    .line 383
    aget-object v1, p1, v14

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 402
    aget-object v1, p1, v14

    invoke-interface {v1}, Lcom/google/android/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    aget-object v2, p2, v14

    aget-object v3, p3, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectOtherTrack(ILcom/google/android/exoplayer2/source/TrackGroupArray;[[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v16, v14

    .line 382
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 385
    :pswitch_0
    aget-object v2, p1, v14

    aget-object v3, p2, v14

    aget-object v4, p3, v14

    iget v5, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    iget v6, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    iget-boolean v7, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowNonSeamlessAdaptiveness:Z

    iget-boolean v8, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMixedMimeAdaptiveness:Z

    iget v9, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v10, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v11, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->orientationMayChange:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->adaptiveVideoTrackSelectionFactory:Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;

    iget-boolean v13, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v16, v14

    goto :goto_1

    .line 393
    :pswitch_1
    aget-object v1, p2, v14

    aget-object v2, p3, v14

    iget-object v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAudioTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v16, v14

    goto :goto_1

    .line 397
    :pswitch_2
    aget-object v1, p2, v14

    aget-object v2, p3, v14

    iget-object v3, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredTextLanguage:Ljava/lang/String;

    iget-object v4, v15, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguage:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectTextTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    aput-object v1, v16, v14

    goto :goto_1

    .line 407
    :cond_0
    return-object v16

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected selectVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 9
    .param p1, "rendererCapabilities"    # Lcom/google/android/exoplayer2/RendererCapabilities;
    .param p2, "groups"    # Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .param p3, "formatSupport"    # [[I
    .param p4, "maxVideoWidth"    # I
    .param p5, "maxVideoHeight"    # I
    .param p6, "allowNonSeamlessAdaptiveness"    # Z
    .param p7, "allowMixedMimeAdaptiveness"    # Z
    .param p8, "viewportWidth"    # I
    .param p9, "viewportHeight"    # I
    .param p10, "orientationMayChange"    # Z
    .param p11, "adaptiveVideoTrackSelectionFactory"    # Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;
    .param p12, "exceedConstraintsIfNecessary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v8, 0x0

    .line 419
    .local v8, "selection":Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    if-eqz p11, :cond_0

    .line 420
    invoke-static/range {p1 .. p11}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectAdaptiveVideoTrack(Lcom/google/android/exoplayer2/RendererCapabilities;Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIZZIIZLcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    .line 425
    :cond_0
    if-nez v8, :cond_1

    move-object v0, p2

    move-object v1, p3

    move v2, p4

    move v3, p5

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p12

    .line 426
    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->selectFixedVideoTrack(Lcom/google/android/exoplayer2/source/TrackGroupArray;[[IIIIIZZ)Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    move-result-object v8

    .line 429
    :cond_1
    return-object v8
.end method

.method public setParameters(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 2
    .param p1, "params"    # Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->params:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->params:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->invalidate()V

    .line 362
    :cond_0
    return-void
.end method
