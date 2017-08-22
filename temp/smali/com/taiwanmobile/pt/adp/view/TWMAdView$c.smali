.class final Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;
.super Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;
.source "TWMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;


# direct methods
.method private constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-direct {p0}, Lcom/taiwanmobile/pt/adp/view/internal/BaseMediaListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 369
    const-string v0, "TWMAdView"

    const-string v1, "onCompletion invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;)V

    .line 371
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 376
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 336
    const-string v0, "TWMAdView"

    const-string v1, "MediaTask1-onPrepared invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    const-string v1, "video"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;Ljava/lang/String;)V

    .line 338
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mp.currentPosition : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->e(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;

    .line 341
    if-eqz v0, :cond_0

    .line 342
    const-string v1, "isMute"

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager$BaseAdUnit;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 343
    if-eqz v0, :cond_2

    .line 344
    const-string v1, "TWMAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isMute ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 354
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 355
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->bringChildToFront(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->n(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->setVisibility(I)V

    .line 365
    :cond_1
    :goto_1
    return-void

    .line 349
    :cond_2
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-virtual {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$c;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->setVisibility(I)V

    goto :goto_1
.end method
