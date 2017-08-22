.class public Lvpadn/ck;
.super Lvpadn/bt;
.source "PlayPauseCommandMultiStatus.java"


# instance fields
.field private a:Lvpadn/cs;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvpadn/cs;",
            "Landroid/app/Activity;",
            "Lvpadn/cq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lvpadn/bt;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V

    .line 19
    iput-object p1, p0, Lvpadn/ck;->a:Lvpadn/cs;

    .line 21
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "resume"

    iput-object v0, p0, Lvpadn/ck;->b:Ljava/lang/String;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v0, "pause"

    iput-object v0, p0, Lvpadn/ck;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lvpadn/ck;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 36
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    const-string v1, "video_pause"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 37
    const-string v0, "pause"

    iput-object v0, p0, Lvpadn/ck;->b:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 41
    iget-object v0, p0, Lvpadn/ck;->a:Lvpadn/cs;

    const-string v1, "video_play"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 42
    const-string v0, "resume"

    iput-object v0, p0, Lvpadn/ck;->b:Ljava/lang/String;

    goto :goto_0
.end method
