.class Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PostPlayItemView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlayItemView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlayItemView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->stopTimer()V

    .line 49
    :cond_0
    return-void
.end method
