.class public final Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "RemoveCachedVideoSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "RemoveCachedVideo"


# instance fields
.field private mOxId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mOxId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;
    .locals 9

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mStarted:J

    sub-long v2, v0, v2

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mOxId:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v5, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLjava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 40
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/offline/RemoveCachedVideoSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/offline/model/RemoveCachedVideoSessionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 42
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "RemoveCachedVideo"

    return-object v0
.end method
