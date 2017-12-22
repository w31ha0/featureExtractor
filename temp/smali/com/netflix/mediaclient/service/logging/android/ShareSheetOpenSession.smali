.class public Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;
.super Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;
.source "ShareSheetOpenSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "shareOpenSheet"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mUrl:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;
    .locals 10

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mStarted:J

    sub-long v4, v0, v2

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetOpenSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetOpenEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 40
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "shareOpenSheet"

    return-object v0
.end method
