.class public interface abstract Lcom/netflix/mediaclient/service/player/IPlaybackSession;
.super Ljava/lang/Object;
.source "IPlaybackSession.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getBifFrame(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract getCurrentAudioTrack()Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getCurrentPlayableId()J
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
.end method

.method public abstract getPlayoutMetadata()Lcom/netflix/mediaclient/media/PlayoutMetadata;
.end method

.method public abstract getSessionId()Ljava/lang/String;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getWatermark()Lcom/netflix/mediaclient/media/Watermark;
.end method

.method public abstract handleConnectivityChanged()V
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract seekTo(JZ)V
.end method

.method public abstract seekWithFuzzRange(II)V
.end method

.method public abstract selectTracks(Lcom/netflix/mediaclient/media/AudioSource;Lcom/netflix/mediaclient/media/Subtitle;Z)Z
.end method

.method public abstract setAudioDuck(Z)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method
