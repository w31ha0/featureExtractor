.class public Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "ModalViewStartedEvent.java"


# static fields
.field private static final KEY_VIEW_NAME:Ljava/lang/String; = "view"

.field private static final UIVIEW_SESSION_NAME:Ljava/lang/String; = "viewName"


# instance fields
.field private mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "viewName"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 21
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 30
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    if-eqz v1, :cond_1

    .line 36
    const-string/jumbo v1, "view"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/uiview/model/ModalViewStartedEvent;->mViewName:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    :cond_1
    return-object v0
.end method
