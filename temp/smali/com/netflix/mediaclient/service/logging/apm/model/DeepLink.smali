.class public Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
.super Ljava/lang/Object;
.source "DeepLink.java"


# static fields
.field public static final DEEPLINK_MSG_PARAMS:Ljava/lang/String; = "deeplinkMsgParams"

.field private static final DEEP_LINK_PARAMS:Ljava/lang/String; = "deeplinkParams"

.field private static final SOURCE:Ljava/lang/String; = "source"


# instance fields
.field private mDeeplinkParams:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mSource:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mDeeplinkParams:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 1

    .prologue
    .line 47
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v0

    .line 60
    :cond_1
    const-string/jumbo v1, "source"

    invoke-static {p0, v1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "deeplinkParams"

    invoke-static {p0, v2, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    if-nez v1, :cond_2

    if-eqz v2, :cond_0

    .line 66
    :cond_2
    new-instance v0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getDeeplinkParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mDeeplinkParams:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mSource:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 35
    const-string/jumbo v1, "source"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mDeeplinkParams:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 39
    const-string/jumbo v1, "deeplinkParams"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mDeeplinkParams:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeepLink{source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deeplinkParams=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/apm/model/DeepLink;->mDeeplinkParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
