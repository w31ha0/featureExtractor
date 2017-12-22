.class Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;
.super Ljava/lang/Object;
.source "CurrentTimeTablet.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

.field final synthetic val$bb:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;->val$bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStartAnimation cancel"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStartAnimation end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "Bifs are downloaded, setup currentTimeExp layout params"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;->this$0:Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;->val$bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->startBif(Ljava/nio/ByteBuffer;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "Bifs are not downloaded, do not setup currentTimeExp layout params"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
