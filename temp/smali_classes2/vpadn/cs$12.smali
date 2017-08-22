.class Lvpadn/cs$12;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;-><init>(Lcom/vpadn/widget/VpadnActivity;Lvpadn/ct;Lvpadn/cr;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->g()V

    .line 463
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, p1}, Lvpadn/cs;->a(Lvpadn/cs;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 464
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    iget-object v1, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    iput v1, v0, Lvpadn/cs;->c:I

    .line 465
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    iget-object v1, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iput v1, v0, Lvpadn/cs;->d:I

    .line 466
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->g(Lvpadn/cs;Z)Z

    .line 467
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->h(Lvpadn/cs;Z)Z

    .line 468
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, v6}, Lvpadn/cs;->i(Lvpadn/cs;Z)Z

    .line 470
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    const-string v1, "video_loaded"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 471
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->r(Lvpadn/cs;)V

    .line 472
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->v(Lvpadn/cs;)V

    .line 474
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, v7}, Lvpadn/cs;->a(Lvpadn/cs;F)V

    .line 476
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-virtual {v0, v6}, Lvpadn/cs;->a(Z)V

    .line 482
    :goto_0
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Ljava/util/Timer;)Ljava/util/Timer;

    .line 487
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->e(Lvpadn/cs;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lvpadn/cs$a;

    iget-object v2, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-direct {v1, v2}, Lvpadn/cs$a;-><init>(Lvpadn/cs;)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_1
    :try_start_1
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    new-instance v1, Lvpadn/cs$12$1;

    invoke-direct {v1, p0}, Lvpadn/cs$12$1;-><init>(Lvpadn/cs$12;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :goto_2
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->x(Lvpadn/cs;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-static {v0, v7}, Lvpadn/cs;->a(Lvpadn/cs;F)V

    .line 519
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-virtual {v0, v6}, Lvpadn/cs;->a(Z)V

    .line 521
    :cond_1
    return-void

    .line 478
    :cond_2
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;F)V

    .line 479
    iget-object v0, p0, Lvpadn/cs$12;->a:Lvpadn/cs;

    invoke-virtual {v0, v3}, Lvpadn/cs;->a(Z)V

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v1, "VideoManager"

    const-string v2, "mCheckHasPlayedTimer.schedule throw Exception:"

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 512
    :catch_1
    move-exception v0

    goto :goto_2
.end method
