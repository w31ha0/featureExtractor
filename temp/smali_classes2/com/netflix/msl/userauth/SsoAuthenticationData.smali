.class public Lcom/netflix/msl/userauth/SsoAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "SsoAuthenticationData.java"

# interfaces
.implements Lcom/netflix/msl/userauth/UserAuthenticationDataIdDecorator;


# static fields
.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_MECHANISM:Ljava/lang/String; = "mechanism"

.field private static final KEY_NETFLIXID:Ljava/lang/String; = "netflixid"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SECURENETFLIXID:Ljava/lang/String; = "securenetflixid"

.field private static final KEY_TOKEN:Ljava/lang/String; = "token"


# instance fields
.field private final email:Ljava/lang/String;

.field private final mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

.field private final netflixId:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final secureNetflixId:Ljava/lang/String;

.field private final token:[B


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 5

    .prologue
    .line 166
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 170
    :try_start_0
    const-string/jumbo v0, "mechanism"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->valueOf(Ljava/lang/String;)Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    .line 177
    const-string/jumbo v0, "email"

    invoke-virtual {p1, v0}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 178
    const-string/jumbo v1, "password"

    invoke-virtual {p1, v1}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v1

    .line 179
    const-string/jumbo v2, "netflixid"

    invoke-virtual {p1, v2}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v2

    .line 180
    const-string/jumbo v3, "securenetflixid"

    invoke-virtual {p1, v3}, Lcom/netflix/msl/io/MslObject;->has(Ljava/lang/String;)Z

    move-result v3

    .line 181
    if-ne v0, v1, :cond_0

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslEncodingException;

    sget-object v1, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SSO authdata "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Lcom/netflix/msl/MslEncodingException;

    sget-object v2, Lcom/netflix/msl/MslError;->MSL_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SSO authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslEncodingException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    :try_start_2
    new-instance v1, Lcom/netflix/msl/MslUserAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNIDENTIFIED_USERAUTH_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SSO authdata "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 189
    :cond_1
    const-string/jumbo v0, "email"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, "password"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, "netflixid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    .line 192
    const-string/jumbo v0, "securenetflixid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;
    :try_end_2
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 112
    iput-object p1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 113
    iput-object p2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    .line 114
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;[BLcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 130
    iput-object p1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 131
    iput-object p2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    .line 132
    iget-object v0, p3, Lcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    .line 133
    iget-object v0, p3, Lcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;[BLcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->SSO:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 149
    iput-object p1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    .line 150
    iput-object p2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    .line 151
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    .line 152
    iput-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    .line 153
    iget-object v0, p3, Lcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;->netflixId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    .line 154
    iget-object v0, p3, Lcom/netflix/msl/userauth/SsoAuthenticationData$NetflixIdCookies;->secureNetflixId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 155
    return-void
.end method


# virtual methods
.method public decorate(Lcom/netflix/spectator/api/Id;)Lcom/netflix/spectator/api/Id;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/SsoAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/SsoAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/SsoAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/SsoAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string/jumbo v2, "mechanism"

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/SsoAuthenticationData;->getMechanism()Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/netflix/spectator/api/Id;->withTag(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/spectator/api/Id;

    move-result-object v2

    const-string/jumbo v3, "hasNetflixId"

    .line 264
    invoke-interface {v2, v3, v0}, Lcom/netflix/spectator/api/Id;->withTag(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/spectator/api/Id;

    move-result-object v0

    const-string/jumbo v2, "hasSecureNetflixId"

    .line 265
    invoke-interface {v0, v2, v1}, Lcom/netflix/spectator/api/Id;->withTag(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/spectator/api/Id;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 260
    goto :goto_0

    :cond_1
    move v1, v2

    .line 261
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    if-ne p1, p0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 275
    :cond_2
    check-cast p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;

    .line 276
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    invoke-virtual {v2, v3}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    .line 277
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    .line 279
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    .line 280
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 246
    const-string/jumbo v1, "mechanism"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    invoke-virtual {v2}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 247
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 248
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 249
    const-string/jumbo v1, "email"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 250
    const-string/jumbo v1, "password"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 255
    :cond_0
    :goto_0
    return-object v0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    const-string/jumbo v1, "netflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 253
    const-string/jumbo v1, "securenetflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMechanism()Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    return-object v0
.end method

.method public getNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()[B
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->email:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 292
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 306
    :goto_0
    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->mechanism:Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;

    invoke-virtual {v5}, Lcom/netflix/msl/userauth/SsoAuthenticationData$Mechanism;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    iget-object v5, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->token:[B

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    xor-int/2addr v4, v5

    xor-int/2addr v3, v4

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 298
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 299
    iget-object v1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v3, v0

    move v6, v2

    move v2, v0

    move v0, v1

    move v1, v6

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    .line 304
    goto :goto_0
.end method
