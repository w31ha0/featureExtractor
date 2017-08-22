.class public Lvpadn/bw;
.super Ljava/lang/Object;
.source "AutoRePlayCommand.java"

# interfaces
.implements Lvpadn/by;


# instance fields
.field private a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lvpadn/bw;->a:Lvpadn/cs;

    .line 14
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 18
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 24
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    const-string v1, "video_pause"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 28
    iget-object v0, p0, Lvpadn/bw;->a:Lvpadn/cs;

    const-string v1, "video_play"

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
