.class public Lvpadn/ca;
.super Lvpadn/bt;
.source "ChangeSoundCommandMultiStatus.java"


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
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lvpadn/bt;-><init>(Lvpadn/cs;Landroid/app/Activity;Lvpadn/cq;Ljava/util/Map;)V

    .line 20
    iput-object p1, p0, Lvpadn/ca;->a:Lvpadn/cs;

    .line 22
    iget-object v0, p0, Lvpadn/ca;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "mute"

    iput-object v0, p0, Lvpadn/ca;->b:Ljava/lang/String;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "unmute"

    iput-object v0, p0, Lvpadn/ca;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lvpadn/ca;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    const v4, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    .line 31
    const-string v0, "ChangeSoundCommandMultiStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/ca;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lvpadn/ca;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lvpadn/ca;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->i()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lvpadn/ca;->a:Lvpadn/cs;

    invoke-virtual {v1}, Lvpadn/cs;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 41
    iget-object v0, p0, Lvpadn/ca;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/cs;->a(Z)V

    .line 42
    const-string v0, "unmute"

    iput-object v0, p0, Lvpadn/ca;->b:Ljava/lang/String;

    .line 48
    :goto_1
    const-string v0, "ChangeSoundCommandMultiStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/ca;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 45
    iget-object v0, p0, Lvpadn/ca;->a:Lvpadn/cs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/cs;->a(Z)V

    .line 46
    const-string v0, "mute"

    iput-object v0, p0, Lvpadn/ca;->b:Ljava/lang/String;

    goto :goto_1
.end method
