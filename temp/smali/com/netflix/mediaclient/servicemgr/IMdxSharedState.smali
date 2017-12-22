.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IMdxSharedState;
.super Ljava/lang/Object;
.source "IMdxSharedState.java"


# virtual methods
.method public abstract getMdxPlaybackState()Lcom/netflix/mediaclient/servicemgr/IMdxSharedState$MdxPlaybackState;
.end method

.method public abstract getPlaybackPositionInMs()J
.end method

.method public abstract getPostplayState()Ljava/lang/String;
.end method

.method public abstract getRecentVolume()I
.end method

.method public abstract hasActivePlayback()Z
.end method

.method public abstract isVolumeEnabled()Z
.end method
