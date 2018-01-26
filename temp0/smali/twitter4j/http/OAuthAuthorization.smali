.class public final Ltwitter4j/http/OAuthAuthorization;
.super Ljava/lang/Object;
.source "OAuthAuthorization.java"

# interfaces
.implements Ltwitter4j/http/Authorization;
.implements Ljava/io/Serializable;
.implements Ltwitter4j/http/OAuthSupport;


# static fields
.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

.field private static RAND:Ljava/util/Random; = null

.field static class$twitter4j$http$OAuthAuthorization:Ljava/lang/Class; = null

.field private static transient http:Ltwitter4j/internal/http/HttpClientWrapper; = null

.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field static final serialVersionUID:J = -0x3c9fc4eaff57b01aL


# instance fields
.field private final conf:Ltwitter4j/conf/Configuration;

.field private consumerKey:Ljava/lang/String;

.field private consumerSecret:Ljava/lang/String;

.field private oauthToken:Ltwitter4j/http/OAuthToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-direct {v0, v1, v2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ltwitter4j/http/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

    .line 63
    sget-object v0, Ltwitter4j/http/OAuthAuthorization;->class$twitter4j$http$OAuthAuthorization:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "twitter4j.http.OAuthAuthorization"

    invoke-static {v0}, Ltwitter4j/http/OAuthAuthorization;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ltwitter4j/http/OAuthAuthorization;->class$twitter4j$http$OAuthAuthorization:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/http/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    .line 262
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Ltwitter4j/http/OAuthAuthorization;->RAND:Ljava/util/Random;

    return-void

    .line 63
    :cond_0
    sget-object v0, Ltwitter4j/http/OAuthAuthorization;->class$twitter4j$http$OAuthAuthorization:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 73
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    .line 74
    invoke-direct {p0, p2, p3}, Ltwitter4j/http/OAuthAuthorization;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ltwitter4j/conf/Configuration;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V
    .locals 1
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "consumerKey"    # Ljava/lang/String;
    .param p3, "consumerSecret"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 78
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    .line 79
    invoke-direct {p0, p2, p3, p4}, Ltwitter4j/http/OAuthAuthorization;->init(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V

    .line 80
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static constructRequestURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x8

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 437
    const-string v4, "?"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 438
    .local v2, "index":I
    if-eq v6, v2, :cond_0

    .line 439
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 441
    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 442
    .local v3, "slashIndex":I
    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "baseURL":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 444
    .local v1, "colonIndex":I
    if-eq v6, v1, :cond_1

    .line 446
    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ":80"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 448
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 454
    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 456
    return-object p0

    .line 449
    :cond_2
    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ":443"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 451
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, "encoded":Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 403
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 405
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 406
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 407
    .local v2, "focus":C
    const/16 v4, 0x2a

    if-ne v2, v4, :cond_0

    .line 408
    const-string v4, "%2A"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 409
    :cond_0
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_1

    .line 410
    const-string v4, "%20"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 411
    :cond_1
    const/16 v4, 0x25

    if-ne v2, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_2

    .line 413
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 414
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 416
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 419
    .end local v2    # "focus":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 401
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static encodeParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v0, "&"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "splitter"    # Ljava/lang/String;
    .param p2, "quot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltwitter4j/internal/http/HttpParameter;

    .line 368
    .local v2, "param":Ltwitter4j/internal/http/HttpParameter;
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->isFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 370
    if-eqz p2, :cond_1

    .line 371
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    :cond_2
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    if-eqz p2, :cond_3

    .line 377
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_3
    invoke-virtual {v2}, Ltwitter4j/internal/http/HttpParameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 382
    .end local v2    # "param":Ltwitter4j/internal/http/HttpParameter;
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 383
    if-eqz p2, :cond_5

    .line 384
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private ensureTokenIsAvailable()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No Token available."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v0, v1}, Ltwitter4j/internal/http/HttpClientWrapper;-><init>(Ltwitter4j/internal/http/HttpClientWrapperConfiguration;)V

    sput-object v0, Ltwitter4j/http/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    .line 84
    invoke-direct {p0, p1}, Ltwitter4j/http/OAuthAuthorization;->setConsumerKey(Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p2}, Ltwitter4j/http/OAuthAuthorization;->setConsumerSecret(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/AccessToken;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;
    .param p2, "consumerSecret"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ltwitter4j/http/OAuthAuthorization;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p3}, Ltwitter4j/http/OAuthAuthorization;->setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V

    .line 91
    return-void
.end method

.method public static normalizeAuthorizationHeaders(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 346
    invoke-static {p0}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 341
    invoke-static {p0}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeRequestParameters([Ltwitter4j/internal/http/HttpParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "params"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    .line 336
    invoke-static {p0}, Ltwitter4j/http/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ltwitter4j/http/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseGetParameters(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "signatureBaseParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v7, "?"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 239
    .local v4, "queryStart":I
    const/4 v7, -0x1

    if-eq v7, v4, :cond_1

    .line 240
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, "queryStrs":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 243
    .local v3, "query":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 245
    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_0
    new-instance v7, Ltwitter4j/internal/http/HttpParameter;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 255
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "query":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 260
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "queryStrs":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setConsumerKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerKey"    # Ljava/lang/String;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    .end local p1    # "consumerKey":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    .line 461
    return-void

    .line 460
    .restart local p1    # "consumerKey":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method private setConsumerSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "consumerSecret"    # Ljava/lang/String;

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .end local p1    # "consumerSecret":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    .line 465
    return-void

    .line 464
    .restart local p1    # "consumerSecret":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public static toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;
    .locals 2
    .param p0, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ltwitter4j/internal/http/HttpParameter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v0, "paramList":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 352
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    if-ne p0, p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v1

    .line 470
    :cond_1
    instance-of v3, p1, Ltwitter4j/http/OAuthSupport;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 472
    check-cast v0, Ltwitter4j/http/OAuthAuthorization;

    .line 474
    .local v0, "that":Ltwitter4j/http/OAuthAuthorization;
    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 475
    goto :goto_0

    .line 474
    :cond_4
    iget-object v3, v0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 476
    :cond_5
    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 477
    goto :goto_0

    .line 476
    :cond_7
    iget-object v3, v0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 478
    :cond_8
    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v3, :cond_9

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    iget-object v4, v0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v3, v4}, Ltwitter4j/http/OAuthToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 479
    goto :goto_0

    .line 478
    :cond_9
    iget-object v3, v0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p4, "nonce"    # Ljava/lang/String;
    .param p5, "timestamp"    # Ljava/lang/String;
    .param p6, "otoken"    # Ltwitter4j/http/OAuthToken;

    .prologue
    .line 207
    if-nez p3, :cond_0

    .line 208
    const/4 v5, 0x0

    new-array p3, v5, [Ltwitter4j/internal/http/HttpParameter;

    .line 210
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v2, "oauthHeaderParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_consumer_key"

    iget-object v7, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v5, Ltwitter4j/http/OAuthAuthorization;->OAUTH_SIGNATURE_METHOD:Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_timestamp"

    invoke-direct {v5, v6, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_nonce"

    invoke-direct {v5, v6, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_version"

    const-string v7, "1.0"

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    if-eqz p6, :cond_1

    .line 217
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_token"

    invoke-virtual {p6}, Ltwitter4j/http/OAuthToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, p3

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .local v4, "signatureBaseParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-static {p3}, Ltwitter4j/internal/http/HttpParameter;->containsFile([Ltwitter4j/internal/http/HttpParameter;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    invoke-static {p3}, Ltwitter4j/http/OAuthAuthorization;->toParamList([Ltwitter4j/internal/http/HttpParameter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    :cond_2
    invoke-direct {p0, p2, v4}, Ltwitter4j/http/OAuthAuthorization;->parseGetParameters(Ljava/lang/String;Ljava/util/List;)V

    .line 225
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {p2}, Ltwitter4j/http/OAuthAuthorization;->constructRequestURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 227
    .local v0, "base":Ljava/lang/StringBuffer;
    invoke-static {v4}, Ltwitter4j/http/OAuthAuthorization;->normalizeRequestParameters(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "oauthBaseString":Ljava/lang/String;
    sget-object v5, Ltwitter4j/http/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v6, "OAuth base string: "

    invoke-virtual {v5, v6, v1}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, v1, p6}, Ltwitter4j/http/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "signature":Ljava/lang/String;
    sget-object v5, Ltwitter4j/http/OAuthAuthorization;->logger:Ltwitter4j/internal/logging/Logger;

    const-string v6, "OAuth signature: "

    invoke-virtual {v5, v6, v3}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "oauth_signature"

    invoke-direct {v5, v6, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "OAuth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    const/4 v7, 0x1

    invoke-static {v2, v6, v7}, Ltwitter4j/http/OAuthAuthorization;->encodeParameters(Ljava/util/List;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p4, "token"    # Ltwitter4j/http/OAuthToken;

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 270
    .local v9, "timestamp":J
    sget-object v0, Ltwitter4j/http/OAuthAuthorization;->RAND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    add-long v7, v9, v0

    .line 271
    .local v7, "nonce":J
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Ltwitter4j/http/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method generateSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltwitter4j/http/OAuthAuthorization;->generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method generateSignature(Ljava/lang/String;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;
    .locals 7
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "token"    # Ltwitter4j/http/OAuthToken;

    .prologue
    .line 284
    const/4 v0, 0x0

    .line 286
    .local v0, "byteHMAC":[B
    :try_start_0
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 288
    .local v2, "mac":Ljavax/crypto/Mac;
    if-nez p2, :cond_1

    .line 289
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v6}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "oauthSignature":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 299
    .end local v3    # "oauthSignature":Ljava/lang/String;
    .local v4, "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 306
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_1
    invoke-static {v0}, Ltwitter4j/internal/http/BASE64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 292
    .restart local v2    # "mac":Ljavax/crypto/Mac;
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ltwitter4j/http/OAuthToken;->getSecretKeySpec()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v4

    .line 293
    .restart local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    if-nez v4, :cond_0

    .line 294
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-static {v6}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p2}, Ltwitter4j/http/OAuthToken;->getTokenSecret()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ltwitter4j/http/OAuthAuthorization;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3    # "oauthSignature":Ljava/lang/String;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    .end local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 296
    .restart local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {p2, v4}, Ltwitter4j/http/OAuthToken;->setSecretKeySpec(Ljavax/crypto/spec/SecretKeySpec;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 301
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "oauthSignature":Ljava/lang/String;
    .end local v4    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 303
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 4
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;

    .prologue
    .line 95
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getMethod()Ltwitter4j/internal/http/RequestMethod;

    move-result-object v0

    invoke-virtual {v0}, Ltwitter4j/internal/http/RequestMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpRequest;->getParameters()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {p0, v0, v1, v2, v3}, Ltwitter4j/http/OAuthAuthorization;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/OAuthToken;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken()Ltwitter4j/http/AccessToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Ltwitter4j/http/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 130
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    instance-of v1, v1, Ltwitter4j/http/AccessToken;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    check-cast v1, Ltwitter4j/http/AccessToken;

    .line 135
    :goto_0
    return-object v1

    .line 134
    :cond_0
    :try_start_0
    new-instance v1, Ltwitter4j/http/AccessToken;

    sget-object v2, Ltwitter4j/http/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 135
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    check-cast v1, Ltwitter4j/http/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "te":Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 8
    .param p1, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0}, Ltwitter4j/http/OAuthAuthorization;->ensureTokenIsAvailable()V

    .line 147
    :try_start_0
    new-instance v1, Ltwitter4j/http/AccessToken;

    sget-object v2, Ltwitter4j/http/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "oauth_verifier"

    invoke-direct {v6, v7, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 149
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    check-cast v1, Ltwitter4j/http/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "te":Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The user has not given access to the account."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 9
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Ltwitter4j/http/AccessToken;

    sget-object v2, Ltwitter4j/http/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthAccessTokenURL()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v5, 0x0

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_username"

    invoke-direct {v6, v7, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_password"

    invoke-direct {v6, v7, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "x_auth_mode"

    const-string v8, "client_auth"

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2}, Ltwitter4j/http/AccessToken;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    iput-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 191
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    check-cast v1, Ltwitter4j/http/AccessToken;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "te":Ltwitter4j/TwitterException;
    new-instance v1, Ltwitter4j/TwitterException;

    const-string v2, "The screen name / password combination seems to be invalid."

    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 159
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 160
    invoke-virtual {p0}, Ltwitter4j/http/OAuthAuthorization;->getOAuthAccessToken()Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthAccessToken(Ltwitter4j/http/RequestToken;Ljava/lang/String;)Ltwitter4j/http/AccessToken;
    .locals 1
    .param p1, "requestToken"    # Ltwitter4j/http/RequestToken;
    .param p2, "oauthVerifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 167
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 168
    invoke-virtual {p0, p2}, Ltwitter4j/http/OAuthAuthorization;->getOAuthAccessToken(Ljava/lang/String;)Ltwitter4j/http/AccessToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken()Ltwitter4j/http/RequestToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltwitter4j/http/OAuthAuthorization;->getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;

    move-result-object v0

    return-object v0
.end method

.method public getOAuthRequestToken(Ljava/lang/String;)Ltwitter4j/http/RequestToken;
    .locals 4
    .param p1, "callbackURL"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 120
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "oauth_callback"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    .line 121
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    new-instance v1, Ltwitter4j/http/RequestToken;

    sget-object v2, Ltwitter4j/http/OAuthAuthorization;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getOAuthRequestTokenURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p0}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/http/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Ltwitter4j/http/RequestToken;-><init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/http/OAuthSupport;)V

    iput-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 122
    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    check-cast v1, Ltwitter4j/http/RequestToken;

    return-object v1

    .line 120
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :cond_0
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v2, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 487
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ltwitter4j/http/OAuthAuthorization;->consumerSecret:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 488
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v1}, Ltwitter4j/http/OAuthToken;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 489
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 486
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 487
    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    instance-of v0, v0, Ltwitter4j/http/AccessToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOAuthAccessToken(Ltwitter4j/http/AccessToken;)V
    .locals 0
    .param p1, "accessToken"    # Ltwitter4j/http/AccessToken;

    .prologue
    .line 201
    iput-object p1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "OAuthAuthorization{consumerKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->consumerKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", consumerSecret=\'******************************************\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", oauthToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/http/OAuthAuthorization;->oauthToken:Ltwitter4j/http/OAuthToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
