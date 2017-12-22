.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IVoip;
.super Ljava/lang/Object;
.source "IVoip.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "com.netflix.mediaclient.intent.category.VOIP"


# virtual methods
.method public abstract addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V
.end method

.method public abstract destroy()V
.end method

.method public abstract dial()Z
.end method

.method public abstract getCallStartTimeInMs()J
.end method

.method public abstract getConnectivityState()Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
.end method

.method public abstract getCurrentCall()Lcom/netflix/mediaclient/servicemgr/IVoip$Call;
.end method

.method public abstract getMicrophoneInputLevel()F
.end method

.method public abstract isCallInProgress()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isMicrophoneMuted()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isSpeakerOn()Z
.end method

.method public abstract recordAudioToSdcard()Z
.end method

.method public abstract removeOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)Z
.end method

.method public abstract setMicrophoneMute(Z)V
.end method

.method public abstract setOutputVolume(F)V
.end method

.method public abstract setSpeakerOn(Z)V
.end method

.method public abstract start()Z
.end method

.method public abstract startDTMF(C)V
.end method

.method public abstract stop()V
.end method

.method public abstract stopDTMF()V
.end method

.method public abstract terminate()Z
.end method
