.class public Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;
.super Ljava/lang/Object;
.source "AccountConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "nf_configuration_account"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accountConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->setAccountConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 52
    new-instance v0, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 53
    const-string/jumbo v1, "accountConfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 55
    const-string/jumbo v1, "bw_user_control_auto"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 56
    const-string/jumbo v1, "bw_user_manual_setting"

    invoke-virtual {v0, v1, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;->putIntPref(Ljava/lang/String;I)Z

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 58
    return-void
.end method

.method public enableHTTPSAuth()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableHTTPSAuth()Z

    move-result v0

    goto :goto_0
.end method

.method public enableLowBitrateStreams()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->enableLowBitrateStreams()Z

    move-result v0

    goto :goto_0
.end method

.method public getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getBWSaveConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/DataSaveConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getCastEnabled()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getCastEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public getCastWhitelist()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getCastWhitelistAsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getJPlayerConfig()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getJPlayerThreadConfigAsJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public getMdxBlacklist()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getMdxBlacklistAsJsonArray()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreAppPartnerExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppPartnerExperience()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreAppWidgetExperience()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreAppWidgetExperience()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getPreviewContentConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/PreviewContentConfigData;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getUserPin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVideoBufferSize()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->getVideoBufferSize()I

    move-result v0

    goto :goto_0
.end method

.method public persistAccountConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V
    .locals 3

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "accountConfig obj is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accountConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->setAccountConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V

    goto :goto_0
.end method

.method public setAccountConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;)V
    .locals 1

    .prologue
    .line 42
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    .line 43
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->isMyListForKidsDisabled()Z

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setMyListForKidsDisabled(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public shouldDisableVoip()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->isVoipEnabledOnAccount()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toDisableMcQueenV2()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toDisableMcQueenV2()Z

    move-result v0

    goto :goto_0
.end method

.method public toDisableSuspendPlay()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/AccountConfiguration;->mAccountConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountConfigData;->toDisableSuspendPlay()Z

    move-result v0

    goto :goto_0
.end method
