.class public Lcom/netflix/mediaclient/service/logging/logblob/ClientStats;
.super Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;
.source "ClientStats.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/logging/logblob/BaseLogblob;-><init>()V

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/ClientStats;->mJson:Lorg/json/JSONObject;

    const-string/jumbo v1, "d"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_0
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "multihistogram"

    return-object v0
.end method

.method public shouldSendNow()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
