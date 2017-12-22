.class public Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;
.super Ljava/lang/Object;
.source "ClientStatsLogHandlerImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ClientStatsLogHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "nf_clientstats"

.field private static final MULTIHISTOGRAM_LOGTYPE:Ljava/lang/String; = "multihistogram"

.field private static final RECURRENCE_INTERVAL_MILLIS:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetworkType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->RECURRENCE_INTERVAL_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mCurrentNetworkType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mCurrentNetworkType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    return-object v0
.end method


# virtual methods
.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mCurrentNetworkType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 60
    return-void
.end method

.method public init(Ljava/util/concurrent/ScheduledExecutorService;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 7

    .prologue
    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    new-instance v1, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;

    invoke-direct {v1, p0, p2}, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl$1;-><init>(Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V

    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    sget v2, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->RECURRENCE_INTERVAL_MILLIS:I

    int-to-long v2, v2

    sget v4, Lcom/netflix/mediaclient/service/logging/ClientStatsLogHandlerImpl;->RECURRENCE_INTERVAL_MILLIS:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 55
    return-void
.end method
