.class Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;
.super Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;
.source "FetchDummyWebRequest.java"


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
.field private static final TAG:Ljava/lang/String; = "nf_service_user_fetchdummywebrequest"


# instance fields
.field private final pqlQuery:Ljava/lang/String;

.field private final responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/BaseConfigWebRequest;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[\'dummy\']"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->pqlQuery:Ljava/lang/String;

    .line 36
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
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->pqlQuery:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->responseCallback:Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/ConfigurationAgentWebCallback;->onDummyWebCallDone(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected bridge synthetic parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/volley/FetchDummyWebRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
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
    .line 50
    const/4 v0, 0x1

    return v0
.end method
