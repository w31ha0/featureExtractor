.class public abstract Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.super Ljava/lang/Object;
.source "SimpleBladeRunnerWebCallback.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public onPdsEventSent(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;JLorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public onPdsSessionStart(Lcom/netflix/mediaclient/android/app/Status;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onSyncLicenseDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/ClientActionFromLase;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method
