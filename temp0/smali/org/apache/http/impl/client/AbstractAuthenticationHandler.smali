.class public abstract Lorg/apache/http/impl/client/AbstractAuthenticationHandler;
.super Ljava/lang/Object;
.source "AbstractAuthenticationHandler.java"

# interfaces
.implements Lorg/apache/http/client/AuthenticationHandler;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final DEFAULT_SCHEME_PRIORITY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "negotiate"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "NTLM"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Digest"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Basic"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    .line 75
    return-void
.end method


# virtual methods
.method protected getAuthPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    return-object v0
.end method

.method protected getAuthPreferences(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/List;
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected parseChallenges([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 12
    .param p1, "headers"    # [Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v7, Ljava/util/HashMap;

    array-length v10, p1

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/http/Header;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v4, v0, v5

    .line 84
    .local v4, "header":Lorg/apache/http/Header;
    instance-of v10, v4, Lorg/apache/http/FormattedHeader;

    if-eqz v10, :cond_0

    move-object v10, v4

    .line 85
    check-cast v10, Lorg/apache/http/FormattedHeader;

    invoke-interface {v10}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v2

    .local v2, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    move-object v10, v4

    .line 86
    check-cast v10, Lorg/apache/http/FormattedHeader;

    invoke-interface {v10}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v8

    .line 96
    .local v8, "pos":I
    :goto_1
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    if-ge v8, v10, :cond_2

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 97
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v8    # "pos":I
    :cond_0
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "s":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 90
    new-instance v10, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v11, "Header value is null"

    invoke-direct {v10, v11}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 92
    :cond_1
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v2, v10}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 93
    .restart local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {v2, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 94
    const/4 v8, 0x0

    .restart local v8    # "pos":I
    goto :goto_1

    .line 99
    .end local v9    # "s":Ljava/lang/String;
    :cond_2
    move v1, v8

    .line 100
    .local v1, "beginIndex":I
    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v10

    if-ge v8, v10, :cond_3

    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_3

    .line 101
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 103
    :cond_3
    move v3, v8

    .line 104
    .local v3, "endIndex":I
    invoke-virtual {v2, v1, v3}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 105
    .restart local v9    # "s":Ljava/lang/String;
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "beginIndex":I
    .end local v2    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v3    # "endIndex":I
    .end local v4    # "header":Lorg/apache/http/Header;
    .end local v8    # "pos":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public selectScheme(Ljava/util/Map;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 10
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/Header;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")",
            "Lorg/apache/http/auth/AuthScheme;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "challenges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/http/Header;>;"
    const-string v7, "http.authscheme-registry"

    invoke-interface {p3, v7}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/http/auth/AuthSchemeRegistry;

    .line 141
    .local v6, "registry":Lorg/apache/http/auth/AuthSchemeRegistry;
    if-nez v6, :cond_0

    .line 142
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "AuthScheme registry not set in HTTP context"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 145
    :cond_0
    invoke-virtual {p0, p2, p3}, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->getAuthPreferences(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "authPrefs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 147
    sget-object v0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->DEFAULT_SCHEME_PRIORITY:Ljava/util/List;

    .line 150
    :cond_1
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 151
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authentication schemes in the order of preference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 155
    :cond_2
    const/4 v1, 0x0

    .line 156
    .local v1, "authScheme":Lorg/apache/http/auth/AuthScheme;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 157
    .local v5, "id":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/Header;

    .line 159
    .local v2, "challenge":Lorg/apache/http/Header;
    if-eqz v2, :cond_6

    .line 160
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authentication scheme selected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 164
    :cond_4
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/auth/AuthSchemeRegistry;->getAuthScheme(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 179
    .end local v2    # "challenge":Lorg/apache/http/Header;
    .end local v5    # "id":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_7

    .line 181
    new-instance v7, Lorg/apache/http/auth/AuthenticationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to respond to any of these challenges: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 166
    .restart local v2    # "challenge":Lorg/apache/http/Header;
    .restart local v5    # "id":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/IllegalStateException;
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 168
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Authentication scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 173
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v7}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 174
    iget-object v7, p0, Lorg/apache/http/impl/client/AbstractAuthenticationHandler;->log:Lorg/apache/commons/logging/Log;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Challenge for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " authentication scheme not available"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 185
    .end local v2    # "challenge":Lorg/apache/http/Header;
    .end local v5    # "id":Ljava/lang/String;
    :cond_7
    return-object v1
.end method
