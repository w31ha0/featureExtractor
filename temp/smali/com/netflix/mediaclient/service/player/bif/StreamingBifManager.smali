.class public Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;
.super Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;
.source "StreamingBifManager.java"


# static fields
.field private static final BIF_FILE_NAME:Ljava/lang/String; = "bif.tmp"

.field private static final CHUNK_SIZE:I = 0x400

.field private static final MDX_BIF_FILE_NAME:Ljava/lang/String; = "mdxbif.tmp"

.field private static final TAG:Ljava/lang/String; = "BifManager"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFile:Ljava/io/RandomAccessFile;

.field private mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

.field private final mSavedFileName:Ljava/lang/String;

.field private final mUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    .line 91
    const-string/jumbo v0, "mdxbif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->loadBif()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;[Lcom/netflix/mediaclient/media/TrickplayUrl;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    .line 53
    const-string/jumbo v0, "bif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    .line 62
    const/4 v2, -0x1

    move v0, v1

    .line 63
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 64
    aget-object v3, p3, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v3

    .line 65
    aget-object v4, p3, v0

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getAspect()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    move v2, v1

    .line 66
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 67
    const-string/jumbo v4, "BifManager"

    const-string/jumbo v5, "preferred url%d == %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aget-object v7, v3, v2

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 68
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    move v2, v1

    .line 75
    :goto_2
    array-length v3, p3

    if-ge v2, v3, :cond_4

    .line 76
    if-eq v0, v2, :cond_3

    .line 77
    aget-object v3, p3, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 78
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 80
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 75
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_4
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v2, "%d TrickplayUrls entities with %d urls"

    new-array v3, v9, [Ljava/lang/Object;

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->loadBif()V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->fetchBif(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 209
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string/jumbo v1, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private fetchBif(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;

    invoke-direct {v0, p0, p2}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;-><init>(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;I)V

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mResourceFetcher:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->bif:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    invoke-virtual {v1, p1, v2, v0}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;->fetchResourceDirectly(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;)V

    .line 180
    return-void
.end method

.method private loadBif()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->fetchBif(Ljava/lang/String;I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "Unable to download Bif, no URLs!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method protected isBifLoaded()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->cleanup()V

    .line 196
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
