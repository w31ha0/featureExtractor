.class public Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;
.super Ljava/lang/Object;
.source "WidevineCryptoContext.java"

# interfaces
.implements Lcom/netflix/msl/crypto/ICryptoContext;


# static fields
.field private static final AES_IV_SIZE:I = 0x10

.field public static DEBUG_FORCE_VERIFY_ERROR:Z = false

.field private static final KEY_ENCRYPTION_KEY_ID:Ljava/lang/String; = "encryptionKeyId"

.field private static final KEY_ENVELOPE_ID:Ljava/lang/String; = "envelopeId"

.field private static final KEY_HMAC_KEY_ID:Ljava/lang/String; = "hmacKeyId"

.field private static final KEY_SET_ID:Ljava/lang/String; = "keySetId"

.field private static final TAG:Ljava/lang/String; = "nf_msl"


# instance fields
.field private transient cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

.field private ctx:Lcom/netflix/msl/util/MslContext;

.field private encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

.field private envelopeId:Ljava/lang/String;

.field private hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->DEBUG_FORCE_VERIFY_ERROR:Z

    return-void
.end method

.method private constructor <init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V
    .locals 6

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const-string/jumbo v0, "encryptionKeyId"

    invoke-virtual {p2, v0}, Lcom/netflix/android/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "hmacKeyId"

    invoke-virtual {p2, v1}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "envelopeId"

    invoke-virtual {p2, v2}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string/jumbo v3, "keySetId"

    invoke-virtual {p2, v3}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string/jumbo v4, "nf_msl"

    const-string/jumbo v5, "WidevineCryptoContex:: restoring crypto session...."

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "envelopeId is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 93
    new-instance v4, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-direct {v4, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    .line 95
    iput-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    .line 97
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-direct {v1, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->restoreCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    if-nez v0, :cond_2

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to restore crypto session!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/netflix/msl/util/MslContext;Ljava/lang/String;Lcom/netflix/msl/keyx/WidevineKeyRequestData;Lcom/netflix/msl/keyx/WidevineKeyResponseData;Lcom/netflix/msl/tokens/MasterToken;)V
    .locals 4

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "WidevineCryptoContex::"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MSL context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    if-nez p3, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CDM request is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    if-nez p4, :cond_2

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CDM response is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {p4}, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->getEncryptionKeyId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>([B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    .line 124
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {p4}, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->getHmacKeyId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;-><init>([B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->getMasterToken()Lcom/netflix/msl/tokens/MasterToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/msl/tokens/MasterToken;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    .line 128
    invoke-virtual {p4}, Lcom/netflix/msl/keyx/WidevineKeyResponseData;->getKeyResponse()[B

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-interface {v1, p3, v0, v2, v3}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->updateKeyResponse(Lcom/netflix/msl/keyx/WidevineKeyRequestData;[BLcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;)Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    .line 130
    return-void
.end method

.method public static restoreWidevineCryptoContext(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;-><init>(Lcom/netflix/msl/util/MslContext;Lcom/netflix/android/org/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public decrypt([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/netflix/msl/io/MslEncoderFactory;->parseObject([B)Lcom/netflix/msl/io/MslObject;

    move-result-object v0

    .line 170
    new-instance v1, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    sget-object v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;->V1:Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;

    invoke-direct {v1, v0, v2}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Lcom/netflix/msl/io/MslObject;Lcom/netflix/msl/crypto/MslCiphertextEnvelope$Version;)V

    .line 173
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getKeyId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

    invoke-direct {v0, v1}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    const-string/jumbo v2, "WidevineCryptoContext::decrypt failed."

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_DECRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getCiphertext()[B

    move-result-object v0

    .line 179
    array-length v2, v0

    if-nez v2, :cond_2

    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 184
    :goto_0
    return-object v0

    .line 183
    :cond_2
    invoke-virtual {v1}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->getIv()[B

    move-result-object v1

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->decrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public encrypt([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no encryption/decryption key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0}, Lcom/netflix/msl/util/MslContext;->getRandom()Ljava/util/Random;

    move-result-object v0

    .line 142
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 147
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 148
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-interface {v0, v2, v3, p1, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->encrypt(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)[B

    move-result-object v0

    .line 153
    :goto_0
    new-instance v2, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;-><init>(Ljava/lang/String;[B[B)V

    .line 154
    invoke-virtual {v2, p2, p3}, Lcom/netflix/msl/crypto/MslCiphertextEnvelope;->toMslEncoding(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    const-string/jumbo v2, "WidevineCryptoContext::encrypt failed."

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_ENCRYPT_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEncryptionKeyId()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    return-object v0
.end method

.method public getHmacKeyId()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 274
    const-string/jumbo v0, "nf_msl"

    const-string/jumbo v1, "Widevine crypto context, release crypto session!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->closeCryptoSession(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;)Z

    .line 276
    return-void
.end method

.method public sign([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-interface {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->sign(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B)[B

    move-result-object v0

    .line 210
    new-instance v1, Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    invoke-direct {v1, v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;-><init>([B)V

    invoke-virtual {v1, p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getBytes(Lcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    const-string/jumbo v2, "WidevineCryptoContext::sign failed."

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_SIGN_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toJSONObject()Lcom/netflix/android/org/json/JSONObject;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/netflix/android/org/json/JSONObject;

    invoke-direct {v0}, Lcom/netflix/android/org/json/JSONObject;-><init>()V

    .line 241
    const-string/jumbo v1, "encryptionKeyId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->getAsBase64EncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 242
    const-string/jumbo v1, "hmacKeyId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->getAsBase64EncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 243
    const-string/jumbo v1, "envelopeId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 244
    const-string/jumbo v1, "keySetId"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;->keySetId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;->getAsBase64EncodedString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/android/org/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/android/org/json/JSONObject;

    .line 246
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WidevineCryptoContext{encryptionKeyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->encryptionKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hmacKeyId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ctx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->ctx:Lcom/netflix/msl/util/MslContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", envelopeId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->envelopeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", cryptoSession=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap([BLcom/netflix/msl/io/MslEncoderFactory;)[B
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method

.method public verify([B[BLcom/netflix/msl/io/MslEncoderFactory;)Z
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "No signature key."

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->parse([BLcom/netflix/msl/io/MslEncoderFactory;)Lcom/netflix/msl/crypto/MslSignatureEnvelope;

    move-result-object v0

    .line 228
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManagerRegistry;->getCryptoManager()Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->cryptoSession:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/msl/client/WidevineCryptoContext;->hmacKeyId:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;

    invoke-virtual {v0}, Lcom/netflix/msl/crypto/MslSignatureEnvelope;->getSignature()[B

    move-result-object v0

    invoke-interface {v1, v2, v3, p1, v0}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager;->verify(Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$CryptoSession;Lcom/netflix/mediaclient/service/configuration/crypto/CryptoManager$KeyId;[B[B)Z
    :try_end_0
    .catch Lcom/netflix/msl/MslEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/netflix/msl/MslCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    return v0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    new-instance v1, Lcom/netflix/msl/MslCryptoException;

    sget-object v2, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    invoke-direct {v1, v2, v0}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/Throwable;)V

    throw v1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    throw v0

    .line 233
    :catch_2
    move-exception v0

    .line 234
    new-instance v1, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;

    const-string/jumbo v2, "WidevineCryptoContext::verify failed."

    sget-object v3, Lcom/netflix/mediaclient/StatusCode;->MSL_WV_VERIFY_ERROR:Lcom/netflix/mediaclient/StatusCode;

    invoke-direct {v1, v2, v3, v0}, Lcom/netflix/mediaclient/service/msl/client/WidevineContextException;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/StatusCode;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public wrap([BLcom/netflix/msl/io/MslEncoderFactory;Lcom/netflix/msl/io/MslEncoderFormat;)[B
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lcom/netflix/msl/MslCryptoException;

    sget-object v1, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    const-string/jumbo v2, "no wrap/unwrap key"

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/MslCryptoException;-><init>(Lcom/netflix/msl/MslError;Ljava/lang/String;)V

    throw v0
.end method
