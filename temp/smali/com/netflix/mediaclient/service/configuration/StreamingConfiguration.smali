.class public Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;
.super Ljava/lang/Object;
.source "StreamingConfiguration.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 29
    return-void
.end method

.method public getStreamingConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStreamingConfigInCache()Z
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->getStreamingConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public persistStreamingOverride(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/StreamingConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "streamingConfig"

    invoke-static {v0, v1, p1}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    :cond_0
    return-void
.end method
