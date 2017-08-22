.class public Lvpadn/cl;
.super Lvpadn/bv;
.source "PlayPauseVideoActionButton.java"


# direct methods
.method constructor <init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    .line 9
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lvpadn/cl;->c:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    const-string v0, "/vpon_video2_pause.png"

    invoke-virtual {p0, v0}, Lvpadn/cl;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/cl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_0
    return-void

    .line 16
    :cond_0
    const-string v0, "/vpon_video2_play.png"

    invoke-virtual {p0, v0}, Lvpadn/cl;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/cl;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
