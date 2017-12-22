.class public Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;
.super Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;
.source "PreAppWidgetActionSession.java"


# static fields
.field public static final PREAPP_CATEGORY:Ljava/lang/String; = "preAppAndroid"

.field private static final SESSION_NAME:Ljava/lang/String; = "androidWidgetCommand"


# instance fields
.field private widgetActionData:Ljava/lang/String;

.field private widgetLogData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/uiaction/BaseUIActionSession;-><init>(Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 20
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->widgetLogData:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->widgetActionData:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public createEndedEvent(Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;
    .locals 12

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->mStarted:J

    sub-long v4, v0, v2

    .line 36
    new-instance v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;

    const-string/jumbo v2, "androidWidgetCommand"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    iget-object v10, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->widgetLogData:Ljava/lang/String;

    iget-object v11, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->widgetActionData:Ljava/lang/String;

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v1 .. v11}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/PreAppWidgetActionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetActionEndedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 39
    return-object v1
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "preAppAndroid"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "androidWidgetCommand"

    return-object v0
.end method
