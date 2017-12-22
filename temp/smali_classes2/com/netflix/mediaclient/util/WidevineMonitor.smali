.class public Lcom/netflix/mediaclient/util/WidevineMonitor;
.super Ljava/lang/Object;
.source "WidevineMonitor.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field static sWidevineInitializationTimeInMs:J

.field static sWidevineInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string/jumbo v0, "WidevineMonitor"

    sput-object v0, Lcom/netflix/mediaclient/util/WidevineMonitor;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static initDone(Z)Z
    .locals 4

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitializationTimeInMs:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitializationTimeInMs:J

    .line 56
    return p0
.end method

.method public static isWidevinePluginBlocked()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 34
    sget-object v1, Lcom/netflix/mediaclient/util/WidevineMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isWidevinePluginBlocked: starts"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v1, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    sget-object v1, Lcom/netflix/mediaclient/util/WidevineMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isWidevinePluginBlocked: not initialized"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    sget-wide v2, Lcom/netflix/mediaclient/util/WidevineMonitor;->sWidevineInitializationTimeInMs:J

    const-wide/32 v4, 0x15f90

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/util/WidevineMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isWidevinePluginBlocked: WIDEVINE.initializationTimeInMs >= INetflixService.SERVICE_INIT_TIMEOUT_MS 90000"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    goto :goto_0
.end method
