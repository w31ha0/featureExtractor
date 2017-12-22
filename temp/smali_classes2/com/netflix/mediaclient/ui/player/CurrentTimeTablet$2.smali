.class Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;
.super Ljava/lang/Object;
.source "CurrentTimeTablet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

.field final synthetic val$updateCurrentTimeLabel:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Z)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->val$updateCurrentTimeLabel:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 154
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation was canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getState()Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerWorkflowState;->setTimelineExitOnSnap(Z)V

    .line 156
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 143
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->restorePlaybackIfSnapOnExit()V

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
