.class public final Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;
.super Lcom/netflix/msl/userauth/UserAuthenticationData;
.source "NetflixIdAuthenticationData.java"

# interfaces
.implements Lcom/netflix/msl/userauth/UserAuthenticationDataIdDecorator;


# static fields
.field private static final KEY_NETFLIXID:Ljava/lang/String; = "netflixid"

.field private static final KEY_SECURENETFLIXID:Ljava/lang/String; = "securenetflixid"


# instance fields
.field private final netflixId:Ljava/lang/String;

.field private final secureNetflixId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/io/MslObject;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0, v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;-><init>(Lcom/netflix/msl/io/MslObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/io/MslObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 83
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 84
    const-string/jumbo v0, "netflixid"

    invoke-virtual {p1, v0, p2}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "securenetflixid"

    invoke-virtual {p1, v0, p3}, Lcom/netflix/msl/io/MslObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->NETFLIXID_COOKIES_BLANK:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NetflixId authdata missing in payload and no fallback provided "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    new-instance v0, Lcom/netflix/msl/MslUserAuthException;

    sget-object v1, Lcom/netflix/msl/NetflixMslError;->NETFLIXID_COOKIES_BLANK:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecureNetflixId authdata missing in payload and no fallback provided "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslUserAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/netflix/msl/MslUserAuthException;->setUserAuthenticationData(Lcom/netflix/msl/userauth/UserAuthenticationData;)Lcom/netflix/msl/MslUserAuthException;

    move-result-object v0

    throw v0

    .line 98
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/netflix/msl/userauth/NetflixUserAuthenticationScheme;->NETFLIXID:Lcom/netflix/msl/userauth/UserAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/userauth/UserAuthenticationData;-><init>(Lcom/netflix/msl/userauth/UserAuthenticationScheme;)V

    .line 57
    iput-object p1, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    instance-of v0, p1, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    return v0
.end method

.method public decorate(Lcom/netflix/spectator/api/Id;)Lcom/netflix/spectator/api/Id;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

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

    .line 114
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 116
    const-string/jumbo v2, "hasNetflixId"

    invoke-interface {p1, v2, v0}, Lcom/netflix/spectator/api/Id;->withTag(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/spectator/api/Id;

    move-result-object v0

    const-string/jumbo v2, "hasSecureNetflixId"

    .line 117
    invoke-interface {v0, v2, v1}, Lcom/netflix/spectator/api/Id;->withTag(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/spectator/api/Id;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;

    invoke-virtual {v0, p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/netflix/msl/userauth/UserAuthenticationData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_5

    if-eqz v4, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_6
    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_8

    if-eqz v0, :cond_9

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public getAuthData(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)Lcom/netflix/msl/io/MslObject;
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p1}, Lcom/netflix/msl/io/MslEncoderFactory;->createObject()Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "netflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 107
    iget-object v1, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "securenetflixid"

    iget-object v2, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/msl/io/MslObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/msl/io/MslObject;

    .line 108
    :cond_0
    return-object v0
.end method

.method public getNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->netflixId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureNetflixId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->secureNetflixId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/16 v1, 0x2b

    .line 34
    invoke-super {p0}, Lcom/netflix/msl/userauth/UserAuthenticationData;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3b

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetflixIdAuthenticationData(netflixId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getNetflixId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", secureNetflixId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/userauth/NetflixIdAuthenticationData;->getSecureNetflixId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
