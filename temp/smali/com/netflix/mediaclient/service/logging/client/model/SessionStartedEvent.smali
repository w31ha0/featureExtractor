.class public abstract Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;
.source "SessionStartedEvent.java"


# static fields
.field private static final EXT:Ljava/lang/String; = ".started"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionStarted:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->name:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Lorg/json/JSONObject;)V

    .line 27
    return-void
.end method
