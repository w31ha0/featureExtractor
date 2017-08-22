.class Lvpadn/cs$15$1;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs$15;


# direct methods
.method constructor <init>(Lvpadn/cs$15;)V
    .locals 0

    .prologue
    .line 2485
    iput-object p1, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2489
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    iget-object v0, v0, Lvpadn/cs$15;->b:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 2490
    iget-object v1, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    iget-object v1, v1, Lvpadn/cs$15;->b:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    iget-object v2, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    iget-boolean v2, v2, Lvpadn/cs$15;->a:Z

    if-eq v1, v2, :cond_0

    .line 2491
    if-eqz v0, :cond_1

    .line 2492
    iget-object v0, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    iget-object v0, v0, Lvpadn/cs$15;->b:Lvpadn/cs;

    const-string v1, "video_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2499
    :cond_0
    :goto_0
    return-void

    .line 2494
    :cond_1
    iget-object v0, p0, Lvpadn/cs$15$1;->a:Lvpadn/cs$15;

    iget-object v0, v0, Lvpadn/cs$15;->b:Lvpadn/cs;

    const-string v1, "video_pause"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2497
    :catch_0
    move-exception v0

    goto :goto_0
.end method
