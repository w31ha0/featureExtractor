.class Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "RefreshOfflineLicenseRequest.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onOfflineLicenseFetched(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 63
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RefreshOfflineLicenseRequest onLicenseFetched playableId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/RefreshOfflineLicenseRequest$1;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
