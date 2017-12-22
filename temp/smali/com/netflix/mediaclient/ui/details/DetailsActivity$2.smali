.class Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsActivity;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->endDPTTISession(Ljava/util/Map;)V

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setLoadingStatusCallback(Lcom/netflix/mediaclient/android/app/LoadingStatus$LoadingStatusCallback;)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    const-string/jumbo v0, "DetailsActivity"

    const-string/jumbo v1, "DetailsPage is loaded, reporting navigate.ended for movieDetails"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportNavigationActionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 307
    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$2;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->access$000(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 311
    :cond_0
    return-void
.end method
