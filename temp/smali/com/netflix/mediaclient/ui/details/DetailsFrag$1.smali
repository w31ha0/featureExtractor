.class Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "DetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/DetailsFrag;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    .line 130
    if-lez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/DetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/details/DetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showViewMyDownloadsButton()V

    .line 134
    :cond_0
    return-void
.end method
