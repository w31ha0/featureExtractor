.class Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;
.super Ljava/lang/Object;
.source "OfflineLicenseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;

.field final synthetic val$license:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->val$license:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->this$1:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1;->this$0:Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->val$license:Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest$1$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/license/OfflineLicenseRequest;->handleLicenseResponse(Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineLicenseResponse;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 102
    return-void
.end method
