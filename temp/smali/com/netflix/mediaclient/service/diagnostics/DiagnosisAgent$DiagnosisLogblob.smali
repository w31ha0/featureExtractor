.class Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "DiagnosisAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;Ljava/util/List;Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;",
            ">;",
            "Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;->this$0:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 228
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 229
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;

    .line 230
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 232
    :cond_0
    iput-object p3, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;->mSeverity:Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "name"

    const-string/jumbo v3, "NetworkDiagnostics"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "DiagnosticPage"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$DiagnosisLogblob;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "resultArray"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->NETWORK_DIAGNOSIS:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x1

    return v0
.end method
