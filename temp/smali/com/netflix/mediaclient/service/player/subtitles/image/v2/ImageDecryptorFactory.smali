.class public final Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;
.super Ljava/lang/Object;
.source "ImageDecryptorFactory.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles_imv2"

.field private static sDecryptors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;",
            "Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/PassthroughDecryptor;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/PassthroughDecryptor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCbcImageDecryptor;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCbcImageDecryptor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    new-instance v2, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCtrImageDecryptor;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/AesCtrImageDecryptor;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDecryptor(Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;)Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;
    .locals 3

    .prologue
    .line 29
    if-nez p0, :cond_1

    .line 30
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    sget-object v1, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;

    .line 42
    :cond_0
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getEncryptionMode()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing enc mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptorFactory;->sDecryptors:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getEncryptionMode()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ImageDecryptor;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Encryption mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->getEncryptionMode()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
