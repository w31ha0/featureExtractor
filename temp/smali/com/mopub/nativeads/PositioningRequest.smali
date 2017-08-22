.class public Lcom/mopub/nativeads/PositioningRequest;
.super Lcom/mopub/volley/toolbox/JsonRequest;
.source "PositioningRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/toolbox/JsonRequest",
        "<",
        "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_KEY:Ljava/lang/String; = "fixed"

.field private static final INTERVAL_KEY:Ljava/lang/String; = "interval"

.field private static final MAX_VALUE:I = 0x10000

.field private static final POSITION_KEY:Ljava/lang/String; = "position"

.field private static final REPEATING_KEY:Ljava/lang/String; = "repeating"

.field private static final SECTION_KEY:Ljava/lang/String; = "section"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "errorListener"    # Lcom/mopub/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mopub/volley/Response$Listener",
            "<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;",
            "Lcom/mopub/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "listener":Lcom/mopub/volley/Response$Listener;, "Lcom/mopub/volley/Response$Listener<Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mopub/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/mopub/volley/Response$Listener;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 36
    return-void
.end method

.method private parseFixedJson(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 7
    .param p1, "fixed"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 102
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 103
    .local v2, "positionObject":Lorg/json/JSONObject;
    const-string v4, "section"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, "section":I
    if-gez v3, :cond_0

    .line 105
    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid section "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in JSON response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_0
    if-lez v3, :cond_1

    .line 101
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const-string v4, "position"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "position":I
    if-ltz v1, :cond_2

    const/high16 v4, 0x10000

    if-le v1, v4, :cond_3

    .line 113
    :cond_2
    new-instance v4, Lorg/json/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in JSON response"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    :cond_3
    invoke-virtual {p2, v1}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->addFixedPosition(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    goto :goto_1

    .line 117
    .end local v1    # "position":I
    .end local v2    # "positionObject":Lorg/json/JSONObject;
    .end local v3    # "section":I
    :cond_4
    return-void
.end method

.method private parseRepeatingJson(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 4
    .param p1, "repeatingObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "positioning"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    const-string v1, "interval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "interval":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/high16 v1, 0x10000

    if-le v0, v1, :cond_1

    .line 123
    :cond_0
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in JSON response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_1
    invoke-virtual {p2, v0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->enableRepeatingPositions(I)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .line 126
    return-void
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V
    .locals 0
    .param p1, "response"    # Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mopub/volley/toolbox/JsonRequest;->deliverResponse(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PositioningRequest;->deliverResponse(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    return-void
.end method

.method parseJson(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    .locals 7
    .param p1, "jsonString"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/mopub/network/MoPubNetworkError;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "error"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 76
    const-string v5, "WARMING_UP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    new-instance v5, Lcom/mopub/network/MoPubNetworkError;

    sget-object v6, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v5, v6}, Lcom/mopub/network/MoPubNetworkError;-><init>(Lcom/mopub/network/MoPubNetworkError$Reason;)V

    throw v5

    .line 79
    :cond_0
    new-instance v5, Lorg/json/JSONException;

    invoke-direct {v5, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    :cond_1
    const-string v5, "fixed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 84
    .local v1, "fixed":Lorg/json/JSONArray;
    const-string v5, "repeating"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    .local v4, "repeating":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    if-nez v4, :cond_2

    .line 86
    new-instance v5, Lorg/json/JSONException;

    const-string v6, "Must contain fixed or repeating positions"

    invoke-direct {v5, v6}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_2
    new-instance v3, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    invoke-direct {v3}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;-><init>()V

    .line 90
    .local v3, "positioning":Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;
    if-eqz v1, :cond_3

    .line 91
    invoke-direct {p0, v1, v3}, Lcom/mopub/nativeads/PositioningRequest;->parseFixedJson(Lorg/json/JSONArray;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 93
    :cond_3
    if-eqz v4, :cond_4

    .line 94
    invoke-direct {p0, v4, v3}, Lcom/mopub/nativeads/PositioningRequest;->parseRepeatingJson(Lorg/json/JSONObject;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)V

    .line 96
    :cond_4
    return-object v3
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget v2, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 47
    new-instance v2, Lcom/mopub/volley/VolleyError;

    invoke-direct {v2, p1}, Lcom/mopub/volley/VolleyError;-><init>(Lcom/mopub/volley/NetworkResponse;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    .line 64
    :goto_0
    return-object v2

    .line 50
    :cond_0
    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    array-length v2, v2

    if-nez v2, :cond_1

    .line 51
    new-instance v2, Lcom/mopub/volley/VolleyError;

    const-string v3, "Empty positioning response"

    new-instance v4, Lorg/json/JSONException;

    const-string v5, "Empty response"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 56
    invoke-static {v3}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 58
    .local v1, "jsonString":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mopub/nativeads/PositioningRequest;->parseJson(Ljava/lang/String;)Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;

    move-result-object v2

    invoke-static {p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/mopub/network/MoPubNetworkError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 59
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/mopub/volley/VolleyError;

    const-string v3, "Couldn\'t parse JSON from Charset"

    invoke-direct {v2, v3, v0}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/mopub/volley/VolleyError;

    const-string v3, "JSON Parsing Error"

    invoke-direct {v2, v3, v0}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto :goto_0

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 64
    .local v0, "e":Lcom/mopub/network/MoPubNetworkError;
    invoke-static {v0}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v2

    goto :goto_0
.end method
