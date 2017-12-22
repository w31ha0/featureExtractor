.class public Lcom/netflix/mediaclient/service/logging/PdsLoggingNoOpImpl;
.super Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;
.source "PdsLoggingNoOpImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;-><init>()V

    return-void
.end method


# virtual methods
.method public checkState()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public flushEventsInLogging()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public handleConnectivityChange()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public sendPdsEventViaLogging(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public startDelivery()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
