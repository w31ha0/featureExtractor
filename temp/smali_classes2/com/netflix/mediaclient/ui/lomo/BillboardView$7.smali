.class Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;
.super Ljava/lang/Object;
.source "BillboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

.field final synthetic val$hasWindowFocus:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Z)V
    .locals 0

    .prologue
    .line 973
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->val$hasWindowFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 977
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "null mediaPlayerWrapper - bailing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->val$hasWindowFocus:Z

    if-eqz v0, :cond_4

    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Received focus but media playback complete - skipping resume"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$000(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    goto :goto_0

    .line 987
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->resumePlayback()Z

    move-result v0

    .line 988
    if-nez v0, :cond_3

    .line 989
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Playback not ready yet, but showing motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$200(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    .line 992
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 993
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Playback ready, updating myList state"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    goto :goto_0

    .line 998
    :cond_4
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Losing window focus - pausing playback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;->this$0:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->pausePlayback()V

    goto :goto_0
.end method
