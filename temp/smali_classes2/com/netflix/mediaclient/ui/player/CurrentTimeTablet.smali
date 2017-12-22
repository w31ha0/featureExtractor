.class public Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;
.super Lcom/netflix/mediaclient/ui/player/CurrentTime;
.source "CurrentTimeTablet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentTimeTablet"


# instance fields
.field private final bottomMarginInPx:I

.field private endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

.field private startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTime;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 40
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->dipToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    .line 42
    return-void
.end method

.method private startStartAnimation(Ljava/nio/ByteBuffer;)V
    .locals 5

    .prologue
    .line 69
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStartAnimation()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$1;-><init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Ljava/nio/ByteBuffer;)V

    .line 98
    new-instance v1, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    neg-int v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showBif(Ljava/nio/ByteBuffer;)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->start()V

    .line 104
    return-void
.end method

.method private startStopAnimation(Z)V
    .locals 5

    .prologue
    .line 133
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "startStopAnimation()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet$2;-><init>(Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;Z)V

    .line 163
    new-instance v1, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    iget v3, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->bottomMarginInPx:I

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    .line 164
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->endAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->start()V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    .line 169
    return-void
.end method


# virtual methods
.method public start(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->mBifDownloaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_2

    .line 66
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->updateCurrentTime()V

    .line 64
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startStartAnimation(Ljava/nio/ByteBuffer;)V

    .line 65
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "start end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stop(Z)V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "Start animation is not completed yet - cancelling it"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startAnimation:Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/CurrentTimeAnimation;->cancel()V

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->stopBif()V

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 129
    :goto_1
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "stop end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_2
    if-eqz p1, :cond_3

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->updateCurrentTime()V

    .line 127
    :cond_3
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->startStopAnimation(Z)V

    goto :goto_1
.end method

.method public updateTimeMargins()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    const-string/jumbo v0, "CurrentTimeTablet"

    const-string/jumbo v1, "doUpdateTimeMargins"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getTimeXAndUpdateHandler(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 180
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/CurrentTimeTablet;->currentTime:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
