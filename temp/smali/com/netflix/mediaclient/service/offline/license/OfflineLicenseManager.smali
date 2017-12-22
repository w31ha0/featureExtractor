.class public interface abstract Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager;
.super Ljava/lang/Object;
.source "OfflineLicenseManager.java"


# virtual methods
.method public abstract abortAllRequestsForPlayable(Ljava/lang/String;)V
.end method

.method public abstract deleteLicense(Ljava/lang/String;[BZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract refreshLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
.end method

.method public abstract requestNewLicense(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerCallback;)V
.end method

.method public abstract sendSyncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;",
            ")V"
        }
    .end annotation
.end method
