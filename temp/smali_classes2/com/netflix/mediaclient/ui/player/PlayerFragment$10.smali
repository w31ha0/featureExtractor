.class Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 0

    .prologue
    .line 2188
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 2193
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    if-eqz v0, :cond_1

    .line 2194
    :cond_0
    const-string/jumbo v0, "PlayerFragment"

    const-string/jumbo v1, "METADATA exit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :goto_0
    return-void

    .line 2198
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    monitor-enter v1

    .line 2199
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    .line 2205
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingInProgress:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->draggingAudioInProgress:Z

    if-nez v2, :cond_5

    .line 2206
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 2207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 2208
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v2, v3, :cond_2

    .line 2210
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v2, v3, :cond_2

    .line 2211
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "Time to remove panel"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->clearPanel()V

    .line 2217
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8242;->shouldShowSkipCreditsButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2218
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 2219
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$100(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->getLastActionTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1770

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    .line 2220
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->PostPlay:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$900(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getState()Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/ui/player/PlayerUiState;->SkipCredits:Lcom/netflix/mediaclient/ui/player/PlayerUiState;

    if-ne v2, v3, :cond_4

    .line 2222
    const-string/jumbo v2, "PlayerFragment"

    const-string/jumbo v3, "Time to remove panel when in SkipCredits"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2225
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getSkipCreditsButton()Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->hide(Z)V

    .line 2228
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->clearPanel()V

    .line 2232
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1400(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1500(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 2235
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerFragment$10;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    const/16 v2, 0x3e8

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->access$1600(Lcom/netflix/mediaclient/ui/player/PlayerFragment;I)V

    .line 2236
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
