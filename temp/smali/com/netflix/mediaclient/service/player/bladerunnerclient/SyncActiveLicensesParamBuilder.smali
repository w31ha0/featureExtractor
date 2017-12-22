.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;
.super Ljava/lang/Object;
.source "SyncActiveLicensesParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_bladerunner"

.field private static mListOfLinks:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMethod:Ljava/lang/String; = "syncDeactivateLinks"

.field private static final mUrl:Ljava/lang/String; = "/syncDeactivateLinks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private getDeactiveLinks()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->mListOfLinks:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 69
    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->mListOfLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "href"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v2, "nf_msl_volley_bladerunner"

    const-string/jumbo v3, "error creating json array"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    move-object v0, v1

    .line 69
    goto :goto_0
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 6

    .prologue
    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 34
    const-string/jumbo v0, "method"

    const-string/jumbo v2, "syncDeactivateLinks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string/jumbo v0, "url"

    const-string/jumbo v2, "/syncDeactivateLinks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string/jumbo v4, "deactivateLinks"

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->getDeactiveLinks()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string/jumbo v4, "clientTime"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    const-string/jumbo v2, "nf_msl_volley_bladerunner"

    const-string/jumbo v3, "error creating manifest params"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method setDeactiveLinks(Ljava/util/List;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;"
        }
    .end annotation

    .prologue
    .line 25
    sput-object p1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->mListOfLinks:Ljava/util/List;

    .line 26
    return-object p0
.end method
