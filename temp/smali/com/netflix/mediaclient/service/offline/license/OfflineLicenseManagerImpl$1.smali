.class Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "OfflineLicenseManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncLicenseDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4
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
    .line 278
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "onSyncLicenseDone res=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManagerImpl$1;->val$callback:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseManager$LicenseSyncResponseCallback;->onLicenseSyncDone(Ljava/util/Map;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 280
    return-void
.end method
