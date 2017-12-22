.class public Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "PostPlaySession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "postPlay"


# instance fields
.field private mAutoPlayCountdownEnabled:Z

.field private mLengthOfAutoPlayCountdown:I

.field private mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 38
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mAutoPlayCountdownEnabled:Z

    .line 39
    iput p4, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mLengthOfAutoPlayCountdown:I

    .line 40
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    .line 41
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZZLjava/lang/Integer;Ljava/lang/Integer;I)Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;
    .locals 15

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mStarted:J

    sub-long v2, v0, v2

    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-boolean v7, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mAutoPlayCountdownEnabled:Z

    iget v8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mLengthOfAutoPlayCountdown:I

    iget-object v9, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mPostPlayExperience:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    move/from16 v14, p8

    invoke-direct/range {v0 .. v14}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/UIError;ZILcom/netflix/mediaclient/servicemgr/UserActionLogging$PostPlayExperience;ZZLjava/lang/Integer;Ljava/lang/Integer;I)V

    .line 72
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/PostPlaySession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/uiaction/model/PostPlayEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 74
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "postPlay"

    return-object v0
.end method
