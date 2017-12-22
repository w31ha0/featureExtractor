.class public Lcom/netflix/mediaclient/service/logging/logblob/Log;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "Log.java"


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 18
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/logging/logblob/Log;->populate(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V

    .line 19
    return-void
.end method

.method private populate(Lcom/netflix/mediaclient/servicemgr/LogArguments;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 23
    if-nez p1, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Log arguments are null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mType:Ljava/lang/String;

    .line 28
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "logLevel"

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->logLevel:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->getLevelInString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "msg"

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->msg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->traceArea:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "traceArea"

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_1
    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-le v2, v0, :cond_2

    .line 39
    :goto_0
    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 40
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->tags:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "traceArea"

    iget-object v2, p1, Lcom/netflix/mediaclient/servicemgr/LogArguments;->traceArea:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_3
    return-void
.end method


# virtual methods
.method public getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/Log;->mType:Ljava/lang/String;

    return-object v0
.end method
