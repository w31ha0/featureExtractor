.class public Lcom/mobfox/sdk/tagbanner/TagParams;
.super Ljava/util/HashMap;
.source "TagParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADSPACE_STRICT:Ljava/lang/String; = "adspace_strict"

.field public static final C_MRID:Ljava/lang/String; = "c_mraid"

.field public static final DEMO_AGE:Ljava/lang/String; = "demo_age"

.field public static final DEMO_GENDER:Ljava/lang/String; = "demo_gender"

.field public static final DEMO_KEYWORDS:Ljava/lang/String; = "demo_keywords"

.field public static final DEV_DNT:Ljava/lang/String; = "dev_dnt"

.field public static final DEV_JS:Ljava/lang/String; = "dev_js"

.field public static final DEV_LMT:Ljava/lang/String; = "dev_lmt"

.field public static final HEIGHT:Ljava/lang/String; = "adspace_height"

.field public static final IMP_SECURE:Ljava/lang/String; = "imp_secure"

.field public static final INVENTORY_HASH:Ljava/lang/String; = "s"

.field public static final LATITUDE:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final O_ANDADVID:Ljava/lang/String; = "o_andadvid"

.field public static final RT:Ljava/lang/String; = "rt"

.field public static final R_FLOOR:Ljava/lang/String; = "r_floor"

.field public static final SUB_BUNDLE_ID:Ljava/lang/String; = "sub_bundle_id"

.field public static final SUB_DOMAIN:Ljava/lang/String; = "sub_domain"

.field public static final SUB_NAME:Ljava/lang/String; = "sub_name"

.field public static final SUB_STOREURL:Ljava/lang/String; = "sub_storeurl"

.field public static final S_SUBID:Ljava/lang/String; = "s_subid"

.field public static final TAG_SECURE_URL:Ljava/lang/String; = "https://sdk.starbolt.io/dist/tagBanner.html"

.field public static final TAG_URL:Ljava/lang/String; = "http://sdk.starbolt.io/dist/tagBanner.html"

.field public static final TAG_URL_PATH:Ljava/lang/String; = "dist/tagBanner.html"

.field public static final VERSION:Ljava/lang/String; = "v"

.field public static final WIDTH:Ljava/lang/String; = "adspace_width"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    const-string v1, "http://sdk.starbolt.io/dist/tagBanner.html"

    .line 57
    .local v1, "url":Ljava/lang/String;
    const-string v2, "imp_secure"

    invoke-virtual {p0, v2}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "imp_secure"

    invoke-virtual {p0, v2}, Lcom/mobfox/sdk/tagbanner/TagParams;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 59
    .local v0, "secure":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 60
    const-string v1, "https://sdk.starbolt.io/dist/tagBanner.html"

    .line 64
    .end local v0    # "secure":I
    :cond_0
    return-object v1
.end method

.method public getTagUrlQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .line 115
    const-string v0, ""

    .line 118
    .local v0, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mobfox/sdk/tagbanner/TagParams;->getTagUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?%s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mobfox/sdk/tagbanner/TagParams;->toQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected mergeParams(Lcom/mobfox/sdk/tagbanner/TagParams;)V
    .locals 3
    .param p1, "params"    # Lcom/mobfox/sdk/tagbanner/TagParams;

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p1, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mobfox/sdk/tagbanner/TagParams;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setTagParam(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    return-void
.end method

.method public setTagParam(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    return-void
.end method

.method public setTagParam(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 89
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mobfox/sdk/tagbanner/TagParams;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    return-void
.end method

.method public setTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/tagbanner/TagParams;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/mobfox/sdk/tagbanner/TagParams;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    return-void
.end method

.method public toQuery()Ljava/lang/String;
    .locals 8

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, "kvs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/mobfox/sdk/tagbanner/TagParams;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    const-string v4, "%s=%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v5, v3

    const/4 v6, 0x1

    invoke-virtual {p0, v1}, Lcom/mobfox/sdk/tagbanner/TagParams;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v3, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v3

    goto :goto_0

    .line 79
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v3, "&"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
