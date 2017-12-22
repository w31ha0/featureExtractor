.class public interface abstract Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;
.super Ljava/lang/Object;
.source "BladeRunnerWebCallback.java"


# virtual methods
.method public abstract onDownloadComplete(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
.end method

.method public abstract onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
.end method

.method public abstract onLicenseFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLinkDone(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onManifestsFetched(Lorg/json/JSONObject;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onPdsEventSent(Lcom/netflix/mediaclient/android/app/Status;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$PdsEventType;JLorg/json/JSONObject;)V
.end method

.method public abstract onPdsSessionStart(Lcom/netflix/mediaclient/android/app/Status;JLjava/lang/String;)V
.end method

.method public abstract onSyncLicenseDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
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
.end method
