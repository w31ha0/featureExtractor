.class public Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "SendLogblobsMSLRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_SendLogblobs"

.field private static final pqlQuery1:Ljava/lang/String; = "[\'logblobs\']"

.field private static final sLogSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mLogblobs:Lorg/json/JSONObject;

.field private final responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->sLogSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;",
            "Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->sLogSequenceNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p2

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->createLogblob(Landroid/content/Context;JLcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->mLogblobs:Lorg/json/JSONObject;

    .line 48
    iput-object p4, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;

    .line 49
    return-void
.end method

.method private convertToServerEpoch(J)J
    .locals 1

    .prologue
    .line 69
    return-wide p1
.end method

.method private createLogblob(Landroid/content/Context;JLcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/Logblob;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 75
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 78
    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/Logblob;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    .line 81
    const-string/jumbo v5, "clienttime"

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/Logblob;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/Logblob;->getClientEpoch()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->convertToServerEpoch(J)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v0, "snum"

    invoke-virtual {v4, v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v0, "lnum"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    const-string/jumbo v0, "esn"

    iget-object v5, p4, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->esn:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string/jumbo v0, "devmod"

    iget-object v5, p4, Lcom/netflix/mediaclient/servicemgr/Logblob$CommonParams;->deviceModel:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string/jumbo v0, "lver"

    const-string/jumbo v5, "2014.1"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v0, "sdkver"

    const-string/jumbo v5, "4.1.5"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v0, "platformVersion"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v0, "platformBuildNum"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v0, "platformType"

    const-string/jumbo v5, "Android Tanto"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string/jumbo v0, "uiver"

    invoke-static {p1}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string/jumbo v0, "via"

    const-string/jumbo v5, "br"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string/jumbo v0, "fingerprint"

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    .line 100
    :cond_0
    const-string/jumbo v0, "entries"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    return-object v2
.end method


# virtual methods
.method protected getPQLQueries()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[\'logblobs\']"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 5
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
    .line 109
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 113
    :try_start_0
    const-string/jumbo v0, "method"

    const-string/jumbo v3, "logblob"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string/jumbo v0, "logblobs"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->mLogblobs:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    const-string/jumbo v0, "bladerunnerParams"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-object v1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string/jumbo v3, "nf_msl_volley_SendLogblobs"

    const-string/jumbo v4, "error creating logblob params"

    invoke-static {v3, v4, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;->LOG_BLOB:Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest$MSG_TAG;

    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;->onLogblobsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string/jumbo v0, "nf_msl_volley_SendLogblobs"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/logging/LogblobLoggingImpl$LogblobsSentCallback;->onLogblobsSent(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    const-string/jumbo v0, "nf_msl_volley_SendLogblobs"

    const-string/jumbo v1, "callback null?"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/volley/SendLogblobsMSLRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 135
    return-object p1
.end method
