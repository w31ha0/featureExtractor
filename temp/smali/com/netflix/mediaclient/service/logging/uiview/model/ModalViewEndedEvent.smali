.class public Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;
.source "ModalViewEndedEvent.java"


# static fields
.field private static final KEY_VIEW_IS_MODAL:Ljava/lang/String; = "isModal"

.field private static final KEY_VIEW_NAME:Ljava/lang/String; = "view"

.field private static final UIVIEW_SESSION_NAME:Ljava/lang/String; = "viewName"


# instance fields
.field private mIsModal:Z

.field private mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Z)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "viewName"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mIsModal:Z

    .line 23
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 24
    iput-boolean p5, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mIsModal:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/uiview/model/BaseUIViewSessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    .line 40
    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_1
    const-string/jumbo v1, "isModal"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewEndedEvent;->mIsModal:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 45
    return-object v0
.end method
