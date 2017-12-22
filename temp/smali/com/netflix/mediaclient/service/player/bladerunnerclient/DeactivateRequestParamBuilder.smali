.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;
.super Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;
.source "DeactivateRequestParamBuilder.java"


# instance fields
.field private mWasDownloadComplete:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->mWasDownloadComplete:Z

    .line 14
    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->getRequestObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 18
    invoke-super {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->getParams()Lorg/json/JSONObject;

    move-result-object v1

    .line 21
    :try_start_0
    const-string/jumbo v0, "downloadCompleted"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->mWasDownloadComplete:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-string/jumbo v2, "nf_msl_volley_bladerunner"

    const-string/jumbo v3, "error creating params"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
