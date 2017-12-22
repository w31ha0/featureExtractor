.class public final Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "UpgradeStreamsSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "upgradeStreams"


# instance fields
.field private mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 31
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;
    .locals 10

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mStarted:J

    sub-long v2, v0, v2

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mCurrentStreams:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;

    move-object v6, p1

    move-object v7, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$Streams;)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/UpgradeStreamsSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/UpgradeStreamsEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 47
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "upgradeStreams"

    return-object v0
.end method
