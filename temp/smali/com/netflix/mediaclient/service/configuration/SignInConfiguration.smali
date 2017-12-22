.class public Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;
.super Ljava/lang/Object;
.source "SignInConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "nf_config_signin"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "signInConfigData"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    .line 25
    return-void
.end method

.method public static isSignInConfigInPref(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "signInConfigData"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "signInConfigData"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 36
    return-void
.end method

.method public getSignInConfigData()Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    return-object v0
.end method

.method public persistSignInConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;)V
    .locals 3

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "signInConfigData object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "signInConfigData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/SignInConfiguration;->mSignInConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    goto :goto_0
.end method
