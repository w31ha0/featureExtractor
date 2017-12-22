.class public Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;
.super Ljava/lang/Object;
.source "PerformanceProfiler.java"


# static fields
.field public static final CATEGORY:Ljava/lang/String; = "PerformanceProfiler"

.field public static final FAILURE:Ljava/lang/String; = "failed"

.field private static final GRAPH_COLOR_FAILED:Ljava/lang/String; = "red"

.field private static final GRAPH_COLOR_SUCCESS:Ljava/lang/String; = "green"

.field private static final GRAPH_DISCRETE_EVENT_WIDTH:I = 0x1e

.field private static final GRAPH_PARAM_COLOR:Ljava/lang/String; = "color"

.field private static final GRAPH_PARAM_DURATION:Ljava/lang/String; = "duration"

.field private static final GRAPH_PARAM_EPOCH:Ljava/lang/String; = "epoch"

.field private static final OUTPUT_FILENAME:Ljava/lang/String; = "perf_dump.txt"

.field private static final SHOULD_WARN_OPEN_SESSIONS:Z = false

.field private static final TAG:Ljava/lang/String; = "PerformanceProfiler"

.field private static instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;


# instance fields
.field events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;",
            ">;"
        }
    .end annotation
.end field

.field sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/logging/perf/PerfSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method private addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 358
    const-string/jumbo v0, "epoch"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->getEpoch()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 359
    const-string/jumbo v0, "duration"

    sub-long v2, p4, p2

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 360
    const-string/jumbo v1, "color"

    if-eqz p6, :cond_0

    const-string/jumbo v0, "red"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v0, ","

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    return-void

    .line 360
    :cond_0
    const-string/jumbo v0, "green"

    goto :goto_0
.end method

.method public static createEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Events;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler$1;-><init>(Ljava/util/Map;)V

    .line 389
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/Events;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->setName(Ljava/lang/String;)V

    .line 390
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->setCategory(Ljava/lang/String;)V

    .line 391
    return-object v0
.end method

.method public static createFailedMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const-string/jumbo v0, "failed"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    .line 62
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->instance:Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;

    return-object v0
.end method

.method private hasFailed(Lorg/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 371
    const-string/jumbo v0, "custom"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_0

    .line 373
    const-string/jumbo v1, "failed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 375
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 339
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 340
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    .line 341
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->hasFailed(Lorg/json/JSONObject;)Z

    move-result v6

    move-object v0, p0

    move-object v7, p2

    .line 340
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V

    .line 342
    return-void
.end method

.method private prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 346
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 347
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->getTime()J

    move-result-wide v4

    .line 350
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->hasFailed(Lorg/json/JSONObject;)Z

    move-result v6

    move-object v0, p0

    move-object v7, p2

    .line 349
    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->addTimes(Lorg/json/JSONObject;JJZLjava/lang/StringBuilder;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    const-string/jumbo v0, "PerformanceProfiler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session not closed, so we can\'t graph it..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private warnOfOpenSessions()V
    .locals 0

    .prologue
    .line 271
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    return-void
.end method

.method public dumpToDisk(Landroid/app/Activity;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 287
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->warnOfOpenSessions()V

    .line 289
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    const/16 v1, 0xe8

    invoke-static {p1, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 328
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    const-string/jumbo v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    .line 300
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    const-string/jumbo v3, "PerformanceProfiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DiscreteEvent prep failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 308
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->prepDataForGraphing(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 309
    :catch_1
    move-exception v0

    .line 310
    const-string/jumbo v3, "PerformanceProfiler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session prep failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 315
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 316
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string/jumbo v0, "PerformanceProfiler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "perf_dump.txt"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/FileUtils;->writeStringToExternalStorageDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    const-string/jumbo v0, "File dumped! Please run perfScripts/perf.sh"

    .line 319
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 320
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->clear()V

    goto/16 :goto_0

    .line 322
    :cond_3
    const-string/jumbo v0, "File dump failed!"

    .line 323
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    const-string/jumbo v1, "PerformanceProfiler"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 209
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getEndEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionEndedEvent;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getSessionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    return-void
.end method

.method public endSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->closeSession(Ljava/util/Map;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string/jumbo v0, "PerformanceProfiler"

    const-string/jumbo v1, "Couldn\'t find the SessionStartedEvent"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public flushApmEvents(Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V
    .locals 4

    .prologue
    .line 238
    if-nez p1, :cond_1

    .line 267
    :cond_0
    return-void

    .line 241
    :cond_1
    const-string/jumbo v0, "PerformanceProfiler"

    const-string/jumbo v1, "flushApmEvents()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->warnOfOpenSessions()V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    .line 245
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportPerformanceEvent(Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    .line 254
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 261
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getStartEvent()Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/SessionStartedEvent;->getName()Ljava/lang/String;

    move-result-object v2

    .line 262
    if-eqz v2, :cond_3

    sget-object v3, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->IMAGE_FETCH:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 263
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->startPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    .line 264
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->endPerformanceSession(Lcom/netflix/mediaclient/service/logging/perf/PerfSession;Lcom/netflix/mediaclient/servicemgr/ApplicationPerformanceMetricsLogging;)V

    goto :goto_1
.end method

.method public getEpoch()J
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V

    .line 124
    return-void
.end method

.method public logEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Events;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->events:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->createEvent(Lcom/netflix/mediaclient/service/logging/perf/Events;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/client/model/DiscreteEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->getId()Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/perf/Sessions;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/logging/perf/PerfSession;->createSession(Lcom/netflix/mediaclient/service/logging/perf/Sessions;Ljava/util/Map;)Lcom/netflix/mediaclient/service/logging/perf/PerfSession;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/perf/PerformanceProfiler;->sessions:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method
