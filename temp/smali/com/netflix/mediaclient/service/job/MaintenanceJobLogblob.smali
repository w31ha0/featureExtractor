.class Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "MaintenanceJobLogblob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "maintenanceJobLogblob"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "errormsg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    return-void
.end method

.method static sendJobStartLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;

    const-string/jumbo v1, "startJob"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string/jumbo v1, "maintenanceJobLogblob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 42
    :catch_1
    move-exception v0

    .line 43
    const-string/jumbo v1, "maintenanceJobLogblob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static sendJobStopLogBlob(Lcom/netflix/mediaclient/servicemgr/LogblobLogging;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 49
    if-nez p0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;

    const-string/jumbo v1, "stopJob"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/job/MaintenanceJobLogblob;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "maintenanceJobLogblob"

    const-string/jumbo v2, "JSONException:"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 54
    :catch_1
    move-exception v0

    .line 55
    const-string/jumbo v1, "maintenanceJobLogblob"

    const-string/jumbo v2, "Exception:"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MAINTENANCE_JOB:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
