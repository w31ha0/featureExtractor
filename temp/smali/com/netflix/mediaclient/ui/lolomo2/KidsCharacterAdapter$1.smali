.class Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "KidsCharacterAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;Ljava/lang/String;Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

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
    .line 60
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 61
    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/Video;

    .line 65
    check-cast v0, Lcom/netflix/model/branches/FalkorKidsCharacter;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->addVideos(Ljava/util/List;)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getFromIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->notifyDataSetChanged()V

    .line 73
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getDiffHelper()Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/RowAdapter$DiffHelper;->save()V

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getVideos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->setFromIndex(I)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getFromIndex()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->val$serviceManager:Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->loadData(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    .line 83
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->setLoadingData(Z)V

    .line 84
    return-void

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter$1;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->getFromIndex()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lolomo2/KidsCharacterAdapter;->notifyItemRangeChanged(II)V

    goto :goto_1

    .line 80
    :cond_3
    const-string/jumbo v0, "KidsCharacterAdapter"

    const-string/jumbo v1, "Ignoring callback, activity finished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
