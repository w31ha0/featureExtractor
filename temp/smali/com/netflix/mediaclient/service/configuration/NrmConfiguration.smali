.class public Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;
.super Ljava/lang/Object;
.source "NrmConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

.field mNrmLanguagesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "nf_config_nrm"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nrmInfo"

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nrmLanguages"

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 28
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmLanguagesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    .line 29
    return-void
.end method

.method public static isNrmLangInPref(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 81
    const-string/jumbo v0, "nrmLanguages"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->clearCookies()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmLanguagesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nrmLanguages"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 38
    return-void
.end method

.method public clearCookies()V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "nrmInfo"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->removePref(Landroid/content/Context;Ljava/lang/String;)Z

    .line 46
    return-void
.end method

.method public persistNrmConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;)V
    .locals 3

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nonMemberData object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nrmInfo"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNonMemberData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NonMemberData;

    goto :goto_0
.end method

.method public persistNrmLanguagesOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;)V
    .locals 3

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "nrmLanguagesData object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "nrmLanguages"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/NrmConfiguration;->mNrmLanguagesData:Lcom/netflix/mediaclient/service/webclient/model/leafs/NrmLanguagesData;

    goto :goto_0
.end method
