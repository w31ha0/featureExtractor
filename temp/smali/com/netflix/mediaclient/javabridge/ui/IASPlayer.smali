.class public interface abstract Lcom/netflix/mediaclient/javabridge/ui/IASPlayer;
.super Ljava/lang/Object;
.source "IASPlayer.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "player"

.field public static final PATH:Ljava/lang/String; = "nrdp.player"


# virtual methods
.method public abstract addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract addManifest(Ljava/lang/String;)V
.end method

.method public abstract close()V
.end method

.method public abstract externalIpAddressChange(Ljava/lang/String;)V
.end method

.method public abstract getBufferRange()V
.end method

.method public abstract getPlayerState()Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
.end method

.method public abstract obtainPlaybackStat()V
.end method

.method public abstract obtainStreamingStat()V
.end method

.method public abstract open(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract pause()V
.end method

.method public abstract play(J)V
.end method

.method public abstract provideLicense(Ljava/lang/String;)V
.end method

.method public abstract removeEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioTrack(Ljava/lang/String;)V
.end method

.method public abstract setStreamingBuffer(ZII)V
.end method

.method public abstract setStreamingConfig(Lorg/json/JSONObject;)V
.end method

.method public abstract setVideoBitrateRanges(II)V
.end method

.method public abstract skip(I)V
.end method

.method public abstract stop()V
.end method

.method public abstract swim(IZIZ)V
.end method

.method public abstract unpause()V
.end method
