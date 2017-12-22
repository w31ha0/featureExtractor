.class public abstract Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/Event;
.source "SessionEvent.java"


# static fields
.field public static final CATEGORY_VALUE:Ljava/lang/String; = "uiQOE"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final SESSION_NAME:Ljava/lang/String; = "sessionName"


# instance fields
.field protected sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionId"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field

.field protected transient sessionName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sessionName"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session name can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    const-string/jumbo v0, "uiQOE"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->category:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/Event;-><init>(Lorg/json/JSONObject;)V

    .line 60
    const-string/jumbo v0, "sessionId"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    .line 61
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>(J)V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 62
    const-string/jumbo v0, "sessionName"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public getSessionId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 81
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 98
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Event;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "sessionName"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    if-eqz v1, :cond_1

    .line 103
    const-string/jumbo v1, "sessionId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->getCustomData()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SessionEvent [sessionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sessionId:Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->type:Lcom/netflix/mediaclient/service/logging/client/model/EventType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", activeSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->activeSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", sequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->sequence:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uptime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->uptime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", modalView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->modalView:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dataContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->dataContext:Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", kids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/SessionEvent;->kids:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", getCustomData()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method
