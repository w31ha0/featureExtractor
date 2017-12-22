.class public abstract Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;
.super Ljava/lang/Object;
.source "PlayScreenDecorator.java"


# instance fields
.field private decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

.field protected final playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;


# direct methods
.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreen;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 30
    return-void
.end method

.method protected constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    .line 26
    return-void
.end method


# virtual methods
.method public getController()Lcom/netflix/mediaclient/ui/player/PlayerFragment;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->getPlayerFragment()Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getPlayScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method public onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onAssetUpdated(Lcom/netflix/mediaclient/servicemgr/Asset;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onDestroy()V

    .line 110
    :cond_0
    return-void
.end method

.method public onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onLanguageUpdated(Lcom/netflix/mediaclient/media/Language;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onPause()V

    .line 128
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onResume()V

    .line 134
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStart()V

    .line 116
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onStop()V

    .line 122
    :cond_0
    return-void
.end method

.method public onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->onVideoDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 56
    :cond_0
    return-void
.end method

.method public playExtraHandlerAnimation(ILjava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playExtraHandlerAnimation(ILjava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method

.method public playerOverlayVisibility(Z)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->playerOverlayVisibility(Z)V

    .line 44
    :cond_0
    return-void
.end method

.method public setDraggingState(Z)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setDraggingState(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public setSeekbarEnabled(Z)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setSeekbarEnabled(Z)V

    .line 104
    :cond_0
    return-void
.end method

.method public setTimelineMaxProgress(I)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineMaxProgress(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public setTimelineProgress(IZ)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->setTimelineProgress(IZ)V

    .line 86
    :cond_0
    return-void
.end method

.method public updatePlaybackStatus(Z)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->decorator:Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/player/PlayScreenDecorator;->updatePlaybackStatus(Z)V

    .line 98
    :cond_0
    return-void
.end method
