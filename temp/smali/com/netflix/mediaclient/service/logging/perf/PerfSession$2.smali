.class Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;
.super Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
.source "PerfSession.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;JLjava/util/Map;)V
    .locals 1

    .prologue
    .line 108
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;->this$0:Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    iput-object p5, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;->val$params:Ljava/util/Map;

    invoke-direct {p0, p2, p3, p4}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;J)V

    return-void
.end method


# virtual methods
.method protected getCustomData()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;->val$params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;->val$params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;->val$params:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getCustomData()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method
