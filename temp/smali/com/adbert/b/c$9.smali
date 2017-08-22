.class Lcom/adbert/b/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/c;


# direct methods
.method constructor <init>(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCompletion()V
    .locals 3

    .prologue
    const/16 v1, 0x64

    .line 464
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->f(Lcom/adbert/b/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 465
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->f(Lcom/adbert/b/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 466
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->g(Lcom/adbert/b/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adbert/b/g;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adbert/b/c;->b(Lcom/adbert/b/c;I)I

    .line 468
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->closeAdView()V

    .line 469
    return-void
.end method

.method public OnError()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->finish()V

    .line 474
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->d(Lcom/adbert/b/c;)V

    .line 479
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->i(Lcom/adbert/b/c;)I

    move-result v0

    if-lez v0, :cond_0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->i(Lcom/adbert/b/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    :goto_0
    new-instance v0, Lcom/adbert/b/c$9$1;

    invoke-direct {v0, p0}, Lcom/adbert/b/c$9$1;-><init>(Lcom/adbert/b/c$9;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 495
    :goto_1
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->start()V

    goto :goto_1
.end method

.method public onSeekChange()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->j(Lcom/adbert/b/c;)V

    .line 501
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->f(Lcom/adbert/b/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adbert/b/g;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 502
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->f(Lcom/adbert/b/c;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 503
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/adbert/b/c;->b(Lcom/adbert/b/c;I)I

    .line 505
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->c(Lcom/adbert/b/c;)Lcom/adbert/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->c(Lcom/adbert/b/c;)Lcom/adbert/a/a/a;

    move-result-object v1

    iget v1, v1, Lcom/adbert/a/a/a;->c:I

    if-lt v0, v1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->callReturnEvent()V

    .line 509
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v0}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->h(Lcom/adbert/b/c;)Lcom/adbert/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 510
    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 511
    iget-object v1, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v1}, Lcom/adbert/b/c;->g(Lcom/adbert/b/c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/b/c$9;->a:Lcom/adbert/b/c;

    invoke-static {v2, v0}, Lcom/adbert/b/c;->a(Lcom/adbert/b/c;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_1
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    invoke-static {v0}, Lcom/adbert/a/i;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
