.class Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;
.source "DeactivateOfflineLicenseRequest.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SimpleBladeRunnerWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseDeactivated(Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;-><init>(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void
.end method
