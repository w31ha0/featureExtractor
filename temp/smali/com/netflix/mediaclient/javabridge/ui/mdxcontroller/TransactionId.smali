.class public final Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;
.super Ljava/lang/Object;
.source "TransactionId.java"


# static fields
.field private static mCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field private static mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static nextTransactionId()J
    .locals 6

    .prologue
    .line 28
    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v2

    .line 29
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->now()J

    move-result-wide v0

    .line 30
    sget-object v3, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-gtz v3, :cond_0

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 35
    :goto_0
    monitor-exit v2

    .line 36
    return-wide v0

    .line 33
    :cond_0
    sget-object v3, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->now()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static setTransactionIdSource(Lcom/netflix/mediaclient/javabridge/ui/Nrdp;)V
    .locals 4

    .prologue
    .line 58
    sput-object p0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mNrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 59
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->mCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/mdxcontroller/TransactionId;->now()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 60
    return-void
.end method
