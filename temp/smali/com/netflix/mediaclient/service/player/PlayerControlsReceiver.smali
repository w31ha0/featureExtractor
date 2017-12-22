.class public Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PlayerControlsReceiver.java"


# static fields
.field public static final EXTRA_SEEK_TO:Ljava/lang/String; = "seekto"

.field public static final PAUSE_PLAY_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PAUSE"

.field public static final SEEK_TO_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.SEEKTO"

.field public static final SKIP_BACK_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.SKIPBACK"

.field private static final SKIP_DELTA_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "PlayerControlsReceiver"

.field public static final UNPAUSE_PLAY_INTENT:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.UNPAUSE"


# instance fields
.field mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IPlayer;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    .line 39
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string/jumbo v0, "PlayerControlsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received an action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.UNPAUSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->unpause()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PAUSE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->pause()V

    goto :goto_0

    .line 53
    :cond_2
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.SEEKTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v1, "seekto"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekTo(JZ)V

    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.SKIPBACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->getCurrentPositionInMs()J

    move-result-wide v2

    long-to-int v0, v2

    add-int/lit16 v0, v0, -0x7530

    .line 61
    if-gez v0, :cond_4

    .line 62
    const-string/jumbo v0, "PlayerControlsReceiver"

    const-string/jumbo v2, "Go back to start, instead of trying to go minus!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 65
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerControlsReceiver;->mPlayController:Lcom/netflix/mediaclient/servicemgr/IPlayer;

    int-to-long v4, v0

    invoke-interface {v2, v4, v5, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->seekTo(JZ)V

    goto :goto_0
.end method
