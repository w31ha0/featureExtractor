.class final Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$2;
.super Ljava/lang/Object;
.source "ConnectivityLogger.java"

# interfaces
.implements Lcom/android/volley/NetworkDispatcher$NetworkDispatcherListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/android/volley/Request;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->stopSampling()V

    .line 47
    return-void
.end method

.method public onStarted(Lcom/android/volley/Request;)V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->getInstance()Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/network/connectionclass/DeviceBandwidthSampler;->startSampling()V

    .line 42
    return-void
.end method
