.class Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HMACMD5"
.end annotation


# instance fields
.field protected ipad:[B

.field protected md5:Ljava/security/MessageDigest;

.field protected opad:[B


# direct methods
.method constructor <init>([B)V
    .locals 6
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/NTLMEngineException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x40

    .line 1237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1248
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    .line 1249
    new-array v3, v5, [B

    iput-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    .line 1251
    array-length v2, p1

    .line 1252
    .local v2, "keyLength":I
    if-le v2, v5, :cond_0

    .line 1254
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1255
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 1256
    array-length v2, p1

    .line 1258
    :cond_0
    const/4 v1, 0x0

    .line 1259
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1260
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    aget-byte v4, p1, v1

    xor-int/lit8 v4, v4, 0x36

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1261
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    aget-byte v4, p1, v1

    xor-int/lit8 v4, v4, 0x5c

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 1262
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1240
    .end local v1    # "i":I
    .end local v2    # "keyLength":I
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting md5 message digest implementation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1264
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "keyLength":I
    :cond_1
    :goto_1
    if-ge v1, v5, :cond_2

    .line 1265
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    const/16 v4, 0x36

    aput-byte v4, v3, v1

    .line 1266
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    const/16 v4, 0x5c

    aput-byte v4, v3, v1

    .line 1267
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1271
    :cond_2
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 1272
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->ipad:[B

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 1274
    return-void
.end method


# virtual methods
.method getOutput()[B
    .locals 3

    .prologue
    .line 1278
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1279
    .local v0, "digest":[B
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->opad:[B

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1280
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method update([B)V
    .locals 1
    .param p1, "input"    # [B

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1286
    return-void
.end method

.method update([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 1290
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$HMACMD5;->md5:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1291
    return-void
.end method
