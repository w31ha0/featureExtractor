.class Lcom/netflix/falkor/cache/FalkorCache$LruBackup;
.super Ljava/lang/Object;
.source "FalkorCache.java"


# static fields
.field private static final LOCK:[Ljava/lang/Object;

.field private static final MAX_CACHED_ENTRIES:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "FalkorCache.LruBackup"

.field private static volatile sKeysToDelete:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLruJournal:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

.field private static sLruLooper:Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->LOCK:[Ljava/lang/Object;

    .line 254
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruLooper:Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    .line 259
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sKeysToDelete:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->LOCK:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sKeysToDelete:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .prologue
    .line 235
    sput-object p0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sKeysToDelete:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600()Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruLooper:Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    return-object v0
.end method

.method private static getCache()Lcom/netflix/falkor/cache/lru/DiskLruJournal;
    .locals 2

    .prologue
    .line 363
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruJournal:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruJournal:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Falkor cache accessed without calling FalkorCache.init(context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getKey(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 393
    instance-of v0, p0, Lcom/netflix/falkor/cache/FalkorRealmCacheLruBased;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorCache.LruBackup.push("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") -> not managed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    .line 396
    :cond_0
    invoke-interface {p0}, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 340
    new-instance v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;-><init>(Lcom/netflix/falkor/cache/FalkorCache$1;)V

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruLooper:Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    .line 341
    sget-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruLooper:Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;

    invoke-virtual {v0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$LruLooper;->start()V

    .line 342
    new-instance v0, Ljava/io/File;

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "falkor.realm.lru_backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache;->access$500()I

    move-result v1

    const-wide/32 v2, 0x186a0

    new-instance v4, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$1;

    invoke-direct {v4}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup$1;-><init>()V

    .line 342
    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->open(Ljava/io/File;IJLcom/netflix/falkor/cache/lru/DiskLruJournal$OnRemovedListener;)Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->sLruJournal:Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    .line 359
    return-void
.end method

.method static markAccessed(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)V
    .locals 3

    .prologue
    .line 401
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->getCache()Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    move-result-object v0

    .line 402
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->getKey(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->get(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;

    move-result-object v0

    .line 403
    if-nez v0, :cond_0

    .line 404
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->push(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FalkorCache.LruBackup.markAccessed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static push(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)V
    .locals 3

    .prologue
    .line 372
    :try_start_0
    invoke-static {}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->getCache()Lcom/netflix/falkor/cache/lru/DiskLruJournal;

    move-result-object v0

    .line 373
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->getKey(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {p0}, Lcom/netflix/falkor/cache/FalkorCache$LruBackup;->getKey(Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->get(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;

    move-result-object v2

    .line 375
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Snapshot;->edit()Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    .line 376
    :goto_0
    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {v0}, Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;->commit()V

    .line 384
    :goto_1
    return-void

    .line 375
    :cond_0
    invoke-virtual {v0, v1}, Lcom/netflix/falkor/cache/lru/DiskLruJournal;->edit(Ljava/lang/String;)Lcom/netflix/falkor/cache/lru/DiskLruJournal$Editor;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorCache.LruBackup.push("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") -> cannot get an editor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FalkorCache.LruBackup.push("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/falkor/cache/FalkorCache$FalkorEvictable;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->reportErrorSafely(Ljava/lang/String;)V

    goto :goto_1
.end method
