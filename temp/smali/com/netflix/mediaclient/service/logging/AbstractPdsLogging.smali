.class abstract Lcom/netflix/mediaclient/service/logging/AbstractPdsLogging;
.super Ljava/lang/Object;
.source "AbstractPdsLogging.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/IPdsLogging;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract checkState()V
.end method

.method abstract handleConnectivityChange()V
.end method

.method abstract init(Ljava/util/concurrent/ScheduledExecutorService;)V
.end method

.method abstract startDelivery()V
.end method
