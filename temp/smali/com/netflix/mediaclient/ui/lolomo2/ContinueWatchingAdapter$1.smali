.class Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "ContinueWatchingAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getVideos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v1, p1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->addVideos(Ljava/util/List;)V

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyItemRangeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->notifyItemRangeChanged(II)V

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyItemRangeInserted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getNumberOfLoadingMorePlaceHolder()I

    move-result v2

    add-int/2addr v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->notifyItemRangeInserted(II)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getDiffHelper()Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->save()V

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->setFromIndex(I)V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->setLoadingData(Z)V

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->getFromIndex()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 83
    :cond_1
    return-void
.end method
