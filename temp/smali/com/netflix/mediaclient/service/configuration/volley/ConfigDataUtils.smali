.class public final Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;
.super Ljava/lang/Object;
.source "ConfigDataUtils.java"


# static fields
.field static final AB_TEST_CONFIG:Ljava/lang/String; = "abTestConfig"

.field static final ACCOUNT_CONFIG:Ljava/lang/String; = "accountConfig"

.field static final CAST_KEY_CONFIG:Ljava/lang/String; = "castKey"

.field static final CUSTOMER_SUPPORT_VOIP_CONFIG:Ljava/lang/String; = "customerSupportVoipConfigData"

.field static final DEVICE_CONFIG:Ljava/lang/String; = "deviceConfig"

.field static final NRM_INFO:Ljava/lang/String; = "nrmInfo"

.field static final NRM_LANG:Ljava/lang/String; = "nrmLanguages"

.field static final SIGNIN_CONFIG:Ljava/lang/String; = "signInConfig"

.field static final STREAMING_5PLUS_CONFIG:Ljava/lang/String; = "streamingConfig"

.field private static final TAG:Ljava/lang/String; = "nf_config_data"

.field static final accountConfigPql:Ljava/lang/String;

.field public static final castKeyPql:Ljava/lang/String;

.field static final customerSupportVoipPql:Ljava/lang/String;

.field public static final deviceConfigPql:Ljava/lang/String;

.field public static final nrmInfoPql:Ljava/lang/String;

.field public static final nrmLangPql:Ljava/lang/String;

.field public static final signInConfigPql:Ljava/lang/String;

.field static final streamingConfigPql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "deviceConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->deviceConfigPql:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "accountConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->accountConfigPql:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "streamingConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->streamingConfigPql:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "castKey"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->castKeyPql:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "nrmInfo"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->nrmInfoPql:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "nrmLanguages"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->nrmLangPql:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "signInConfig"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->signInConfigPql:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, "[\'%s\']"

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "customerSupportVoipConfigData"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->customerSupportVoipPql:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static allConfigPaths(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->deviceConfigPql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->accountConfigPql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->streamingConfigPql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->castKeyPql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const-string/jumbo v1, "[\'%s\', \'%s\']"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "abTestConfig"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->getABTestIds(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v0
.end method

.method public static parseConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;-><init>()V

    .line 57
    const-string/jumbo v0, "nf_config_data"

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 58
    invoke-static {v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string/jumbo v0, "nf_config_data"

    const-string/jumbo v1, "Empty response for configuration request!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Empty response for configuration request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 62
    throw v0

    .line 66
    :cond_0
    const-string/jumbo v0, "deviceConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "deviceConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->deviceConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DeviceConfigData;

    .line 71
    :cond_1
    const-string/jumbo v0, "accountConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const-string/jumbo v0, "accountConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->accountConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    .line 78
    :cond_2
    const-string/jumbo v0, "abTestConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    const-string/jumbo v3, "abTestConfig"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 83
    iget-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    iget-object v3, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->abTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->setRawABConfig(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V

    .line 87
    :cond_3
    const-string/jumbo v0, "castKey"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string/jumbo v0, "castKey"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->castKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    .line 93
    :cond_4
    const-string/jumbo v0, "streamingConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 94
    const-string/jumbo v0, "streamingConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->streamingConfigJson:Ljava/lang/String;

    .line 101
    :cond_5
    const-string/jumbo v0, "nrmInfo"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const-string/jumbo v0, "nrmInfo"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmInfo:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 106
    :cond_6
    const-string/jumbo v0, "nrmLanguages"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    const-string/jumbo v0, "nrmLanguages"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->nrmLang:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    .line 111
    :cond_7
    const-string/jumbo v0, "signInConfig"

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 112
    const-string/jumbo v0, "signInConfig"

    const-class v3, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-static {v2, v0, v3}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    iput-object v0, v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ConfigData;->signInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    .line 115
    :cond_8
    return-object v1
.end method

.method public static parseVoipConfigString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;
    .locals 6

    .prologue
    .line 130
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;-><init>()V

    .line 136
    const-string/jumbo v1, "nf_config_data"

    invoke-static {v1, p0}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getDataObj(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isEmpty(Lcom/google/gson/JsonObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    const-string/jumbo v0, "nf_config_data"

    const-string/jumbo v1, "Empty response for voip configuration request!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Empty response for voip configuration request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 141
    throw v0

    .line 145
    :cond_0
    const-string/jumbo v2, "customerSupportVoipConfigData"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string/jumbo v0, "nf_config_data"

    const-string/jumbo v2, "Customer Support VOIP config json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "customerSupportVoipConfigData"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 147
    const-string/jumbo v0, "customerSupportVoipConfigData"

    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getPropertyObject(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    .line 150
    :cond_1
    return-object v0
.end method

.method public static voipConfigPath()Ljava/util/List;
    .locals 2
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
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    sget-object v1, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->customerSupportVoipPql:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    return-object v0
.end method
