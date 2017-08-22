.class public Lcom/mobfox/sdk/adapters/MoPubUtils;
.super Ljava/lang/Object;
.source "MoPubUtils.java"


# static fields
.field static final MOPUB_AD_REPORT:Ljava/lang/String; = "mopub-intent-ad-report"

.field static final MOPUB_HEIGHT:Ljava/lang/String; = "com_mopub_ad_height"

.field static final MOPUB_INVENTORY_HASH:Ljava/lang/String; = "invh"

.field static final MOPUB_WIDTH:Ljava/lang/String; = "com_mopub_ad_width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseReport(Lcom/mopub/common/AdReport;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "report"    # Lcom/mopub/common/AdReport;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/mopub/common/AdReport;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "split":[Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v0, "data":Lorg/json/JSONObject;
    array-length v6, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v4, v5

    .line 24
    .local v3, "s":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "el":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "device_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    array-length v7, v2

    if-le v7, v9, :cond_0

    .line 26
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x2

    aget-object v8, v2, v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 29
    :cond_0
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 32
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "el":[Ljava/lang/String;
    .end local v3    # "s":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "MobFoxAdapter"

    const-string v6, "adapter error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    const/4 v0, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method
