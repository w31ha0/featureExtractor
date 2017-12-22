.class Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;
.source "LoLoMoFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity$ServiceManagerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getTitleCount()I

    move-result v0

    .line 200
    if-lez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showViewMyDownloadsButton()V

    .line 204
    :cond_0
    return-void
.end method
