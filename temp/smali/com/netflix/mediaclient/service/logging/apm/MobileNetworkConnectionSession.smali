.class public Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;
.super Lcom/netflix/mediaclient/service/logging/apm/NetworkConnectionSession;
.source "MobileNetworkConnectionSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "mobileNetworkConnection"


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
.method public createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionEndedEvent;
    .locals 4

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->mStarted:J

    sub-long/2addr v0, v2

    .line 54
    new-instance v2, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionEndedEvent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v2, v3, v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 56
    return-object v2
.end method

.method public bridge synthetic createEndedEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->createEndedEvent()Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionEndedEvent;

    move-result-object v0

    return-object v0
.end method

.method public createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->mId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 43
    return-object v0
.end method

.method public bridge synthetic createStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/Event;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/apm/MobileNetworkConnectionSession;->createStartEvent()Lcom/netflix/mediaclient/service/logging/apm/model/MobileNetworkConnectionSessionStartedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "mobileNetworkConnection"

    return-object v0
.end method
