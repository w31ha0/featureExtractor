.class public final Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "SearchSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "search"


# instance fields
.field private mRequestId:J

.field private mTerm:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 33
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mTerm:Ljava/lang/String;

    .line 34
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mRequestId:J

    .line 35
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;
    .locals 9

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mStarted:J

    sub-long v2, v0, v2

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mTerm:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SearchEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 51
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "search"

    return-object v0
.end method

.method public getRequestId()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SearchSession;->mRequestId:J

    return-wide v0
.end method
