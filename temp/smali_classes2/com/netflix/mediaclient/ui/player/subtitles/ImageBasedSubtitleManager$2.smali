.class Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;
.super Ljava/lang/Object;
.source "ImageBasedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

.field final synthetic val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$show:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    monitor-enter v1

    .line 439
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$show:Z

    if-eqz v0, :cond_0

    .line 440
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> showSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->access$100(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;Ljava/util/List;)V

    .line 446
    :goto_0
    monitor-exit v1

    .line 447
    return-void

    .line 443
    :cond_0
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> removeSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;->access$200(Lcom/netflix/mediaclient/ui/player/subtitles/ImageBasedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/image/ImageSubtitleBlock;)V

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
