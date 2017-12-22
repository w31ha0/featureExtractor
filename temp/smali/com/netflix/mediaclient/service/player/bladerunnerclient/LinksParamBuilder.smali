.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;
.super Ljava/lang/Object;
.source "LinksParamBuilder.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_msl_volley_bladerunner"


# instance fields
.field mLink:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method build()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->getParams()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->getRequestObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 26
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 27
    const-string/jumbo v0, "clientTime"

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string/jumbo v2, "nf_msl_volley_bladerunner"

    const-string/jumbo v3, "error creating params"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected getRequestObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->mLink:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "method"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->mLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "rel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->mLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "href"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_0
    const-string/jumbo v0, "params"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->getParams()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v2, "nf_msl_volley_bladerunner"

    const-string/jumbo v3, "error creating request object"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method setLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->mLink:Lorg/json/JSONObject;

    .line 20
    return-object p0
.end method
