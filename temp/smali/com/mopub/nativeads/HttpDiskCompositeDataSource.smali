.class public Lcom/mopub/nativeads/HttpDiskCompositeDataSource;
.super Ljava/lang/Object;
.source "HttpDiskCompositeDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/DataSource;


# static fields
.field static final BLOCK_SIZE:I = 0x7d000
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field static final EXPECTED_FILE_SIZE_KEY_PREFIX:Ljava/lang/String; = "expectedsize-"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final HTTP_RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field static final INTERVALS_KEY_PREFIX:Ljava/lang/String; = "intervals-sorted-"
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final LENGTH:Ljava/lang/String; = "length"

.field static final LENGTH_UNBOUNDED:I = -0x1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private static final START:Ljava/lang/String; = "start"


# instance fields
.field private mCachedBytes:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDataBlockOffset:I

.field private mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mEventDetails:Lcom/mopub/common/event/EventDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mExpectedFileLength:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mHasLoggedDownloadStart:Z

.field private final mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIntervals:Ljava/util/TreeSet;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirty:Z

.field private mIsHttpSourceOpen:Z

.field private mKey:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mSegment:I

.field private mStartInDataBlock:I

.field private mStartInFile:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/event/EventDetails;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "eventDetails"    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x1f40

    .line 138
    new-instance v0, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/util/Predicate;Lcom/google/android/exoplayer/upstream/TransferListener;IIZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/event/EventDetails;Lcom/google/android/exoplayer/upstream/HttpDataSource;)V

    .line 143
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/event/EventDetails;Lcom/google/android/exoplayer/upstream/HttpDataSource;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "eventDetails"    # Lcom/mopub/common/event/EventDetails;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "httpDataSource"    # Lcom/google/android/exoplayer/upstream/HttpDataSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 149
    iput-object p4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    .line 150
    invoke-static {p1}, Lcom/mopub/common/CacheService;->initialize(Landroid/content/Context;)V

    .line 151
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    .line 152
    iput-object p3, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    .line 153
    return-void
.end method

