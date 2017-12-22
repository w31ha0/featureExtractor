.class Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;
.source "ReportVoipCallStatsWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIELD_REPORT_VOIP_CALL_STATS:Ljava/lang/String; = "reportVoipPostCallInfo"

.field private static final PARAM_VOIP_AUTH_TOKEN:Ljava/lang/String; = "authtoken"

.field private static final PARAM_VOIP_CALL_STATISTICS:Ljava/lang/String; = "callstats"

.field private static final TAG:Ljava/lang/String; = "nf_voip"


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mCallStats:Ljava/lang/String;

.field private final pqlQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-direct {p0, p1, v2}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;-><init>(Landroid/content/Context;I)V

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->mAuthToken:Ljava/lang/String;

    .line 38
    if-eqz p3, :cond_0

    .line 39
    invoke-virtual {p3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->mCallStats:Ljava/lang/String;

    .line 42
    :cond_0
    const-string/jumbo v0, "[\'reportVoipPostCallInfo\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->pqlQuery:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "PQL = %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->pqlQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    return-void
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
    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
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
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string/jumbo v1, "authtoken"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->mAuthToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "callstats"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->mCallStats:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Failed to send VoIP call stats"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VoIP call stats sent successfully"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsWebRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 76
    return-object p1
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
