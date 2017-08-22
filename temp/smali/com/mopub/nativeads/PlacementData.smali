.class Lcom/mopub/nativeads/PlacementData;
.super Ljava/lang/Object;
.source "PlacementData.java"


# static fields
.field private static final MAX_ADS:I = 0xc8

.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final mAdjustedAdPositions:[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mDesiredCount:I

.field private final mDesiredInsertionPositions:[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mDesiredOriginalPositions:[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNativeAds:[Lcom/mopub/nativeads/NativeAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mOriginalAdPositions:[I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mPlacedCount:I


# direct methods
.method private constructor <init>([I)V
    .locals 3
    .param p1, "desiredInsertionPositions"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v1, 0xc8

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    .line 134
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    .line 135
    iput v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 136
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    .line 137
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    .line 138
    new-array v0, v1, [Lcom/mopub/nativeads/NativeAd;

    iput-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    .line 139
    iput v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 145
    array-length v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5
    .param p0, "array"    # [I
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "value"    # I

    .prologue
    .line 510
    move v1, p1

    .line 511
    .local v1, "lo":I
    add-int/lit8 v0, p2, -0x1

    .line 513
    .local v0, "hi":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 514
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 515
    .local v2, "mid":I
    aget v3, p0, v2

    .line 517
    .local v3, "midVal":I
    if-ge v3, p3, :cond_0

    .line 518
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 519
    :cond_0
    if-le v3, p3, :cond_2

    .line 520
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 525
    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method private static binarySearchFirstEquals([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 473
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v1

    .line 477
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 478
    xor-int/lit8 v2, v1, -0x1

    .line 486
    :goto_0
    return v2

    .line 481
    :cond_0
    aget v0, p0, v1

    .line 482
    .local v0, "duplicateValue":I
    :goto_1
    if-ltz v1, :cond_1

    aget v2, p0, v1

    if-ne v2, v0, :cond_1

    .line 483
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 486
    :cond_1
    add-int/lit8 v2, v1, 0x1

    goto :goto_0
.end method

.method private static binarySearchGreaterThan([III)I
    .locals 3
    .param p0, "array"    # [I
    .param p1, "count"    # I
    .param p2, "value"    # I

    .prologue
    .line 490
    const/4 v2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v1

    .line 494
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 495
    xor-int/lit8 v2, v1, -0x1

    .line 503
    :goto_0
    return v2

    .line 498
    :cond_0
    aget v0, p0, v1

    .line 499
    .local v0, "duplicateValue":I
    :goto_1
    if-ge v1, p1, :cond_1

    aget v2, p0, v1

    if-ne v2, v0, :cond_1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 503
    goto :goto_0
.end method

.method static empty()Lcom/mopub/nativeads/PlacementData;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/mopub/nativeads/PlacementData;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object v0
.end method

.method static fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;
    .locals 10
    .param p0, "adPositioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "fixed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getRepeatingInterval()I

    move-result v2

    .line 155
    .local v2, "interval":I
    const v8, 0x7fffffff

    if-ne v2, v8, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 156
    .local v7, "size":I
    :goto_0
    new-array v0, v7, [I

    .line 160
    .local v0, "desiredInsertionPositions":[I
    const/4 v4, 0x0

    .line 161
    .local v4, "numAds":I
    const/4 v3, 0x0

    .line 162
    .local v3, "lastPos":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 163
    .local v6, "position":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int v3, v9, v4

    .line 164
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "numAds":I
    .local v5, "numAds":I
    aput v3, v0, v4

    move v4, v5

    .line 165
    .end local v5    # "numAds":I
    .restart local v4    # "numAds":I
    goto :goto_1

    .line 155
    .end local v0    # "desiredInsertionPositions":[I
    .end local v3    # "lastPos":I
    .end local v4    # "numAds":I
    .end local v6    # "position":Ljava/lang/Integer;
    .end local v7    # "size":I
    :cond_0
    const/16 v7, 0xc8

    goto :goto_0

    .line 168
    .restart local v0    # "desiredInsertionPositions":[I
    .restart local v3    # "lastPos":I
    .restart local v5    # "numAds":I
    .restart local v7    # "size":I
    :goto_2
    if-ge v5, v7, :cond_1

    .line 169
    add-int v8, v3, v2

    add-int/lit8 v3, v8, -0x1

    .line 170
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "numAds":I
    .restart local v4    # "numAds":I
    aput v3, v0, v5

    move v5, v4

    .end local v4    # "numAds":I
    .restart local v5    # "numAds":I
    goto :goto_2

    .line 172
    :cond_1
    new-instance v8, Lcom/mopub/nativeads/PlacementData;

    invoke-direct {v8, v0}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object v8

    .end local v5    # "numAds":I
    .restart local v4    # "numAds":I
    :cond_2
    move v5, v4

    .end local v4    # "numAds":I
    .restart local v5    # "numAds":I
    goto :goto_2
.end method


# virtual methods
.method clearAds()V
    .locals 3

    .prologue
    .line 409
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    goto :goto_0
.end method

.method clearAdsInRange(II)I
    .locals 12
    .param p1, "adjustedStartRange"    # I
    .param p2, "adjustedEndRange"    # I

    .prologue
    const/4 v9, 0x0

    .line 348
    iget v10, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v3, v10, [I

    .line 349
    .local v3, "clearOriginalPositions":[I
    iget v10, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v1, v10, [I

    .line 350
    .local v1, "clearAdjustedPositions":[I
    const/4 v2, 0x0

    .line 354
    .local v2, "clearCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v10, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v6, v10, :cond_2

    .line 355
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v8, v10, v6

    .line 356
    .local v8, "originalPosition":I
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v0, v10, v6

    .line 357
    .local v0, "adjustedPosition":I
    if-gt p1, v0, :cond_1

    if-ge v0, p2, :cond_1

    .line 360
    aput v8, v3, v2

    .line 361
    sub-int v10, v0, v2

    aput v10, v1, v2

    .line 364
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 365
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    const/4 v11, 0x0

    aput-object v11, v10, v6

    .line 366
    add-int/lit8 v2, v2, 0x1

    .line 354
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    :cond_1
    if-lez v2, :cond_0

    .line 369
    sub-int v7, v6, v2

    .line 370
    .local v7, "newIndex":I
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v8, v10, v7

    .line 371
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    sub-int v11, v0, v2

    aput v11, v10, v7

    .line 372
    iget-object v10, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    iget-object v11, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v11, v11, v6

    aput-object v11, v10, v7

    goto :goto_1

    .line 377
    .end local v0    # "adjustedPosition":I
    .end local v7    # "newIndex":I
    .end local v8    # "originalPosition":I
    :cond_2
    if-nez v2, :cond_3

    move v2, v9

    .line 401
    .end local v2    # "clearCount":I
    :goto_2
    return v2

    .line 384
    .restart local v2    # "clearCount":I
    :cond_3
    aget v5, v1, v9

    .line 385
    .local v5, "firstCleared":I
    iget-object v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v10, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v9, v10, v5}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v4

    .line 387
    .local v4, "desiredIndex":I
    iget v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/lit8 v6, v9, -0x1

    :goto_3
    if-lt v6, v4, :cond_4

    .line 388
    iget-object v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v10, v6, v2

    iget-object v11, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v11, v11, v6

    aput v11, v9, v10

    .line 389
    iget-object v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int v10, v6, v2

    iget-object v11, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v11, v11, v6

    sub-int/2addr v11, v2

    aput v11, v9, v10

    .line 387
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 393
    :cond_4
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_5

    .line 394
    iget-object v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v10, v4, v6

    aget v11, v3, v6

    aput v11, v9, v10

    .line 395
    iget-object v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int v10, v4, v6

    aget v11, v1, v6

    aput v11, v9, v10

    .line 393
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 399
    :cond_5
    iget v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/2addr v9, v2

    iput v9, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 400
    iget v9, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    goto :goto_2
.end method

.method getAdjustedCount(I)I
    .locals 1
    .param p1, "originalCount"    # I

    .prologue
    .line 334
    if-nez p1, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 337
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method getAdjustedPosition(I)I
    .locals 3
    .param p1, "originalPosition"    # I

    .prologue
    .line 313
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v1, v2, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    .line 314
    .local v0, "index":I
    add-int v1, p1, v0

    return v1
.end method

.method getOriginalCount(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    const/4 v1, -0x1

    .line 321
    if-nez p1, :cond_1

    .line 322
    const/4 v1, 0x0

    .line 327
    :cond_0
    :goto_0
    return v1

    .line 326
    :cond_1
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result v0

    .line 327
    .local v0, "originalPos":I
    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method getOriginalPosition(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 297
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v1, v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    .line 300
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 301
    xor-int/lit8 v1, v0, -0x1

    sub-int v1, p1, v1

    .line 305
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;
    .locals 4
    .param p1, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v1, v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    .line 276
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method getPlacedAdPositions()[I
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 288
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v0, v1, [I

    .line 289
    .local v0, "positions":[I
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-object v0
.end method

.method insertItem(I)V
    .locals 4
    .param p1, "originalPosition"    # I

    .prologue
    .line 422
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v1

    .line 424
    .local v1, "indexToIncrement":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v2, :cond_0

    .line 425
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 426
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v1

    .line 432
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v0, v2, :cond_1

    .line 433
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 434
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 436
    :cond_1
    return-void
.end method

.method isPlacedAd(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 265
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v2, v1, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    .line 266
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method moveItem(II)V
    .locals 0
    .param p1, "originalPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    .line 469
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    .line 470
    return-void
.end method

.method nextInsertionPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v1, v2, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    .line 195
    .local v0, "index":I
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ne v0, v1, :cond_0

    .line 196
    const/4 v1, -0x1

    .line 198
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method placeAd(ILcom/mopub/nativeads/NativeAd;)V
    .locals 8
    .param p1, "adjustedPosition"    # I
    .param p2, "nativeAd"    # Lcom/mopub/nativeads/NativeAd;

    .prologue
    .line 219
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v6, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v5, v6, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 221
    .local v0, "desiredIndex":I
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v5, v5, v0

    if-eq v5, p1, :cond_2

    .line 223
    :cond_0
    const-string v5, "Attempted to insert an ad at an invalid position"

    invoke-static {v5}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;)V

    .line 259
    :cond_1
    return-void

    .line 228
    :cond_2
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v3, v5, v0

    .line 229
    .local v3, "originalPosition":I
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v6, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v5, v6, v3}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v4

    .line 231
    .local v4, "placeIndex":I
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v4, v5, :cond_3

    .line 232
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    sub-int v2, v5, v4

    .line 233
    .local v2, "num":I
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget-object v6, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5, v4, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget-object v6, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5, v4, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    iget-object v6, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    add-int/lit8 v7, v4, 0x1

    invoke-static {v5, v4, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .end local v2    # "num":I
    :cond_3
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v3, v5, v4

    .line 240
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aput p1, v5, v4

    .line 241
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, v5, v4

    .line 242
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 245
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    sub-int/2addr v5, v0

    add-int/lit8 v2, v5, -0x1

    .line 246
    .restart local v2    # "num":I
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    invoke-static {v5, v6, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    invoke-static {v5, v6, v7, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 253
    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v1, v5, :cond_4

    .line 254
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_4
    add-int/lit8 v1, v4, 0x1

    :goto_1
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v1, v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method previousInsertionPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 206
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v1, v2, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 208
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 209
    const/4 v1, -0x1

    .line 211
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    goto :goto_0
.end method

.method removeItem(I)V
    .locals 4
    .param p1, "originalPosition"    # I

    .prologue
    .line 446
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v1

    .line 450
    .local v1, "indexToDecrement":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 452
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v1

    .line 458
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v0, v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 460
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 462
    :cond_1
    return-void
.end method

.method shouldPlaceAd(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v2, v1, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    .line 185
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
