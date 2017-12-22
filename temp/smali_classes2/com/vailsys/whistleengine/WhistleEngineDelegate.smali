.class public interface abstract Lcom/vailsys/whistleengine/WhistleEngineDelegate;
.super Ljava/lang/Object;
.source "WhistleEngineDelegate.java"


# virtual methods
.method public abstract authenticationNeeded(Z)V
.end method

.method public abstract callConnected(I)V
.end method

.method public abstract callDisconnected(I)V
.end method

.method public abstract callEnded(I)V
.end method

.method public abstract callFailed(ILjava/lang/String;I)V
.end method

.method public abstract callRinging(I)V
.end method

.method public abstract callSecured(IZ)V
.end method

.method public abstract connectivityUpdate(ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V
.end method

.method public abstract engineNotReady()V
.end method

.method public abstract engineReady()V
.end method

.method public abstract incomingCall(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract networkFailure(I)V
.end method

.method public abstract registrationSuccessful()V
.end method

.method public abstract selectedCodec(ILjava/lang/String;I)V
.end method
