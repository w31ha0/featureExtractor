.class public Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;
.super Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;
.source "ShareSheetSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "shareSheet"


# instance fields
.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/logging/android/AndroidUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mUrl:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;
    .locals 10

    .prologue
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mStarted:J

    sub-long v4, v0, v2

    .line 37
    new-instance v1, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V

    .line 38
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/ShareSheetSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/model/ShareSheetEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 40
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "shareSheet"

    return-object v0
.end method
