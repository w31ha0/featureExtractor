.class public Lcom/mobfox/sdk/customevents/CustomEventData;
.super Ljava/lang/Object;
.source "CustomEventData.java"


# instance fields
.field public className:Ljava/lang/String;

.field public networkId:Ljava/lang/String;

.field public pixel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONObject;)Lcom/mobfox/sdk/customevents/CustomEventData;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 21
    new-instance v0, Lcom/mobfox/sdk/customevents/CustomEventData;

    invoke-direct {v0}, Lcom/mobfox/sdk/customevents/CustomEventData;-><init>()V

    .line 24
    .local v0, "ce":Lcom/mobfox/sdk/customevents/CustomEventData;
    :try_start_0
    const-string v2, "pixel"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/customevents/CustomEventData;->pixel:Ljava/lang/String;

    .line 25
    const-string v2, "class"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/customevents/CustomEventData;->className:Ljava/lang/String;

    .line 26
    const-string v2, "parameter"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/customevents/CustomEventData;->networkId:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "ce":Lcom/mobfox/sdk/customevents/CustomEventData;
    :goto_0
    return-object v0

    .line 28
    .restart local v0    # "ce":Lcom/mobfox/sdk/customevents/CustomEventData;
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseJSONArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "arr"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/customevents/CustomEventData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/customevents/CustomEventData;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "ce":Lcom/mobfox/sdk/customevents/CustomEventData;
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/mobfox/sdk/customevents/CustomEventData;->parseJSON(Lorg/json/JSONObject;)Lcom/mobfox/sdk/customevents/CustomEventData;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    .line 36
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Lorg/json/JSONException;
    goto :goto_1

    .line 44
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 47
    .end local v0    # "ce":Lcom/mobfox/sdk/customevents/CustomEventData;
    :cond_1
    return-object v3
.end method
