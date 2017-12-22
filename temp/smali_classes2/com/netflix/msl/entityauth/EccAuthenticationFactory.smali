.class public Lcom/netflix/msl/entityauth/EccAuthenticationFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "EccAuthenticationFactory.java"


# instance fields
.field final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final keyPairId:Ljava/lang/String;

.field private final store:Lcom/netflix/msl/entityauth/EccStore;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/entityauth/EccStore;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;-><init>(Ljava/lang/String;Lcom/netflix/msl/entityauth/EccStore;Lcom/netflix/msl/util/AuthenticationUtils;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/msl/entityauth/EccStore;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->ECC:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 61
    iput-object p1, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->keyPairId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/EccStore;

    .line 63
    iput-object p3, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 64
    return-void
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/msl/entityauth/EccAuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/EccAuthenticationData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 5

    .prologue
    .line 80
    instance-of v0, p2, Lcom/netflix/msl/entityauth/EccAuthenticationData;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Incorrect authentication data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    check-cast p2, Lcom/netflix/msl/entityauth/EccAuthenticationData;

    .line 85
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EccAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-interface {v1, v0}, Lcom/netflix/msl/util/AuthenticationUtils;->isEntityRevoked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ecc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Authentication Scheme for Device Type Not Supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 94
    :cond_2
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/EccAuthenticationData;->getPublicKeyId()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/EccStore;

    invoke-interface {v2, v1}, Lcom/netflix/msl/entityauth/EccStore;->getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/EccStore;

    invoke-interface {v3, v1}, Lcom/netflix/msl/entityauth/EccStore;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->keyPairId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v3, :cond_3

    .line 100
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ECC_PRIVATEKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 103
    :cond_3
    iget-object v4, p0, Lcom/netflix/msl/entityauth/EccAuthenticationFactory;->keyPairId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 104
    new-instance v0, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ECC_PUBLICKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v2, v1}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 107
    :cond_4
    new-instance v1, Lcom/netflix/msl/crypto/EccCryptoContext;

    sget-object v4, Lcom/netflix/msl/crypto/EccCryptoContext$Mode;->SIGN_VERIFY:Lcom/netflix/msl/crypto/EccCryptoContext$Mode;

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/netflix/msl/crypto/EccCryptoContext;-><init>(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lcom/netflix/msl/crypto/EccCryptoContext$Mode;)V

    return-object v1
.end method
