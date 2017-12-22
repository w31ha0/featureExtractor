.class public Lcom/netflix/mediaclient/service/logging/LogBlogLoggingNoOpImpl;
.super Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;
.source "LogBlogLoggingNoOpImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/AbstractLogBlogLogging;-><init>()V

    return-void
.end method


# virtual methods
.method checkState()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method destroy()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method handleConnectivityChange()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method init(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public sendLogblob(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method startDelivery()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
