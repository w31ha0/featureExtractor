.class public abstract Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;
.super Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;
.source "NetworkConnectionSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/BaseApmSession;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public abstract createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
.end method

.method public abstract createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
.end method
