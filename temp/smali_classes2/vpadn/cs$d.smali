.class Lvpadn/cs$d;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 295
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->b(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->m(Lvpadn/cs;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->n(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 300
    :cond_2
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->b(Lvpadn/cs;Z)V

    .line 304
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->c(Lvpadn/cs;Z)V

    .line 305
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->d(Lvpadn/cs;Z)V

    .line 308
    :cond_3
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->e(Lvpadn/cs;Z)V

    .line 309
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->o(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lvpadn/cs$d;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvpadn/cs;->f(Lvpadn/cs;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    const-string v1, "VideoManager"

    const-string v2, "HideTopBottomPlayPauseRunnable throw Exception:e"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
