.class Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LomoAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 97
    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->addVideos(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->notifyItemRangeChanged(II)V

    .line 103
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 105
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->notifyItemRangeInserted(II)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getDiffHelper()Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->save()V

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->setFromIndex(I)V

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->getFromIndex()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->setLoadingData(Z)V

    .line 118
    return-void

    .line 114
    :cond_2
    const-string/jumbo v0, "LomoAdapter"

    const-string/jumbo v1, "Ignoring callback, activity finished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
