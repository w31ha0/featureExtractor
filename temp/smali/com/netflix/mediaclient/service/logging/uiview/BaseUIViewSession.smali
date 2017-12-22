.class public abstract Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "BaseUIViewSession.java"


# static fields
.field protected static final CATEGORY:Ljava/lang/String; = "uiView"


# instance fields
.field protected mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 18
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "uiView"

    return-object v0
.end method

.method public getView()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/uiview/BaseUIViewSession;->mView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method
