.class public Lcom/netflix/msl/crypto/SymmetricCryptoContext;
.super Ljava/lang/Object;
.source "SymmetricCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# static fields
.field private static final AESKW_AIV:[B

.field private static final AESKW_ALGO:Ljava/lang/String; = "AES"

.field private static final AESKW_BLOCK_SIZE:I = 0x8

.field private static final AESKW_TRANSFORM:Ljava/lang/String; = "AES/ECB/NoPadding"

.field private static final AES_ALGO:Ljava/lang/String; = "AES"

.field private static final AES_IV_SIZE:I = 0x10

.field private static final AES_TRANSFORM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HMAC_SHA256_ALGO:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field protected final ctx:Lcom/netflix/msl/util/MslContext;

.field protected final encryptionKey:Ljavax/crypto/SecretKey;

.field protected final id:Ljava/lang/String;

.field protected final signatureKey:Ljavax/crypto/SecretKey;

.field protected final wrappingKey:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    return-void

    :array_0
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    if-eqz p4, :cond_1

    .line 140
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    invoke-interface {p4}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AESCmac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an HmacSHA256 or AESCmac key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Encryption key must be an AES key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    iput-object p1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 149
    iput-object p2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    .line 150
    iput-object p3, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 151
    iput-object p4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    .line 152
    iput-object p5, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    .line 153
    return-void
.end method

.method private static lsb(I[B)[B
    .locals 4

    .prologue
    .line 95
    array-length v0, p1

    sub-int v1, v0, p0

    .line 96
    new-array v2, p0, [B

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 98
    add-int v3, v1, v0

    aget-byte v3, p1, v3

    aput-byte v3, v2, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object v2
.end method

.method private static msb(I[B)[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, p0, [B

    .line 84
    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-object v0
.end method

.method private static xor([BJ)V
    .locals 7

    .prologue
    .line 110
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x38

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 111
    const/4 v0, 0x1

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x30

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 112
    const/4 v0, 0x2

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x28

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 113
    const/4 v0, 0x3

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x20

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 114
    const/4 v0, 0x4

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x18

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 115
    const/4 v0, 0x5

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x10

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 116
    const/4 v0, 0x6

    aget-byte v1, p0, v0

    int-to-long v2, v1

    const/16 v1, 0x8

    ushr-long v4, p1, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 117
    const/4 v0, 0x7

    aget-byte v1, p0, v0

    int-to-long v2, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 118
    return-void
.end method


# virtual methods
.method public decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 5

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {v1, v0, v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 212
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INSUFFICIENT_CIPHERTEXT:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 216
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getCiphertext()[B

    move-result-object v0

    .line 217
    array-length v2, v0

    if-nez v2, :cond_2

    .line 218
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 223
    :goto_0
    return-object v0

    .line 219
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getIv()[B

    move-result-object v1

    .line 220
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 221
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 222
    const/4 v1, 0x2

    iget-object v4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 223
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_8

    move-result-object v0

    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    .line 227
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 228
    :catch_2
    move-exception v0

    .line 229
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 230
    :catch_3
    move-exception v0

    .line 231
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 232
    :catch_4
    move-exception v0

    .line 233
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 234
    :catch_5
    move-exception v0

    .line 235
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 236
    :catch_6
    move-exception v0

    .line 237
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :catch_7
    move-exception v0

    .line 239
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 240
    :catch_8
    move-exception v0

    .line 241
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v0

    .line 165
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 170
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 171
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 172
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 173
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->encryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 174
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 180
    :goto_0
    new-instance v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v3, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->id:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    .line 181
    invoke-virtual {v2, p2, p3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0

    .line 176
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_6

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 184
    :catch_1
    move-exception v0

    .line 185
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :catch_2
    move-exception v0

    .line 187
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :catch_3
    move-exception v0

    .line 189
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 190
    :catch_4
    move-exception v0

    .line 191
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is specified"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 192
    :catch_5
    move-exception v0

    .line 193
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 194
    :catch_6
    move-exception v0

    .line 195
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 358
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "HmacSHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 361
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 375
    :goto_0
    new-instance v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v1, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v1, p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getBytes(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AESCmac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 364
    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 365
    new-instance v2, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 366
    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 367
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {v2, p1, v0, v1}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    .line 368
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    .line 369
    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid MAC algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 371
    :cond_2
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unsupported algorithm."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/netflix/msl/io/MslEncoderException; {:try_start_1 .. :try_end_1} :catch_2

    .line 378
    :catch_1
    move-exception v0

    .line 379
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 380
    :catch_2
    move-exception v0

    .line 381
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 10

    .prologue
    .line 303
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 306
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    :try_start_0
    const-string/jumbo v0, "AES/ECB/NoPadding"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 310
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 312
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    .line 313
    array-length v0, v2

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 314
    array-length v0, p1

    add-int/lit8 v0, v0, -0x8

    div-int/lit8 v1, v0, 0x8

    .line 317
    const/4 v0, 0x5

    move v3, v0

    move-object v0, v2

    :goto_0
    if-ltz v3, :cond_3

    move-object v2, v0

    move v0, v1

    .line 318
    :goto_1
    const/4 v6, 0x1

    if-lt v0, v6, :cond_2

    .line 319
    mul-int v6, v1, v3

    add-int/2addr v6, v0

    int-to-long v6, v6

    .line 320
    invoke-static {v2, v6, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->xor([BJ)V

    .line 321
    add-int/lit8 v6, v0, -0x1

    mul-int/lit8 v6, v6, 0x8

    mul-int/lit8 v7, v0, 0x8

    invoke-static {v5, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 322
    array-length v7, v2

    array-length v8, v6

    add-int/2addr v7, v8

    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 323
    const/4 v8, 0x0

    array-length v2, v2

    array-length v9, v6

    invoke-static {v6, v8, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    invoke-virtual {v4, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 325
    const/16 v2, 0x8

    invoke-static {v2, v6}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->msb(I[B)[B

    move-result-object v2

    .line 326
    const/16 v7, 0x8

    invoke-static {v7, v6}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->lsb(I[B)[B

    move-result-object v6

    .line 327
    const/4 v7, 0x0

    add-int/lit8 v8, v0, -0x1

    mul-int/lit8 v8, v8, 0x8

    const/16 v9, 0x8

    invoke-static {v6, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 317
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move-object v0, v2

    goto :goto_0

    .line 332
    :cond_3
    sget-object v1, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    invoke-static {v0, v1}, Lcom/netflix/msl/util/MslUtils;->safeEquals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v5

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_4

    .line 333
    return-object v5

    .line 334
    :cond_4
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initial value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 337
    :catch_1
    move-exception v0

    .line 338
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 339
    :catch_2
    move-exception v0

    .line 340
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :catch_3
    move-exception v0

    .line 342
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 343
    :catch_4
    move-exception v0

    .line 344
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
    .locals 4

    .prologue
    .line 387
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->parse([BLcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object v1

    .line 395
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "HmacSHA256"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Lcom/netflix/msl/crypto/CryptoCache;->getMac(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 397
    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 398
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 412
    :goto_0
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/msl/util/MslUtils;->safeEquals([B[B)Z

    move-result v0

    return v0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "AESCmac"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->signatureKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 401
    new-instance v2, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    .line 402
    new-instance v3, Lorg/bouncycastle/crypto/macs/CMac;

    invoke-direct {v3, v2}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 403
    invoke-virtual {v3, v0}, Lorg/bouncycastle/crypto/macs/CMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 404
    const/4 v0, 0x0

    array-length v2, p1

    invoke-virtual {v3, p1, v0, v2}, Lorg/bouncycastle/crypto/macs/CMac;->update([BII)V

    .line 405
    invoke-virtual {v3}, Lorg/bouncycastle/crypto/macs/CMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    .line 406
    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/crypto/macs/CMac;->doFinal([BI)I
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 408
    :cond_2
    :try_start_1
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "Unsupported algorithm."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    .line 415
    :catch_1
    move-exception v0

    .line 416
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid MAC algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :catch_2
    move-exception v0

    .line 418
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 250
    iget-object v0, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "data.length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_1
    sget-object v0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->AESKW_AIV:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 257
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 259
    :try_start_0
    const-string/jumbo v4, "AES/ECB/NoPadding"

    invoke-static {v4}, Lcom/netflix/msl/crypto/CryptoCache;->getCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 260
    const/4 v4, 0x1

    iget-object v6, p0, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->wrappingKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v5, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 263
    array-length v4, v1

    div-int/lit8 v6, v4, 0x8

    move v4, v3

    .line 266
    :goto_0
    const/4 v3, 0x6

    if-ge v4, v3, :cond_3

    move-object v3, v0

    move v0, v2

    .line 267
    :goto_1
    if-gt v0, v6, :cond_2

    .line 268
    add-int/lit8 v7, v0, -0x1

    mul-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v0, 0x8

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 269
    array-length v8, v3

    array-length v9, v7

    add-int/2addr v8, v9

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    .line 270
    const/4 v9, 0x0

    array-length v3, v3

    array-length v10, v7

    invoke-static {v7, v9, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    invoke-virtual {v5, v8}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 272
    const/16 v3, 0x8

    invoke-static {v3, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->msb(I[B)[B

    move-result-object v3

    .line 273
    mul-int v8, v6, v4

    add-int/2addr v8, v0

    int-to-long v8, v8

    .line 274
    invoke-static {v3, v8, v9}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->xor([BJ)V

    .line 275
    const/16 v8, 0x8

    invoke-static {v8, v7}, Lcom/netflix/msl/crypto/SymmetricCryptoContext;->lsb(I[B)[B

    move-result-object v7

    .line 276
    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    mul-int/lit8 v9, v9, 0x8

    const/16 v10, 0x8

    invoke-static {v7, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v3

    goto :goto_0

    .line 281
    :cond_3
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 282
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    const/4 v3, 0x0

    array-length v0, v0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 284
    return-object v2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Invalid cipher algorithm specified."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 287
    :catch_1
    move-exception v0

    .line 288
    new-instance v1, Lcom/netflix/msl/MslInternalException;

    const-string/jumbo v2, "Unsupported padding exception."

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 289
    :catch_2
    move-exception v0

    .line 290
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 291
    :catch_3
    move-exception v0

    .line 292
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when padding is no padding"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 293
    :catch_4
    move-exception v0

    .line 294
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    const-string/jumbo v3, "not expected when encrypting"

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
