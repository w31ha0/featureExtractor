.class public Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "BasicSessionStartedEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;->category:Ljava/lang/String;

    .line 26
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionStartedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 27
    return-void
.end method
