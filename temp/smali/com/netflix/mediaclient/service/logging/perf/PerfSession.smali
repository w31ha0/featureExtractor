.class public Lcom/netflix/mediaclient/service/logging/perf/PerfSession;
.super Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;
.source "PerfSession.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PerformanceSession"


# instance fields
.field private TAG:Ljava/lang/String;

.field end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

.field start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;-><init>()V

    .line 21
    const-string/jumbo v0, "PerfSession"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/perf/PerfSession;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;-><init>()V

    .line 91
    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$1;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$1;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 101
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->setSessionId(Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;)V

    .line 102
    const-string/jumbo v2, "PerformanceProfiler"

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->setCategory(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->setStartEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;)V

    .line 104
    return-object v0
.end method

.method private setEndEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    .line 55
    return-void
.end method


# virtual methods
.method public closeSession(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession$2;-><init>(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;JLjava/util/Map;)V

    .line 118
    const-string/jumbo v0, "PerformanceProfiler"

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->setCategory(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->setDuration(J)V

    .line 120
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->setEndEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;)V

    .line 121
    return-void
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string/jumbo v0, "PerformanceProfiler"

    return-object v0
.end method

.method public getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "PerformanceSession"

    return-object v0
.end method

.method public getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    return-object v0
.end method

.method public getStringId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/netflix/mediaclient/service/logging/client/BaseLoggingSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartEvent(Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "PerfSession: "

    .line 80
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->start:Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->end:Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_1
    return-object v0
.end method
