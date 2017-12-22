.class public Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;
.super Ljava/lang/Object;
.source "FileSystemDataRepositoryImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/data/DataRepository;


# static fields
.field private static final DEFAULT_DISK_USAGE_BYTES:I = 0x500000

.field private static final DEFAULT_MAX_SIZE_OF_ENTRY_IN_BYTES:I = 0x400

.field private static final TAG:Ljava/lang/String; = "nf_log"


# instance fields
.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/util/data/DataRepository$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxEntrySizeInBytes:I

.field private final mMaxSizeInBytes:I

.field private final mRootDirectory:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 90
    const/high16 v0, 0x500000

    const/16 v1, 0x400

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;-><init>(Ljava/io/File;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    .line 79
    iput-object p1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    .line 80
    iput p2, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mMaxSizeInBytes:I

    .line 81
    return-void
.end method

.method private getFileForName(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isHigherThanMaximumAllocatedSize(I)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 400
    iget-wide v4, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iget v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mMaxSizeInBytes:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 401
    :goto_0
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Need to prune based on using too much space: %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 402
    return v0

    :cond_0
    move v0, v2

    .line 400
    goto :goto_0
.end method

.method private isNotEnoughSpaceAvailable(I)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/FileUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v4

    .line 415
    int-to-long v6, p1

    cmp-long v0, v6, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 417
    :goto_0
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v6, "Used space %d in bytes. Need to prune based on not having enough space (%d in bytes) on device: %b"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v3, v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    return v0

    :cond_0
    move v0, v2

    .line 415
    goto :goto_0
.end method

.method private pruneIfNeeded(I)V
    .locals 8

    .prologue
    .line 341
    iget v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mMaxEntrySizeInBytes:I

    if-le p1, v0, :cond_0

    .line 342
    iput p1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mMaxEntrySizeInBytes:I

    .line 345
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->isHigherThanMaximumAllocatedSize(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->isNotEnoughSpaceAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 346
    :cond_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Pruning oldest entries."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    .line 353
    const/4 v0, 0x0

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 357
    new-instance v2, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;-><init>(Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 370
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    .line 371
    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->getFileForName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 372
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 373
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    .line 374
    if-eqz v6, :cond_4

    .line 375
    iget-wide v6, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    sub-long v4, v6, v4

    iput-wide v4, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    .line 379
    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    add-int/lit8 v0, v1, 0x1

    .line 381
    iget-wide v4, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    iget v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mMaxSizeInBytes:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    .line 390
    :cond_2
    :goto_2
    return-void

    .line 348
    :cond_3
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "No need to prune oldest entries."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 377
    :cond_4
    const-string/jumbo v4, "nf_log"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not delete entry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move v1, v0

    .line 384
    goto :goto_0
.end method

.method private static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4

    .prologue
    .line 297
    new-array v1, p1, [B

    .line 299
    const/4 v0, 0x0

    .line 300
    :goto_0
    if-ge v0, p1, :cond_0

    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 301
    add-int/2addr v0, v2

    goto :goto_0

    .line 303
    :cond_0
    if-eq v0, p1, :cond_1

    .line 304
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    :cond_1
    return-object v1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 264
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_0

    .line 266
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 267
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 274
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mTotalSize:J

    .line 275
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Cache cleared."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;
    .locals 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/data/DataRepository$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    .line 193
    if-nez v0, :cond_1

    .line 194
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Entry not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p2, :cond_0

    .line 196
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {p2, p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;->onDataLoaded(Ljava/lang/String;[BJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 201
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_log"

    const-string/jumbo v1, "Entry found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->getFileForName(Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 205
    :try_start_2
    new-instance v1, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;-><init>(Ljava/io/InputStream;Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 206
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->access$100(Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;)I

    move-result v0

    int-to-long v6, v0

    sub-long/2addr v4, v6

    long-to-int v0, v4

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 207
    if-eqz p2, :cond_2

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-interface {p2, p1, v0, v4, v5}, Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;->onDataLoaded(Ljava/lang/String;[BJ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    :cond_2
    if-eqz v1, :cond_0

    .line 217
    :try_start_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 212
    :goto_1
    :try_start_5
    const-string/jumbo v2, "nf_log"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Failed to load file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->remove(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 215
    if-eqz v1, :cond_3

    .line 217
    :try_start_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    :cond_3
    :goto_2
    if-eqz p2, :cond_0

    .line 224
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    :try_start_7
    invoke-interface {p2, p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;->onDataLoaded(Ljava/lang/String;[BJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 217
    :try_start_8
    invoke-virtual {v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    :cond_4
    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 218
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    .line 215
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 211
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V
    .locals 7

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "nf_log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to create cache dir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    if-eqz p1, :cond_1

    .line 107
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;->onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 113
    if-nez v1, :cond_3

    .line 114
    if-eqz p1, :cond_1

    .line 115
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;->onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 120
    :cond_3
    :try_start_2
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v3, v1, v0

    .line 121
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
    iget-object v4, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;

    invoke-direct {v6, v3}, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;-><init>(Ljava/io/File;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_5
    if-eqz p1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;->onLoaded([Lcom/netflix/mediaclient/util/data/DataRepository$Entry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;

    .line 239
    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->getFileForName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    :cond_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->save(Ljava/lang/String;[BLcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized save(Ljava/lang/String;[BLcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 149
    monitor-enter p0

    :try_start_0
    array-length v1, p2

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->pruneIfNeeded(I)V

    .line 151
    iget-object v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mRootDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/FileUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    .line 152
    array-length v1, p2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 153
    const-string/jumbo v1, "nf_log"

    const-string/jumbo v4, "Even after pruning, we may NOT have enough space avilable. Free space: %d vs entry space %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 156
    :cond_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;->getFilenameForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->getFileForName(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 159
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 160
    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 161
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 162
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 163
    new-instance v1, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/util/data/FileSystemEntryImpl;-><init>(Ljava/io/File;)V

    .line 164
    iget-object v3, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl;->mEntries:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    if-eqz p3, :cond_1

    .line 166
    invoke-interface {v1}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;->onDataSaved(Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-interface {v1}, Lcom/netflix/mediaclient/util/data/DataRepository$Entry;->getKey()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 180
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    :try_start_2
    const-string/jumbo v3, "nf_log"

    const-string/jumbo v4, "Failed to save data to file system!"

    invoke-static {v3, v4, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 173
    if-nez v1, :cond_3

    .line 174
    const-string/jumbo v1, "nf_log"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to save data. Could not clean up file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    if-eqz p3, :cond_2

    .line 178
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;->onDataSaved(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
