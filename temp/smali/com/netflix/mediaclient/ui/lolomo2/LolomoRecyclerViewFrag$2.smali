.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$2;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "LolomoRecyclerViewFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    .line 228
    if-lez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag;->mLoadingAndErrorWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showViewMyDownloadsButton()V

    .line 233
    :cond_0
    return-void
.end method
