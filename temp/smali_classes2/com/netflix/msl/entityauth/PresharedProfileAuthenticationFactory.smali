.class public Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;
.super Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;
.source "PresharedProfileAuthenticationFactory.java"


# instance fields
.field private final authutils:Lcom/netflix/msl/util/AuthenticationUtils;

.field private final store:Lcom/netflix/msl/entityauth/PresharedKeyStore;


# direct methods
.method public constructor <init>(Lcom/netflix/msl/entityauth/PresharedKeyStore;Lcom/netflix/msl/util/AuthenticationUtils;)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;->PSK_PROFILE:Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    invoke-direct {p0, v0}, Lcom/netflix/msl/entityauth/EntityAuthenticationFactory;-><init>(Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)V

    .line 43
    iput-object p1, p0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    .line 44
    iput-object p2, p0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    .line 45
    return-void
.end method


# virtual methods
.method public createData(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/io/MslObject;)Lcom/netflix/msl/entityauth/EntityAuthenticationData;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;

    invoke-direct {v0, p2}, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;-><init>(Lcom/netflix/msl/io/MslObject;)V

    return-object v0
.end method

.method public getCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/crypto/ICryptoContext;
    .locals 6

    .prologue
    .line 61
    instance-of v0, p2, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;

    if-nez v0, :cond_0

    .line 62
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

    .line 63
    :cond_0
    check-cast p2, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;

    .line 66
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;->getPresharedKeysId()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-interface {v1, v0}, Lcom/netflix/msl/util/AuthenticationUtils;->isEntityRevoked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "psk profile "

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

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->authutils:Lcom/netflix/msl/util/AuthenticationUtils;

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netflix/msl/util/AuthenticationUtils;->isSchemePermitted(Ljava/lang/String;Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 72
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

    invoke-virtual {p0}, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->getScheme()Lcom/netflix/msl/entityauth/EntityAuthenticationScheme;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslEntityAuthException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/netflix/msl/MslEntityAuthException;->setEntityAuthenticationData(Lcom/netflix/msl/entityauth/EntityAuthenticationData;)Lcom/netflix/msl/MslEntityAuthException;

    move-result-object v0

    throw v0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationFactory;->store:Lcom/netflix/msl/entityauth/PresharedKeyStore;

    invoke-interface {v1, v0}, Lcom/netflix/msl/entityauth/PresharedKeyStore;->getKeys(Ljava/lang/String;)Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;

    move-result-object v1

    .line 76
    if-nez v1, :cond_3

    .line 77
    new-instance v1, Lcom/netflix/msl/MslEntityAuthException;

    sget-object v2, Lcom/netflix/msl/MslError;->ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "psk profile "

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

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/netflix/msl/entityauth/PresharedProfileAuthenticationData;->getIdentity()Ljava/lang/String;

    move-result-object v2

    .line 81
    new-instance v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;

    iget-object v3, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->encryptionKey:Ljavax/crypto/SecretKey;

    iget-object v4, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->hmacKey:Ljavax/crypto/SecretKey;

    iget-object v5, v1, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->wrappingKey:Ljavax/crypto/SecretKey;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method
