.class public Lcom/netflix/msl/client/SimpleModifiableRsaStore;
.super Ljava/lang/Object;
.source "SimpleModifiableRsaStore.java"

# interfaces
.implements Lcom/netflix/msl/client/ModifiableRsaStore;


# instance fields
.field private final factory:Ljava/security/KeyFactory;

.field private final keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final privateKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->keys:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->privateKeys:Ljava/util/Map;

    .line 31
    :try_start_0
    const-string/jumbo v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->factory:Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to get RSA key factory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addPublicKey(Ljava/lang/String;[B)V
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->factory:Ljava/security/KeyFactory;

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    instance-of v1, v0, Ljava/security/interfaces/RSAPublicKey;

    if-nez v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Public key is not an instance of RSAPublicKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Public key can not be parsed"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method


# virtual methods
.method public addPrivateKey(Ljava/lang/String;Ljava/security/PrivateKey;)V
    .locals 2

    .prologue
    .line 112
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key is not an instance of RSAPrivateKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public addPublicKey(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x1000

    invoke-static {p2, v0}, Lcom/netflix/msl/util/IoUtil;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->addPublicKey(Ljava/lang/String;[B)V

    .line 77
    return-void
.end method

.method public addPublicKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->addPublicKey(Ljava/lang/String;[B)V

    .line 63
    return-void
.end method

.method public getIdentities()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v1, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 43
    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->privateKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/netflix/msl/client/SimpleModifiableRsaStore;->keys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    return-object v0
.end method
