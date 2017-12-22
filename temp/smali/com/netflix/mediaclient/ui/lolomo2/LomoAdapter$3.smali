.class Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "LomoAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2
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
    .line 167
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onVideosFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 168
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->updateWithNewVideos(Ljava/util/List;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter$3;->this$0:Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo2/LomoAdapter;->setLoadingData(Z)V

    .line 176
    return-void

    .line 172
    :cond_1
    const-string/jumbo v0, "LomoAdapter"

    const-string/jumbo v1, "Ignoring callback, activity finished"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