.method static addNewInterval(Ljava/util/TreeSet;II)V
    .locals 2
    .param p0    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "length"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "intervals":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mopub/nativeads/IntInterval;>;"
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 488
    invoke-static {p1, p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v0

    add-int v1, p1, p2

    if-lt v0, v1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_0
    new-instance v0, Lcom/mopub/nativeads/IntInterval;

    invoke-direct {v0, p1, p2}, Lcom/mopub/nativeads/IntInterval;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static areBytesAvailableInCache(III)Z
    .locals 1
    .param p0, "farthestContiguousPoint"    # I
    .param p1, "startInFile"    # I
    .param p2, "dataBlockOffset"    # I

    .prologue
    .line 445
    add-int v0, p1, p2

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getExpectedFileLengthFromDisk(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expectedsize-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v1

    .line 272
    .local v1, "maxSizeByteArray":[B
    if-eqz v1, :cond_0

    .line 274
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 279
    :cond_0
    :goto_0
    return-object v2

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static getFirstContiguousPointAfter(ILjava/util/TreeSet;)I
    .locals 5
    .param p0, "point"    # I
    .param p1    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, "intervals":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mopub/nativeads/IntInterval;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 466
    move v1, p0

    .line 467
    .local v1, "lastContiguousPoint":I
    invoke-virtual {p1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/IntInterval;

    .line 468
    .local v0, "interval":Lcom/mopub/nativeads/IntInterval;
    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getStart()I

    move-result v3

    if-gt v3, v1, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getStart()I

    move-result v3

    invoke-virtual {v0}, Lcom/mopub/nativeads/IntInterval;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    .line 469
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 473
    .end local v0    # "interval":Lcom/mopub/nativeads/IntInterval;
    :cond_1
    return v1
.end method

.method private static populateIntervalsFromDisk(Ljava/lang/String;Ljava/util/TreeSet;)V
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "intervals":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mopub/nativeads/IntInterval;>;"
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "intervals-sorted-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v2

    .line 248
    .local v2, "intervalsFromDisk":[B
    if-eqz v2, :cond_0

    .line 249
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 251
    .local v3, "intervalsStringData":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 252
    .local v5, "jsonIntervalArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 253
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, "jsonInterval":Lorg/json/JSONObject;
    new-instance v6, Lcom/mopub/nativeads/IntInterval;

    const-string v7, "start"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "length"

    .line 255
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/mopub/nativeads/IntInterval;-><init>(II)V

    .line 254
    invoke-virtual {p1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    .end local v1    # "i":I
    .end local v4    # "jsonInterval":Lorg/json/JSONObject;
    .end local v5    # "jsonIntervalArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "clearing cache since invalid json intervals found"

    invoke-static {v6, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    .line 265
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "intervalsStringData":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 260
    .restart local v3    # "intervalsStringData":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string v6, "clearing cache since unable to read json data"

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Ljava/util/TreeSet;->clear()V

    goto :goto_1
.end method

.method private writeCacheToDiskAndClearVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 450
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->addNewInterval(Ljava/util/TreeSet;II)V

    .line 451
    iput v3, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 452
    iget v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 453
    iput v3, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 454
    iget v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    const v1, 0x7d000

    div-int/2addr v0, v1

    iput v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    .line 455
    return-void
.end method

.method private static writeIntervalsToDisk(Ljava/util/TreeSet;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/util/TreeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Lcom/mopub/nativeads/IntInterval;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 310
    .local p0, "intervals":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/mopub/nativeads/IntInterval;>;"
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 311
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 313
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 314
    .local v1, "jsonIntervals":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/IntInterval;

    .line 315
    .local v0, "interval":Lcom/mopub/nativeads/IntInterval;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 317
    .end local v0    # "interval":Lcom/mopub/nativeads/IntInterval;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intervals-sorted-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 317
    invoke-static {v2, v3}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 319
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 284
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    invoke-static {v0, v1}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 286
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    invoke-static {v0, v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->addNewInterval(Ljava/util/TreeSet;II)V

    .line 287
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeIntervalsToDisk(Ljava/util/TreeSet;Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v4, v0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v0

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 289
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v0, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_FINISHED:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v1, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v3, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 297
    :cond_0
    iput-object v5, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 299
    iget-object v0, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    invoke-interface {v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->close()V

    .line 300
    iput-boolean v4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    .line 301
    iput v4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 302
    iput v4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 303
    iput v4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 304
    iput-object v5, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 305
    iput-boolean v4, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    .line 306
    return-void
.end method

.method public open(Lcom/google/android/exoplayer/upstream/DataSpec;)J
    .locals 12
    .param p1, "dataSpec"    # Lcom/google/android/exoplayer/upstream/DataSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 159
    const-wide/16 v10, -0x1

    .line 238
    :cond_0
    :goto_0
    return-wide v10

    .line 162
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    .line 164
    iput-object p1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 165
    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 167
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 169
    :cond_2
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    long-to-int v1, v2

    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    .line 170
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    const v2, 0x7d000

    div-int/2addr v1, v2

    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 172
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    const v2, 0x7d000

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    .line 173
    const/4 v1, 0x0

    iput v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 175
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getExpectedFileLengthFromDisk(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 177
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->populateIntervalsFromDisk(Ljava/lang/String;Ljava/util/TreeSet;)V

    .line 179
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    iget-object v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v1, v2}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v9

    .line 182
    .local v9, "mDataRequestStartPoint":I
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v1, :cond_3

    .line 183
    const v1, 0x7d000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 186
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    if-le v9, v1, :cond_3

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache segment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was evicted. Invalidating cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 189
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    long-to-int v9, v2

    .line 195
    :cond_3
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v9, v1, :cond_9

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_6

    .line 198
    const-wide/16 v4, -0x1

    .line 204
    .local v4, "lengthToUse":J
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v1, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    int-to-long v2, v9

    iget-object v6, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iget v7, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 208
    .local v0, "modifiedDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    :try_start_0
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    move-result-wide v10

    .line 209
    .local v10, "size":J
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-nez v1, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v1, v4, v2

    if-nez v1, :cond_5

    .line 212
    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    int-to-long v2, v1

    add-long/2addr v2, v10

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expectedsize-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    .line 214
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 213
    invoke-static {v1, v2}, Lcom/mopub/common/CacheService;->putToDiskCache(Ljava/lang/String;[B)Z

    .line 216
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    .line 217
    iget-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHasLoggedDownloadStart:Z

    if-nez v1, :cond_0

    .line 218
    sget-object v1, Lcom/mopub/common/event/BaseEvent$Name;->DOWNLOAD_START:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Category;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$SamplingRate;->NATIVE_VIDEO:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    iget-object v6, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mEventDetails:Lcom/mopub/common/event/EventDetails;

    invoke-static {v1, v2, v3, v6}, Lcom/mopub/common/event/Event;->createEventFromDetails(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;Lcom/mopub/common/event/BaseEvent$SamplingRate;Lcom/mopub/common/event/EventDetails;)Lcom/mopub/common/event/BaseEvent;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHasLoggedDownloadStart:Z
    :try_end_0
    .catch Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 225
    .end local v10    # "size":J
    :catch_0
    move-exception v8

    .line 228
    .local v8, "e":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    iget v1, v8, Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_8

    .line 229
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    if-nez v1, :cond_7

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int v1, v9, v1

    int-to-long v10, v1

    .line 233
    .restart local v10    # "size":J
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    goto/16 :goto_0

    .line 201
    .end local v0    # "modifiedDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v4    # "lengthToUse":J
    .end local v8    # "e":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    .end local v10    # "size":J
    :cond_6
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-wide v2, v1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    iget v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int v1, v9, v1

    int-to-long v6, v1

    sub-long v4, v2, v6

    .restart local v4    # "lengthToUse":J
    goto/16 :goto_1

    .line 229
    .restart local v0    # "modifiedDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .restart local v8    # "e":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_7
    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int/2addr v1, v2

    int-to-long v10, v1

    goto :goto_2

    .line 231
    :cond_8
    throw v8

    .line 236
    .end local v0    # "modifiedDataSpec":Lcom/google/android/exoplayer/upstream/DataSpec;
    .end local v4    # "lengthToUse":J
    .end local v8    # "e":Lcom/google/android/exoplayer/upstream/HttpDataSource$InvalidResponseCodeException;
    :cond_9
    iget-wide v2, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mExpectedFileLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int/2addr v1, v2

    int-to-long v10, v1

    .restart local v10    # "size":J
    :goto_3
    goto/16 :goto_0

    .end local v10    # "size":J
    :cond_a
    iget-wide v10, p1, Lcom/google/android/exoplayer/upstream/DataSpec;->length:J

    goto :goto_3
.end method

.method public read([BII)I
    .locals 19
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const v2, 0x7d000

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading more than the block size (512000 bytes) at once is not possible. length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 326
    const/4 v12, -0x1

    .line 440
    :cond_0
    :goto_0
    return v12

    .line 328
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    if-nez v2, :cond_2

    .line 329
    const-string v2, "Unable to read from data source when no spec provided"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 330
    const/4 v12, -0x1

    goto :goto_0

    .line 332
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v2, :cond_3

    .line 333
    const-string v2, "No cache set up. Call open before read."

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 334
    const/4 v12, -0x1

    goto :goto_0

    .line 338
    :cond_3
    const v2, 0x7d000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int v10, v2, v3

    .line 341
    .local v10, "bytesAvailableInCurrentBlock":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-static {v2, v3}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->getFirstContiguousPointAfter(ILjava/util/TreeSet;)I

    move-result v16

    .line 344
    .local v16, "farthestContiguousPoint":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    sub-int v2, v16, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int v17, v2, v3

    .line 346
    .local v17, "validBytesLeftInCache":I
    move/from16 v0, v17

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 348
    .local v14, "bytesToRead":I
    const/4 v12, 0x0

    .line 350
    .local v12, "bytesReadFromDisk":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    move/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->areBytesAvailableInCache(III)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 352
    if-gt v14, v10, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 356
    add-int/2addr v12, v14

    .line 395
    :cond_4
    :goto_1
    sub-int v15, p3, v12

    .line 396
    .local v15, "bytesToReadFromNetwork":I
    if-lez v15, :cond_0

    .line 400
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsDirty:Z

    .line 403
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    if-nez v2, :cond_7

    .line 404
    const-string v2, "end of cache reached. No http source open"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 405
    const/4 v12, -0x1

    goto/16 :goto_0

    .line 359
    .end local v15    # "bytesToReadFromNetwork":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v3, v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v2, v3, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v2, v10

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 362
    add-int/2addr v12, v10

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeCacheToDiskAndClearVariables()V

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v2, :cond_6

    .line 373
    const-string v2, "Unexpected cache miss. Invalidating cache"

    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIntervals:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    .line 375
    const v2, 0x7d000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->close()V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    move-object/from16 v18, v0

    new-instance v2, Lcom/google/android/exoplayer/upstream/DataSpec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v3, v3, Lcom/google/android/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInFile:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v4, v5

    int-to-long v4, v4

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget-object v8, v8, Lcom/google/android/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    iget v9, v9, Lcom/google/android/exoplayer/upstream/DataSpec;->flags:I

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->open(Lcom/google/android/exoplayer/upstream/DataSpec;)J

    .line 381
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mIsHttpSourceOpen:Z

    goto/16 :goto_1

    .line 385
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v3, v4

    add-int v4, p2, v12

    sub-int v5, v14, v12

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int v3, v14, v12

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 389
    move v12, v14

    goto/16 :goto_1

    .line 409
    .restart local v15    # "bytesToReadFromNetwork":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mHttpDataSource:Lcom/google/android/exoplayer/upstream/HttpDataSource;

    add-int v3, p2, v12

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v15}, Lcom/google/android/exoplayer/upstream/HttpDataSource;->read([BII)I

    move-result v13

    .line 412
    .local v13, "bytesReadFromNetwork":I
    const v2, 0x7d000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int v11, v2, v3

    .line 414
    .local v11, "bytesAvailableInCurrentBlockForNetwork":I
    if-ge v11, v13, :cond_9

    .line 418
    add-int v2, p2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->writeCacheToDiskAndClearVariables()V

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mSegment:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    if-nez v2, :cond_8

    .line 426
    const v2, 0x7d000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    .line 429
    :cond_8
    add-int v2, p2, v11

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v4, v5

    sub-int v5, v13, v11

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    sub-int v3, v13, v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    .line 440
    :goto_2
    add-int/2addr v12, v13

    goto/16 :goto_0

    .line 435
    :cond_9
    add-int v2, p2, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mCachedBytes:[B

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mStartInDataBlock:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mopub/nativeads/HttpDiskCompositeDataSource;->mDataBlockOffset:I

    goto :goto_2
.end method
