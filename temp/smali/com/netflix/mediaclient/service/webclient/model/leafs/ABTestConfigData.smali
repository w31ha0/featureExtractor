.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
.super Ljava/util/HashMap;
.source "ABTestConfigData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_config"

.field private static mAbTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    .line 39
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string/jumbo v1, "Couldn\'t parse the ABTestConfigData"

    .line 45
    const-string/jumbo v2, "nf_config"

    invoke-static {v2, v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_1
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getABTestIds(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 60
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getConfigValues()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;

    .line 62
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->isMobileOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 63
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->isTabletOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/PersistentConfigurable;->getTestId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRawABConfig()Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->mAbTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    return-object v0
.end method


# virtual methods
.method public getConfigForId(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig;

    return-object v0
.end method

.method public setRawABConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 0

    .prologue
    .line 101
    sput-object p1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->mAbTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 102
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 97
    return-object v0
.end method
