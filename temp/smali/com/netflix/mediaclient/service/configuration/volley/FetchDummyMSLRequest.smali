.class Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;
.source "FetchDummyMSLRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_config_fetchdummywebrequest"


# instance fields
.field private final pqlQuery:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 5

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigMslRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'dummy\']"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->pqlQuery:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "nf_config_fetchdummywebrequest"

    const-string/jumbo v1, "PQL = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->pqlQuery:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
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
    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyMSLRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method
