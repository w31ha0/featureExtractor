.class Lcom/adbert/AdbertADView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 753
    iput-object p1, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCompletion()V
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    instance-of v0, v0, Lcom/adbert/a/c/b;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->n(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertListener;

    move-result-object v0

    check-cast v0, Lcom/adbert/a/c/b;

    invoke-virtual {v0}, Lcom/adbert/a/c/b;->a()V

    .line 763
    :cond_0
    return-void
.end method

.method public OnError()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 769
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->o(Lcom/adbert/AdbertADView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v2}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 773
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->c()V

    .line 778
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->p(Lcom/adbert/AdbertADView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->p(Lcom/adbert/AdbertADView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->seekTo(I)V

    .line 780
    new-instance v0, Lcom/adbert/AdbertADView$9$1;

    invoke-direct {v0, p0}, Lcom/adbert/AdbertADView$9$1;-><init>(Lcom/adbert/AdbertADView$9;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->start()V

    goto :goto_0
.end method

.method public onSeekChange()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adbert/b/g;->setVisibility(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    iget-object v0, v0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    iget-object v0, v0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    .line 799
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/adbert/AdbertADView$9;->a:Lcom/adbert/AdbertADView;

    iget-object v0, v0, Lcom/adbert/AdbertADView;->f:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 803
    :cond_1
    return-void
.end method
