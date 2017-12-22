.class Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;
.source "ContinueWatchingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter",
        "<",
        "Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContinueWatchingAdapter"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewAdapter;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method getNumberOfLoadingMorePlaceHolder()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected getRefreshFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_CW_REFRESH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method protected getUpdateVideosCallback(Landroid/content/Context;)Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;

    const-string/jumbo v1, "ContinueWatchingAdapter"

    invoke-direct {v0, p0, v1, p1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;Ljava/lang/String;Landroid/content/Context;)V

    return-object v0
.end method

.method protected loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->isLoadingData()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->setLoadingData(Z)V

    .line 53
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getFromIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getFromIndex()I

    move-result v2

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->computeEndIndex(Landroid/content/Context;I)I

    move-result v2

    new-instance v3, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;

    const-string/jumbo v4, "ContinueWatchingAdapter"

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 87
    :cond_0
    return-void
.end method

.method protected bridge synthetic onBindLoadingMore(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;IZ)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;IZ)V

    return-void
.end method

.method protected onBindLoadingMore(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;IZ)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->loading(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;IZ)V

    .line 110
    return-void
.end method

.method protected bridge synthetic onBindVideo(Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;IZ)V

    return-void
.end method

.method protected onBindVideo(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;IZ)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getLomoContext()Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;->bind(Lcom/netflix/mediaclient/ui/lolomo2/LomoContext;Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;IZ)V

    .line 105
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->createCWViewForTest(Landroid/content/Context;)Lcom/netflix/mediaclient/ui/lomo/CwView;

    move-result-object v0

    .line 155
    const v1, 0x7f10000a

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwView;->setId(I)V

    .line 156
    new-instance v1, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getConfig()Lcom/netflix/android/widgetry/lolomo/RowConfig;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$ContinueWatchingViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/netflix/mediaclient/ui/lomo/CwView;Lcom/netflix/android/widgetry/lolomo/RowConfig;)V

    return-object v1
.end method

.method protected onRefresh(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Landroid/content/Intent;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "ContinueWatchingAdapter"

    const-string/jumbo v1, "Refreshed continue watching queue..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-interface {v0, p4, p5, p6}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchCWVideos(IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 142
    return-void
.end method

.method protected bridge synthetic toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/BasicVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toContentString(Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    check-cast p1, Lcom/netflix/model/branches/FalkorVideo;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getPlayableBookmarkPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/branches/FalkorVideo;->getInterestingUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
