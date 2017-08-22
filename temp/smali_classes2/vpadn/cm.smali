.class public Lvpadn/cm;
.super Lvpadn/bu;
.source "RePlayCommandOneStatus.java"


# instance fields
.field private a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Landroid/app/Activity;",
            "Lvpadn/cq;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lvpadn/bu;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/List;)V

    .line 20
    iput-object p1, p0, Lvpadn/cm;->a:Lvpadn/cs;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 31
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    const-string v1, "video_pause"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 35
    iget-object v0, p0, Lvpadn/cm;->a:Lvpadn/cs;

    const-string v1, "video_play"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
