.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IServiceManagerAccess;
.super Ljava/lang/Object;
.source "IServiceManagerAccess.java"


# virtual methods
.method public abstract getBrowseInterface()Lcom/netflix/mediaclient/servicemgr/IBrowseInterface;
.end method

.method public abstract getClientId()I
.end method

.method public abstract getRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)I
.end method

.method public abstract getWrappedRequestId(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;Ljava/lang/String;)I
.end method

.method public abstract isReady()Z
.end method
