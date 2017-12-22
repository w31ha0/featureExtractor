.class Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;
.super Ljava/lang/Object;
.source "EnhancedSubtitleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

.field final synthetic val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;ZLcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$show:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->mPendingActions:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    monitor-enter v1

    .line 453
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$show:Z

    if-eqz v0, :cond_0

    .line 454
    const-string/jumbo v0, "nf_subtitles_render"

    const-string/jumbo v2, "===> showSubtitleBlock was called from pending queue!!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->access$000(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;Ljava/util/List;)V

    .line 459
    :goto_0
    monitor-exit v1

    .line 460
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->this$0:Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager$2;->val$block:Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;->access$100(Lcom/netflix/mediaclient/ui/player/subtitles/EnhancedSubtitleManager;Lcom/netflix/mediaclient/service/player/subtitles/text/TextSubtitleBlock;)V

    goto :goto_0

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
