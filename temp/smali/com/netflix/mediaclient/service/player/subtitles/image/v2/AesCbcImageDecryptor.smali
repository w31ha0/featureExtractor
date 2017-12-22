.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCbcImageDecryptor;
.super Ljava/lang/Object;
.source "AesCbcImageDecryptor.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decrypt([B[B[B)[B
    .locals 5

    .prologue
    .line 55
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/CryptoUtils;->padPerPKCS5Padding([BI)[B

    move-result-object v0

    .line 57
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 58
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 59
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 60
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 61
    return-object v0
.end method


# virtual methods
.method public decrypt([BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;Ljava/lang/String;I)[B
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "AesCbcImageDecryptor::decrypt: starts..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p3}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getIV()[B

    move-result-object v1

    .line 38
    invoke-static {v0, p1, v1}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCbcImageDecryptor;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method
