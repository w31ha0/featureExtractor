.class public Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;
.source "ReportVoipCallStatsMslRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest",
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
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V
    .locals 5

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;-><init>()V

    .line 33
    const-string/jumbo v0, "[\'reportVoipPostCallInfo\']"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->pqlQuery:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "PQL = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->pqlQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->mAuthToken:Ljava/lang/String;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->mCallStats:Ljava/lang/String;

    .line 42
    :cond_0
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
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->pqlQuery:Ljava/lang/String;

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
    .line 46
    invoke-super {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseDynecomMslRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 47
    const-string/jumbo v1, "authtoken"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->mAuthToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v1, "callstats"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->mCallStats:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 69
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Failed to send VoIP call stats"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "VoIP call stats sent successfully"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/ReportVoipCallStatsMslRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 54
    return-object p1
.end method
