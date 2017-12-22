.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;
.super Ljava/lang/Object;
.source "AccountConfigData.java"


# static fields
.field private static final DEFAULT_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;

.field private static final TAG:Ljava/lang/String; = "nf_config"


# instance fields
.field private final castWhitelist:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "castWhitelistTargets"
    .end annotation
.end field

.field private dataSaveConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dataSaveConfig"
    .end annotation
.end field

.field private disableMcQueenV2:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableMcQueenV2"
    .end annotation
.end field

.field private disableSuspendPlay:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "disableSuspendPlay"
    .end annotation
.end field

.field private enableCast:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableCast"
    .end annotation
.end field

.field private enableHTTPSAuth:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableHTTPSAuth"
    .end annotation
.end field

.field private enableLowBitrateStreams:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enableLowBitrateStreams"
    .end annotation
.end field

.field private falkorCacheDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "falkorCacheDisabled"
    .end annotation
.end field

.field private jPlayerConfig:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "JPlayerConfig"
    .end annotation
.end field

.field private mCastWhitelistJSONArray:Lorg/json/JSONArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mJPlayerConfigJSON:Lorg/json/JSONObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final mdxBlacklistTargets:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mdxBlacklistTargets"
    .end annotation
.end field

.field private myListForKidsDisabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "myListForKidsDisabled"
    .end annotation
.end field

.field private preAppPartnerExperience:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preAppPartnerExperience"
    .end annotation
.end field

.field private preAppWidgetExperience:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preAppWidgetExperience"
    .end annotation
.end field

.field public previewContent:Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "previewContent"
    .end annotation
.end field

.field private userPin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userPin"
    .end annotation
.end field

.field private final videoBufferSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videoBufferSize"
    .end annotation
.end field

.field private voipEnabledOnAccount:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "voipEnabledOnAccount"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->DEFAULT_KUBRICK_CONFIG:Lcom/netflix/mediaclient/service/webclient/model/leafs/KubrickConfigData;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->videoBufferSize:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableLowBitrateStreams:Z

    .line 79
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->castWhitelist:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mdxBlacklistTargets:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mCastWhitelistJSONArray:Lorg/json/JSONArray;

    .line 82
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;

    .line 83
    iput-object v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mJPlayerConfigJSON:Lorg/json/JSONObject;

    .line 84
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;->getDefault()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->previewContent:Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    .line 85
    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 176
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 177
    const-class v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    .line 178
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mCastWhitelistJSONArray:Lorg/json/JSONArray;

    .line 179
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;

    .line 180
    iput-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mJPlayerConfigJSON:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public enableHTTPSAuth()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableHTTPSAuth:Z

    return v0
.end method

.method public enableLowBitrateStreams()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableLowBitrateStreams:Z

    return v0
.end method

.method public getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->dataSaveConfig:Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    return-object v0
.end method

.method public getCastBlacklist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->castWhitelist:Ljava/lang/String;

    return-object v0
.end method

.method public getCastEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableCast:Z

    return v0
.end method

.method public getCastWhitelistAsJsonArray()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mCastWhitelistJSONArray:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->castWhitelist:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->castWhitelist:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mCastWhitelistJSONArray:Lorg/json/JSONArray;

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mCastWhitelistJSONArray:Lorg/json/JSONArray;

    return-object v0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v0, "nf_config"

    const-string/jumbo v2, "castWhitelist bad json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->castWhitelist:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getJPlayerThreadConfigAsJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mJPlayerConfigJSON:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->jPlayerConfig:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->jPlayerConfig:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mJPlayerConfigJSON:Lorg/json/JSONObject;

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mJPlayerConfigJSON:Lorg/json/JSONObject;

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    const-string/jumbo v0, "nf_config"

    const-string/jumbo v2, "jPlayerThreadConfig bad json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->jPlayerConfig:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getMdxBlacklist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mdxBlacklistTargets:Ljava/lang/String;

    return-object v0
.end method

.method public getMdxBlacklistAsJsonArray()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mdxBlacklistTargets:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mdxBlacklistTargets:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mMdxBlacklistTargetsJSONArray:Lorg/json/JSONArray;

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v0, "nf_config"

    const-string/jumbo v2, "mdxBlacklistTargets bad json: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->mdxBlacklistTargets:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPreAppPartnerExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->preAppPartnerExperience:Ljava/lang/String;

    return-object v0
.end method

.method public getPreAppWidgetExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->preAppWidgetExperience:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->previewContent:Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    return-object v0
.end method

.method public getUserPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->userPin:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoBufferSize()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public isFalkorCacheDisabled()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->falkorCacheDisabled:Z

    return v0
.end method

.method public isMyListForKidsDisabled()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->myListForKidsDisabled:Z

    return v0
.end method

.method public isVoipEnabledOnAccount()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->voipEnabledOnAccount:Z

    return v0
.end method

.method public toDisableMcQueenV2()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->disableMcQueenV2:Z

    return v0
.end method

.method public toDisableSuspendPlay()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->disableSuspendPlay:Z

    return v0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method
