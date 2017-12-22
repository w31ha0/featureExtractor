.class final Lcom/netflix/mediaclient/service/logging/ConnectivityLogger$1;
.super Ljava/lang/Object;
.source "ConnectivityLogger.java"

# interfaces
.implements Lcom/facebook/network/connectionclass/ConnectionClassManager$ConnectionClassStateChangeListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBandwidthStateChange(Lcom/facebook/network/connectionclass/ConnectionQuality;)V
    .locals 6

    .prologue
    .line 27
    const-string/jumbo v0, "ConnectivityLogger"

    const-string/jumbo v1, "onBandwidthStateChange: %s, kbps: %f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/facebook/network/connectionclass/ConnectionClassManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/network/connectionclass/ConnectionClassManager;->getDownloadKBitsPerSecond()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 28
    return-void
.end method
