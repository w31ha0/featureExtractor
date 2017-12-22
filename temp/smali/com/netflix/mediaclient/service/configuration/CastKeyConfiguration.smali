.class public Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;
.super Ljava/lang/Object;
.source "CastKeyConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "nf_cast"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mContext:Landroid/content/Context;

    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "castKeyData"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    .line 24
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "castKeyData"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 31
    return-void
.end method

.method public getCastKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->key:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCastKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->keyId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public persistCastConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;)V
    .locals 3

    .prologue
    .line 38
    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "castKeyData"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/CastKeyConfiguration;->mCastKeyData:Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;

    .line 44
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/CastKeyData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
