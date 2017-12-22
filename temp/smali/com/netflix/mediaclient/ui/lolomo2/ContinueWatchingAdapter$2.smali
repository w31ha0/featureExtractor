.class Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "ContinueWatchingAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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
    .line 126
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onCWVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->updateWithNewVideos(Ljava/util/List;)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter$2;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/ContinueWatchingAdapter;->setLoadingData(Z)V

    .line 133
    return-void

    .line 130
    :cond_0
    const-string/jumbo v0, "ContinueWatchingAdapter"

    const-string/jumbo v1, "Ignoring callback, activity finished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
