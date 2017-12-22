.class public Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;
.super Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;
.source "WiredNetworkConnectionSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "wiredNetworkConnection"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionEndedEvent;
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 55
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionEndedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 57
    return-object v2
.end method

.method public bridge synthetic createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionEndedEvent;

    move-result-object v0

    return-object v0
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 44
    return-object v0
.end method

.method public bridge synthetic createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/WiredNetworkConnectionSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/WiredNetworkConnectionSessionStartedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "wiredNetworkConnection"

    return-object v0
.end method
