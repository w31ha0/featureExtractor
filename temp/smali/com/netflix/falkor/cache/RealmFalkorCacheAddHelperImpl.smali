.class public Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;
.super Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;
.source "RealmFalkorCacheAddHelperImpl.java"


# static fields
.field private static final mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;-><init>()V

    .line 29
    sput-wide p1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->DEFAULT_LOLOMO_EXPIRY_MS:J

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "falkorCacheThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mThreadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 33
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    .line 37
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$1;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$1;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method

.method static synthetic access$001(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/cache/RealmFalkorCacheHelperImpl;->addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    return-void
.end method


# virtual methods
.method public addToCache(Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/JsonElement;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$6;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;Ljava/util/ArrayList;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$3;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$3;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public cancelTransaction()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$5;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$5;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$2;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$2;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 58
    return-void
.end method

.method public commitTransaction()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$4;

    invoke-direct {v1, p0}, Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl$4;-><init>(Lcom/netflix/falkor/cache/RealmFalkorCacheAddHelperImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method

.method public deleteSubPath(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use RealmFalkorCacheHelperImpl for cache deletes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public expireLolomoListsFromCache()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use RealmFalkorCacheHelperImpl for cache expiration"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retrieveFromCache(Ljava/util/List;ILjava/lang/String;Lcom/netflix/falkor/BranchNode;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/netflix/falkor/BranchNode;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use RealmFalkorCacheHelperImpl for cache retrieval"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
