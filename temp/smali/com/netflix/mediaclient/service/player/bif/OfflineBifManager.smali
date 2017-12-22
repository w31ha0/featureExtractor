.class public Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;
.super Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;
.source "OfflineBifManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineBifManager"


# instance fields
.field private mBifLoadingThread:Ljava/lang/Thread;

.field private mFile:Ljava/io/RandomAccessFile;

.field private mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager$1;-><init>(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;Ljava/lang/String;)V

    const-string/jumbo v2, "OfflineBifManagerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method protected isBifLoaded()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/OfflineBifManager;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_0
    :goto_1
    const-string/jumbo v0, "OfflineBifManager"

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v1, "OfflineBifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    const-string/jumbo v1, "OfflineBifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
