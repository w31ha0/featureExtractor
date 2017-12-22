.class public final Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;
.super Ljava/lang/Object;
.source "CronetHttpURLConnectionFactory.java"


# static fields
.field private static final CRONET_CACHE_DIR:Ljava/lang/String; = "cronet"

.field private static final TAG:Ljava/lang/String; = "nf_net_cronet"

.field private static sInstance:Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;


# instance fields
.field private mCronetEngine:Lorg/chromium/net/CronetEngine;

.field private mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->createAndConfigureBuilder(Landroid/content/Context;)Lorg/chromium/net/CronetEngine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine$Builder;->build()Lorg/chromium/net/CronetEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    .line 29
    return-void
.end method

.method private createAndConfigureBuilder(Landroid/content/Context;)Lorg/chromium/net/CronetEngine$Builder;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 33
    new-instance v0, Lorg/chromium/net/CronetEngine$Builder;

    invoke-direct {v0, p1}, Lorg/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    const-wide/32 v2, 0x19000

    invoke-virtual {v0, v7, v2, v3}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 36
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "cronet"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "nf_net_cronet"

    const-string/jumbo v3, "Set cache to %s, it exists %b, absolute path %s"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 42
    const-string/jumbo v3, "nf_net_cronet"

    const-string/jumbo v4, "Cache created %b"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Lorg/chromium/net/CronetEngine$Builder;

    .line 46
    const-wide/32 v2, 0x100000

    invoke-virtual {v0, v9, v2, v3}, Lorg/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Lorg/chromium/net/CronetEngine$Builder;

    .line 48
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->sInstance:Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->sInstance:Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->sInstance:Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->sInstance:Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public isNetLogInProgress()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method openConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {v0, p1}, Lorg/chromium/net/CronetEngine;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public declared-synchronized startNetLog()V
    .locals 3

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    monitor-exit p0

    return-void

    .line 91
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "cronet"

    const-string/jumbo v2, ".log"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/net/CronetEngine;->startNetLogToFile(Ljava/lang/String;Z)V

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopNetLog()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string/jumbo v0, "nf_net_cronet"

    const-string/jumbo v1, "Stopping cronet logging"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {v0}, Lorg/chromium/net/CronetEngine;->stopNetLog()V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/util/net/CronetHttpURLConnectionFactory;->mNetLogInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
