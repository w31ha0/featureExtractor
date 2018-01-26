.class public Lorg/apache/http/impl/auth/NegotiateScheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "NegotiateScheme.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NegotiateScheme$State;
    }
.end annotation


# static fields
.field private static final KERBEROS_OID:Ljava/lang/String; = "1.2.840.113554.1.2.2"

.field private static final SPNEGO_OID:Ljava/lang/String; = "1.3.6.1.5.5.2"


# instance fields
.field private gssContext:Lorg/ietf/jgss/GSSContext;

.field private final log:Lorg/apache/commons/logging/Log;

.field private negotiationOid:Lorg/ietf/jgss/Oid;

.field private final spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

.field private state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

.field private final stripPort:Z

.field private token:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .locals 1
    .param p1, "spengoGenerator"    # Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;-><init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .locals 2
    .param p1, "spengoGenerator"    # Lorg/apache/http/impl/auth/SpnegoTokenGenerator;
    .param p2, "stripPort"    # Z

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    .line 74
    iput-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    .line 82
    iput-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    .line 90
    sget-object v0, Lorg/apache/http/impl/auth/NegotiateScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 91
    iput-object p1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    .line 92
    iput-boolean p2, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->stripPort:Z

    .line 93
    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/NegotiateScheme;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 14
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 152
    if-nez p2, :cond_0

    .line 153
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "HTTP request may not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 155
    :cond_0
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    sget-object v11, Lorg/apache/http/impl/auth/NegotiateScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    if-eq v10, v11, :cond_1

    .line 156
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Negotiation authentication process has not been initiated"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 160
    :cond_1
    const/4 v5, 0x0

    .line 161
    .local v5, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NegotiateScheme;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 162
    const-string v5, "http.proxy_host"

    .line 166
    :goto_0
    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpHost;

    .line 167
    .local v4, "host":Lorg/apache/http/HttpHost;
    if-nez v4, :cond_4

    .line 168
    new-instance v10, Lorg/apache/http/auth/AuthenticationException;

    const-string v11, "Authentication host is not set in the execution context"

    invoke-direct {v10, v11}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 253
    .end local v4    # "host":Lorg/apache/http/HttpHost;
    :catch_0
    move-exception v3

    .line 254
    .local v3, "gsse":Lorg/ietf/jgss/GSSException;
    sget-object v10, Lorg/apache/http/impl/auth/NegotiateScheme$State;->FAILED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 255
    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_2

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_d

    .line 257
    :cond_2
    new-instance v10, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 164
    .end local v3    # "gsse":Lorg/ietf/jgss/GSSException;
    :cond_3
    :try_start_1
    const-string v5, "http.target_host"

    goto :goto_0

    .line 172
    .restart local v4    # "host":Lorg/apache/http/HttpHost;
    :cond_4
    iget-boolean v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->stripPort:Z

    if-nez v10, :cond_8

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v10

    if-lez v10, :cond_8

    .line 173
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "authServer":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 179
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 196
    :cond_5
    new-instance v10, Lorg/ietf/jgss/Oid;

    const-string v11, "1.3.6.1.5.5.2"

    invoke-direct {v10, v11}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;
    :try_end_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    const/4 v9, 0x0

    .line 200
    .local v9, "tryKerberos":Z
    :try_start_2
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NegotiateScheme;->getManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v6

    .line 201
    .local v6, "manager":Lorg/ietf/jgss/GSSManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v6, v10, v11}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v7

    .line 202
    .local v7, "serverName":Lorg/ietf/jgss/GSSName;
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    invoke-interface {v7, v10}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    .line 205
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 206
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 218
    .end local v6    # "manager":Lorg/ietf/jgss/GSSManager;
    .end local v7    # "serverName":Lorg/ietf/jgss/GSSName;
    :goto_2
    if-eqz v9, :cond_6

    .line 220
    :try_start_3
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    const-string v11, "Using Kerberos MECH 1.2.840.113554.1.2.2"

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 221
    new-instance v10, Lorg/ietf/jgss/Oid;

    const-string v11, "1.2.840.113554.1.2.2"

    invoke-direct {v10, v11}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    .line 222
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NegotiateScheme;->getManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v6

    .line 223
    .restart local v6    # "manager":Lorg/ietf/jgss/GSSManager;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HTTP@"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v6, v10, v11}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v7

    .line 224
    .restart local v7    # "serverName":Lorg/ietf/jgss/GSSName;
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    invoke-interface {v7, v10}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    .line 227
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    .line 228
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    .line 230
    .end local v6    # "manager":Lorg/ietf/jgss/GSSManager;
    .end local v7    # "serverName":Lorg/ietf/jgss/GSSName;
    :cond_6
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    if-nez v10, :cond_7

    .line 231
    const/4 v10, 0x0

    new-array v10, v10, [B

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    .line 233
    :cond_7
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->gssContext:Lorg/ietf/jgss/GSSContext;

    iget-object v11, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    const/4 v12, 0x0

    iget-object v13, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    array-length v13, v13

    invoke-interface {v10, v11, v12, v13}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object v10

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    .line 234
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    if-nez v10, :cond_a

    .line 235
    sget-object v10, Lorg/apache/http/impl/auth/NegotiateScheme$State;->FAILED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 236
    new-instance v10, Lorg/apache/http/auth/AuthenticationException;

    const-string v11, "GSS security context initialization failed"

    invoke-direct {v10, v11}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_3
    .catch Lorg/ietf/jgss/GSSException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 266
    .end local v1    # "authServer":Ljava/lang/String;
    .end local v4    # "host":Lorg/apache/http/HttpHost;
    .end local v9    # "tryKerberos":Z
    :catch_1
    move-exception v2

    .line 267
    .local v2, "ex":Ljava/io/IOException;
    sget-object v10, Lorg/apache/http/impl/auth/NegotiateScheme$State;->FAILED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 268
    new-instance v10, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 175
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v4    # "host":Lorg/apache/http/HttpHost;
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "authServer":Ljava/lang/String;
    goto/16 :goto_1

    .line 207
    .restart local v9    # "tryKerberos":Z
    :catch_2
    move-exception v2

    .line 210
    .local v2, "ex":Lorg/ietf/jgss/GSSException;
    invoke-virtual {v2}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 211
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    const-string v11, "GSSException BAD_MECH, retry with Kerberos MECH"

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 212
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 214
    :cond_9
    throw v2

    .line 243
    .end local v2    # "ex":Lorg/ietf/jgss/GSSException;
    :cond_a
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->negotiationOid:Lorg/ietf/jgss/Oid;

    invoke-virtual {v10}, Lorg/ietf/jgss/Oid;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "1.2.840.113554.1.2.2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 244
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->spengoGenerator:Lorg/apache/http/impl/auth/SpnegoTokenGenerator;

    iget-object v11, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    invoke-interface {v10, v11}, Lorg/apache/http/impl/auth/SpnegoTokenGenerator;->generateSpnegoDERObject([B)[B

    move-result-object v10

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    .line 247
    :cond_b
    sget-object v10, Lorg/apache/http/impl/auth/NegotiateScheme$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 248
    new-instance v8, Ljava/lang/String;

    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 249
    .local v8, "tokenstr":Ljava/lang/String;
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 250
    iget-object v10, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending response \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' back to the auth server"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 252
    :cond_c
    new-instance v10, Lorg/apache/http/message/BasicHeader;

    const-string v11, "Authorization"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Negotiate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/ietf/jgss/GSSException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    return-object v10

    .line 258
    .end local v1    # "authServer":Ljava/lang/String;
    .end local v4    # "host":Lorg/apache/http/HttpHost;
    .end local v8    # "tokenstr":Ljava/lang/String;
    .end local v9    # "tryKerberos":Z
    .restart local v3    # "gsse":Lorg/ietf/jgss/GSSException;
    :cond_d
    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0xd

    if-ne v10, v11, :cond_e

    .line 259
    new-instance v10, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 260
    :cond_e
    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0xa

    if-eq v10, v11, :cond_f

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0x13

    if-eq v10, v11, :cond_f

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_10

    .line 263
    :cond_f
    new-instance v10, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 265
    :cond_10
    new-instance v10, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected getManager()Lorg/ietf/jgss/GSSManager;
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    if-nez p1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "Negotiate"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NegotiateScheme$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NegotiateScheme$State;->FAILED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "challenge":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received challenge \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from the auth server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    sget-object v2, Lorg/apache/http/impl/auth/NegotiateScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    if-ne v1, v2, :cond_1

    .line 319
    new-instance v1, Lorg/apache/commons/codec/binary/Base64;

    invoke-direct {v1}, Lorg/apache/commons/codec/binary/Base64;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->token:[B

    .line 320
    sget-object v1, Lorg/apache/http/impl/auth/NegotiateScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Authentication already attempted"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 323
    sget-object v1, Lorg/apache/http/impl/auth/NegotiateScheme$State;->FAILED:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/NegotiateScheme;->state:Lorg/apache/http/impl/auth/NegotiateScheme$State;

    goto :goto_0
.end method
