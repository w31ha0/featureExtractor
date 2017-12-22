.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
.source "UserSessionStartedEvent.java"


# static fields
.field public static final IDLE_TIME:Ljava/lang/String; = "idleTime"

.field public static final TRIGGER:Ljava/lang/String; = "trigger"

.field private static final USER_SESSION_NAME:Ljava/lang/String; = "userSession"


# instance fields
.field private idleTime:J

.field private trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;J)V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "userSession"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Ljava/lang/String;)V

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trigger is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 78
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->idleTime:J

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 57
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const-string/jumbo v0, "trigger"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    const-class v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    .line 63
    :cond_0
    const-string/jumbo v0, "idleTime"

    const-wide/16 v2, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->idleTime:J

    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 91
    :cond_0
    const-string/jumbo v1, "trigger"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v1, "idleTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->idleTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 93
    return-object v0
.end method

.method public getIdleTime()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->idleTime:J

    return-wide v0
.end method

.method public getTrigger()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;->trigger:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$Trigger;

    return-object v0
.end method
