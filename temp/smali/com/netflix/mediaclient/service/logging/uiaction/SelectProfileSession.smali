.class public final Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "SelectProfileSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "selectProfile"


# instance fields
.field private mProfileId:Ljava/lang/String;

.field private mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p3, p4}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Profile ID is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mProfileId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    .line 36
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;
    .locals 10

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mStarted:J

    sub-long v2, v0, v2

    .line 49
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mProfileId:Ljava/lang/String;

    iget-object v9, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mRememberProfile:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$RememberProfile;)V

    .line 50
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/SelectProfileSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/SelectProfileEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 52
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "selectProfile"

    return-object v0
.end method
