.class Lcom/netflix/mediaclient/ui/lolomo2/InstantQueueLomoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;
.source "InstantQueueLomoAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstantQueueLomoAdapter"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getRefreshFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_IQ_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 36
    return-object v0
.end method

.method protected onRefresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "InstantQueueLomoAdapter"

    const-string/jumbo v1, "Refreshed instant queue..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->shouldLoadKubrickLeavesInLolomo()Z

    move-result v1

    invoke-interface {v0, p4, p5, v1, p6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchIQVideos(IIZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 43
    return-void
.end method

.method public shouldHideRowIfEmpty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method
