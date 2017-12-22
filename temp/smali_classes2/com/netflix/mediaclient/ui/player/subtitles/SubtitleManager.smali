.class public interface abstract Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;
.super Ljava/lang/Object;
.source "SubtitleManager.java"


# virtual methods
.method public abstract canHandleSubtitleProfile(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)Z
.end method

.method public abstract clear()V
.end method

.method public abstract clearPendingUpdates()V
.end method

.method public abstract getContext()Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.end method

.method public abstract getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.end method

.method public abstract onPlayerOverlayVisibiltyChange(Z)V
.end method

.method public abstract onSubtitleChange(Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;)V
.end method

.method public abstract onSubtitleRemove()V
.end method

.method public abstract setSubtitleVisibility(Z)V
.end method
