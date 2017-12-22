.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;
.super Ljava/lang/Object;
.source "IVoip.java"


# virtual methods
.method public abstract callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
.end method

.method public abstract callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
.end method

.method public abstract callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
.end method

.method public abstract callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V
.end method

.method public abstract callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
.end method

.method public abstract engineStatusChanged(Z)V
.end method

.method public abstract networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
.end method
