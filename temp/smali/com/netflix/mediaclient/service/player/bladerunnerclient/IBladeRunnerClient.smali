.class public interface abstract Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient;
.super Ljava/lang/Object;
.source "IBladeRunnerClient.java"


# static fields
.field public static final BLADERUNNER_VERSION:I = 0x2


# virtual methods
.method public abstract activateOfflineLicense(Ljava/lang/String;)V
.end method

.method public abstract deactivateOfflineLicense(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract fetchLicense(Lcom/netflix/mediaclient/service/player/drm/LicenseContext;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract refreshOfflineLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract refreshOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
.end method

.method public abstract syncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;",
            ")V"
        }
    .end annotation
.end method
