.class interface abstract Lcom/netflix/mediaclient/service/player/nrdpplayback/ISessionPlayer;
.super Ljava/lang/Object;
.source "ISessionPlayer.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getVideoDecoderName()Ljava/lang/String;
.end method

.method public abstract isPlayerReadyOrClosed()Z
.end method

.method public abstract obtainPlaybackStat()V
.end method

.method public abstract obtainStreamingStat()V
.end method

.method public abstract open(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/service/player/drm/NfDrmSession;)V
.end method

.method public abstract pause()V
.end method

.method public abstract provideLicense(Ljava/lang/String;)V
.end method

.method public abstract release()V
.end method

.method public abstract seek(JZ)V
.end method

.method public abstract seekWithFuzzRange(II)V
.end method

.method public abstract setAudioDuck(Z)V
.end method

.method public abstract setAudioTrack(Ljava/lang/String;)V
.end method

.method public abstract setStreamingConfig(Lorg/json/JSONObject;)V
.end method

.method public abstract setSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVideoBitrateRanges(II)V
.end method

.method public abstract unpause()V
.end method
