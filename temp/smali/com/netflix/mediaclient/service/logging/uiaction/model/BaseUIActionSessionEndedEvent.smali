.class public abstract Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "BaseUIActionSessionEndedEvent.java"


# static fields
.field public static final COMMAND_NAME:Ljava/lang/String; = "commandName"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final MODAL_VIEW:Ljava/lang/String; = "modalView"

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final STARTED:Ljava/lang/String; = "started"


# instance fields
.field protected mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

.field protected mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

.field protected mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

.field protected mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 79
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 80
    iput-object p6, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 81
    iput-object p7, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 82
    iput-object p8, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 54
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v1, "reason"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    .line 58
    const-string/jumbo v1, "started"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v1, "modalView"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 61
    const-string/jumbo v1, "commandName"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    .line 62
    const-string/jumbo v1, "error"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    return-object v0
.end method

.method public getCompletionReason()Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    return-object v0
.end method

.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 92
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    const-string/jumbo v2, "started"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    if-eqz v2, :cond_1

    .line 99
    const-string/jumbo v2, "commandName"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mAction:Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v2, :cond_2

    .line 102
    const-string/jumbo v2, "modalView"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    if-eqz v1, :cond_3

    .line 105
    const-string/jumbo v1, "reason"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mCompletionReason:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    if-eqz v1, :cond_4

    .line 108
    const-string/jumbo v1, "error"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_4
    return-object v0
.end method

.method public getUIError()Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mUIError:Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    return-object v0
.end method

.method public getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiaction/model/BaseUIActionSessionEndedEvent;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method public abstract isMemberEvent()Z
.end method
