.class Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;
.super Ljava/lang/Object;
.source "DeactivateOfflineLicenseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;

.field final synthetic val$licenseRelease:Ljava/lang/String;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->val$licenseRelease:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    const-string/jumbo v0, "nf_offlineLicenseMgr"

    const-string/jumbo v1, "DeactivateOfflineLicenseRequest onLicenseDeactivated playableId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    iget-object v4, v4, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->mPlayableId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->val$licenseRelease:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;->access$000(Lcom/netflix/mediaclient/service/offline/license/DeactivateOfflineLicenseRequest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 77
    return-void
.end method
