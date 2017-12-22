.class public abstract Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;
.source "SessionEndedEvent.java"


# static fields
.field public static final DURATION:Ljava/lang/String; = "duration"

.field private static final EXT:Ljava/lang/String; = ".ended"


# instance fields
.field protected duration:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;J)V
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getSessionName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->sessionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->name:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getSessionId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 61
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->name:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/service/logging/client/model/EventType;->sessionEnded:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->name:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 53
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;-><init>(Lorg/json/JSONObject;)V

    .line 33
    const-string/jumbo v0, "duration"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    .line 34
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    return-wide v0
.end method

.method public setDuration(J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    .line 75
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 83
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "duration"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->duration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
