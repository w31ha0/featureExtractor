.class public Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "UserIdTokenAuthenticationData.java"


# static fields
.field private static final KEY_MASTER_TOKEN:Ljava/lang/String; = "mastertoken"

.field private static final KEY_USER_ID_TOKEN:Ljava/lang/String; = "useridtoken"


# instance fields
.field private final masterToken:Lcom/netflix/msl/tokens/MasterToken;

.field private final userIdToken:Lcom/netflix/msl/tokens/UserIdToken;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 62
    invoke-virtual {p2, p1}, Lcom/netflix/msl/tokens/UserIdToken;->isBoundTo(Lcom/netflix/msl/tokens/MasterToken;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v1, "User ID token must be bound to master token."

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    .line 65
    iput-object p2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 79
    sget-object v0, Lcom/netflix/msl/userauth/UserAuthenticationScheme;->USER_ID_TOKEN:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 82
    invoke-virtual {p1}, Lcom/netflix/msl/util/MslContext;->getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;

    move-result-object v0

    .line 85
    :try_start_0
    const-string/jumbo v1, "mastertoken"

    invoke-virtual {p2, v1, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "useridtoken"

    invoke-virtual {p2, v2, v0}, Lcom/netflix/msl/io/MslObject;->getMslObject(Ljava/lang/String;Lcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/io/MslObject;
    :try_end_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 94
    :try_start_1
    new-instance v2, Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v2, p1, v1}, Lcom/netflix/msl/tokens/MasterToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)V

    iput-object v2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;
    :try_end_1
    .catch Lcom/netflix/msl/MslException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :try_start_2
    new-instance v1, Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-direct {v1, p1, v0, v2}, Lcom/netflix/msl/tokens/UserIdToken;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/tokens/MasterToken;)V

    iput-object v1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;
    :try_end_2
    .catch Lcom/netflix/msl/MslException; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 95
    :catch_1
    move-exception v0

    .line 96
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_2
    move-exception v0

    .line 101
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user ID token authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p1, p0, :cond_0

    .line 138
    :goto_0
    return v1

    .line 136
    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 137
    check-cast v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    .line 138
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v4, v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v3, v4}, Lcom/netflix/msl/tokens/MasterToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    iget-object v0, v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v3, v0}, Lcom/netflix/msl/tokens/UserIdToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 125
    const-string/jumbo v1, "mastertoken"

    iget-object v2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 126
    const-string/jumbo v1, "useridtoken"

    iget-object v2, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 127
    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslEncoderFactory;->encodeObject(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    return-object v0
.end method

.method public getMasterToken()Lcom/netflix/msl/tokens/MasterToken;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    return-object v0
.end method

.method public getUserIdToken()Lcom/netflix/msl/tokens/UserIdToken;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/UserIdToken;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
