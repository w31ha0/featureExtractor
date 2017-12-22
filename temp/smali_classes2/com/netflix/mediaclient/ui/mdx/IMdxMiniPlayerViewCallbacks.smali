.class public interface abstract Lcom/netflix/mediaclient/ui/mdx/IMdxMiniPlayerViewCallbacks;
.super Ljava/lang/Object;
.source "IMdxMiniPlayerViewCallbacks.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/SnappableSeekBar$OnSnappableSeekBarChangeListener;


# virtual methods
.method public abstract getCurrentVideo()Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;
.end method

.method public abstract getManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
.end method

.method public abstract getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;
.end method

.method public abstract isEpisodeReady()Z
.end method

.method public abstract isLanguageReady()Z
.end method

.method public abstract isPanelExpanded()Z
.end method

.method public abstract isPlayingRemotely()Z
.end method

.method public abstract isRemotePlayerReady()Z
.end method

.method public abstract notifyControlsEnabled(Z)V
.end method

.method public abstract onPauseClicked()V
.end method

.method public abstract onResumeClicked()V
.end method

.method public abstract onShowLanguageSelectorDialog()V
.end method

.method public abstract onSkipBackClicked()V
.end method

.method public abstract onStopClicked()V
.end method
