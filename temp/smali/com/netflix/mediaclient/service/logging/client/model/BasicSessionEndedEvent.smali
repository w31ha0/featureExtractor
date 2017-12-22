.class public final Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "BasicSessionEndedEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 15
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;->category:Ljava/lang/String;

    .line 19
    :cond_0
    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/client/model/BasicSessionEndedEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    .line 20
    return-void
.end method
