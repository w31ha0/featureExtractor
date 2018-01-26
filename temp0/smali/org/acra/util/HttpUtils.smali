.class public Lorg/acra/util/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doPost(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "login"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v5, 0x0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v0, "dataBfr":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v2, "key":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    const/16 v6, 0x26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 50
    const-string v4, ""

    .line 52
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 57
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    new-instance v3, Lorg/acra/util/HttpRequest;

    invoke-static {p2}, Lorg/acra/util/HttpUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object p2, v5

    .end local p2    # "login":Ljava/lang/String;
    :cond_3
    invoke-static {p3}, Lorg/acra/util/HttpUtils;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    invoke-direct {v3, p2, v5}, Lorg/acra/util/HttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v3, "req":Lorg/acra/util/HttpRequest;
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/acra/util/HttpRequest;->sendPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    return-void

    .end local v3    # "req":Lorg/acra/util/HttpRequest;
    :cond_4
    move-object v5, p3

    .line 57
    goto :goto_1
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aString"    # Ljava/lang/String;

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const-string v0, "ACRA-NULL-STRING"

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
