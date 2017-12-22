.class public Lcom/netflix/msl/util/MutablePresharedKeyStore;
.super Ljava/lang/Object;
.source "MutablePresharedKeyStore.java"

# interfaces
.implements Lcom/netflix/msl/entityauth/PresharedKeyStore;


# instance fields
.field private final presharedKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/msl/util/MutablePresharedKeyStore;->presharedKeys:Ljava/util/Map;

    return-void
.end method

.method public static createWithSingleSet(Ljava/lang/String;[B[B)Lcom/netflix/msl/entityauth/PresharedKeyStore;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/netflix/msl/util/MutablePresharedKeyStore;

    invoke-direct {v0}, Lcom/netflix/msl/util/MutablePresharedKeyStore;-><init>()V

    .line 44
    invoke-virtual {v0, p0, p1, p2}, Lcom/netflix/msl/util/MutablePresharedKeyStore;->register(Ljava/lang/String;[B[B)V

    .line 45
    return-object v0
.end method

.method public static createWithSingleSet(Ljava/lang/String;[B[B[B)Lcom/netflix/msl/entityauth/PresharedKeyStore;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/netflix/msl/util/MutablePresharedKeyStore;

    invoke-direct {v0}, Lcom/netflix/msl/util/MutablePresharedKeyStore;-><init>()V

    .line 50
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/netflix/msl/util/MutablePresharedKeyStore;->register(Ljava/lang/String;[B[B[B)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public getKeys(Ljava/lang/String;)Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;
    .locals 2

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "NULL identity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netflix/msl/util/MutablePresharedKeyStore;->presharedKeys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;

    return-object v0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-static {p2}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    invoke-static {p3}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/msl/util/MutablePresharedKeyStore;->register(Ljava/lang/String;[B[B)V

    .line 58
    return-void
.end method

.method public register(Ljava/lang/String;[B[B)V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/util/CryptoUtil;->deriveWrappingKey([B[B)[B

    move-result-object v0

    .line 63
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netflix/msl/util/MutablePresharedKeyStore;->register(Ljava/lang/String;[B[B[B)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    :goto_0
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unable to derive wrapping key"

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 64
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;[B[B[B)V
    .locals 5

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HmacSHA256"

    invoke-direct {v2, p3, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, p4, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;-><init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V

    .line 76
    iget-object v1, p0, Lcom/netflix/msl/util/MutablePresharedKeyStore;->presharedKeys:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MutablePresharedKeyStore(presharedKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/msl/util/MutablePresharedKeyStore;->presharedKeys:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
