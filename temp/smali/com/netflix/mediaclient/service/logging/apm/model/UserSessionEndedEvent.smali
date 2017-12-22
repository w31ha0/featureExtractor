.class public final Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "UserSessionEndedEvent.java"


# static fields
.field public static final END_REASON:Ljava/lang/String; = "endReason"

.field public static final LAST_USER_ACTIVITY_TIME:Ljava/lang/String; = "lastUserActivityTime"

.field public static final USER_SESSION_DURATION:Ljava/lang/String; = "userSessionDuration"

.field private static final USER_SESSION_NAME:Ljava/lang/String; = "userSession"


# instance fields
.field private endReason:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

.field private lastUserActivityTime:J

.field private userSessionDuration:J


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionStartedEvent;JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;J)V

    .line 89
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->userSessionDuration:J

    .line 90
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->lastUserActivityTime:J

    .line 91
    if-nez p4, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "End reason is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->endReason:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;JLcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;J)V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "userSession"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;J)V

    .line 71
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->userSessionDuration:J

    .line 72
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->lastUserActivityTime:J

    .line 73
    if-nez p4, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "End reason is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->endReason:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lorg/json/JSONObject;)V

    .line 50
    const-string/jumbo v0, "data"

    invoke-static {p1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    const-string/jumbo v0, "endReason"

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    const-class v2, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->endReason:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    .line 56
    :cond_0
    const-string/jumbo v0, "lastUserActivityTime"

    invoke-static {v1, v0, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->lastUserActivityTime:J

    .line 57
    const-string/jumbo v0, "userSessionDuration"

    invoke-static {v1, v0, v4, v5}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->userSessionDuration:J

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method protected getData()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 103
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getData()Lorg/json/JSONObject;

    move-result-object v0

    .line 104
    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :cond_0
    const-string/jumbo v1, "lastUserActivityTime"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->lastUserActivityTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v1, "userSessionDuration"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->userSessionDuration:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 109
    return-object v0
.end method

.method public getEndReason()Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->endReason:Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging$EndReason;

    return-object v0
.end method

.method public getLastUserActivityTime()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->lastUserActivityTime:J

    return-wide v0
.end method

.method public getUserSessionDuration()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/UserSessionEndedEvent;->userSessionDuration:J

    return-wide v0
.end method
