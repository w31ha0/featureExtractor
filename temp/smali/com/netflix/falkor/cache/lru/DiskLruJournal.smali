.class public final Lcom/netflix/falkor/cache/lru/DiskLruJournal;
.super Ljava/lang/Object;
.source "DiskLruJournal.java"


# static fields
.field private static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field private static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field private static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field private static final MAGIC:Ljava/lang/String; = "com.netflix.falkor.cache.lru.DiskLruJournal"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final TAG:Ljava/lang/String; = "DiskLruJournal"

.field private static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnRemovedListener:Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J


# direct methods
.method private constructor <init>(Ljava/io/File;IJLcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide v4, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->size:J

    .line 157
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    .line 168
    iput-wide v4, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->nextSequenceNumber:J

    .line 171
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 172
    new-instance v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;

    invoke-direct {v0, p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 195
    iput-object p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->directory:Ljava/io/File;

    .line 196
    iput p2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->appVersion:I

    .line 197
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    .line 198
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileTmp:Ljava/io/File;

    .line 199
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileBackup:Ljava/io/File;

    .line 200
    iput-wide p3, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->maxSize:J

    .line 201
    iput-object p5, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->mOnRemovedListener:Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)Ljava/io/Writer;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->trimToSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;J)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->edit(Ljava/lang/String;J)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->completeEdit(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)Z
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/netflix/falkor/cache/lru/DiskLruJournal;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/netflix/falkor/cache/lru/DiskLruJournal;I)I
    .locals 0

    .prologue
    .line 90
    iput p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;Z)V
    .locals 6

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->access$1200(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    move-result-object v0

    .line 485
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 489
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    .line 490
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    .line 491
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$600(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    if-eqz v1, :cond_4

    .line 492
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$602(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Z)Z

    .line 493
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CLEAN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 494
    if-eqz p2, :cond_1

    .line 495
    iget-wide v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->nextSequenceNumber:J

    invoke-static {v0, v2, v3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$1002(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;J)J

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 503
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :cond_3
    monitor-exit p0

    return-void

    .line 498
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 378
    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->checkNotClosed()V

    .line 427
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 428
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 429
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$1000(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 445
    :goto_0
    monitor-exit p0

    return-object v0

    .line 432
    :cond_1
    if-nez v0, :cond_2

    .line 433
    :try_start_1
    new-instance v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V

    .line 434
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 439
    :goto_1
    new-instance v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V

    .line 440
    invoke-static {v1, v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    .line 443
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 435
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 436
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .prologue
    .line 513
    .line 514
    iget v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    .line 515
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    .line 515
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IJLcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;)Lcom/netflix/falkor/cache/lru/DiskLruJournal;
    .locals 8

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 231
    :cond_1
    :goto_0
    new-instance v1, Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;-><init>(Ljava/io/File;IJLcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;)V

    .line 232
    iget-object v0, v1, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    :try_start_0
    invoke-direct {v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->readJournal()V

    .line 235
    invoke-direct {v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->processJournal()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    return-object v1

    .line 226
    :cond_2
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    const-string/jumbo v2, "DiskLruJournal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DiskLruJournal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", removing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->delete()V

    .line 248
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v1, Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;-><init>(Ljava/io/File;IJLcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;)V

    .line 250
    invoke-direct {v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->rebuildJournal()V

    goto :goto_1
.end method

.method private processJournal()V
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->deleteIfExists(Ljava/io/File;)V

    .line 324
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 326
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    .line 328
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method private readJournal()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 255
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 256
    :try_start_0
    new-instance v4, Lcom/netflix/falkor/cache/lru/StrictLineReader;

    sget-object v0, Lcom/netflix/falkor/cache/lru/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v0}, Lcom/netflix/falkor/cache/lru/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 257
    :try_start_1
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 261
    const-string/jumbo v8, "com.netflix.falkor.cache.lru.DiskLruJournal"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "1"

    .line 262
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->appVersion:I

    .line 263
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, ""

    .line 264
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 265
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal header: ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 256
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_0
    if-eqz v4, :cond_1

    if-eqz v1, :cond_8

    :try_start_3
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1
    :goto_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 255
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 287
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v2, :cond_a

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :goto_3
    throw v0

    .line 268
    :cond_3
    const/4 v0, 0x0

    .line 271
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->readJournalLine(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 273
    :catch_2
    move-exception v5

    .line 277
    :try_start_8
    iget-object v5, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    .line 280
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->hasUnterminatedLine()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->rebuildJournal()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 286
    :goto_5
    if-eqz v4, :cond_4

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 287
    :cond_4
    :goto_6
    if-eqz v3, :cond_5

    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 288
    :cond_5
    :goto_7
    return-void

    .line 283
    :cond_6
    :try_start_b
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v7, Lcom/netflix/falkor/cache/lru/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 286
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 287
    :catchall_3
    move-exception v0

    goto :goto_2

    .line 286
    :cond_7
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->close()V

    goto :goto_6

    :catch_4
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Lcom/netflix/falkor/cache/lru/StrictLineReader;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_1

    .line 287
    :catch_5
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_6
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_3
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 291
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 292
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 293
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 299
    if-nez v0, :cond_1

    .line 300
    new-instance v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    invoke-direct {v0, p0, v1, v3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V

    .line 301
    iget-object v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_1
    const-string/jumbo v2, "CLEAN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 305
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$602(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Z)Z

    .line 306
    invoke-static {v0, v3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    .line 316
    :cond_2
    :goto_0
    return-void

    .line 307
    :cond_3
    const-string/jumbo v2, "DIRTY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 308
    new-instance v1, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    invoke-direct {v1, p0, v0, v3}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V

    invoke-static {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$702(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    goto :goto_0

    .line 309
    :cond_4
    const-string/jumbo v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    const-string/jumbo v0, "REMOVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 314
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 5

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 342
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/netflix/falkor/cache/lru/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    const-string/jumbo v0, "com.netflix.falkor.cache.lru.DiskLruJournal"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 346
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 347
    const-string/jumbo v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 349
    iget v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 350
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 354
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 338
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$900(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 361
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 364
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 368
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 370
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/netflix/falkor/cache/lru/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 372
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1

    .prologue
    .line 381
    if-eqz p2, :cond_0

    .line 382
    invoke-static {p1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->deleteIfExists(Ljava/io/File;)V

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 387
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 4

    .prologue
    .line 580
    :goto_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 566
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 577
    :goto_0
    monitor-exit p0

    return-void

    .line 569
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 570
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 571
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 574
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->trimToSize()V

    .line 575
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->close()V

    .line 593
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/Util;->deleteContents(Ljava/io/File;)V

    .line 594
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    .locals 2

    .prologue
    .line 420
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->edit(Ljava/lang/String;J)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->checkNotClosed()V

    .line 560
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->trimToSize()V

    .line 561
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 395
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->checkNotClosed()V

    .line 397
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 402
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$600(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    iget v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    .line 407
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 408
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 409
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 412
    :cond_2
    new-instance v1, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$1000(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;-><init>(Lcom/netflix/falkor/cache/lru/DiskLruJournal;Ljava/lang/String;JLcom/netflix/falkor/cache/lru/DiskLruJournal$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getEntriesCount()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 548
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 525
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->checkNotClosed()V

    .line 527
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;

    .line 528
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;->access$700(Lcom/netflix/falkor/cache/lru/DiskLruJournal$Entry;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    const/4 v0, 0x0

    .line 543
    :goto_0
    monitor-exit p0

    return v0

    .line 532
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->redundantOpCount:I

    .line 533
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v1, "REMOVE"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 534
    invoke-virtual {p0, p1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->get(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->mOnRemovedListener:Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->mOnRemovedListener:Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;

    invoke-interface {v1, p1, v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;->onRemoved(Ljava/lang/String;Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;)V

    .line 539
    :cond_2
    invoke-direct {p0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 3

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->maxSize:J

    .line 467
    iget-object v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
