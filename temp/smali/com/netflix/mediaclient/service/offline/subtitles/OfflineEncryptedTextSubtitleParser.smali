.class public Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;
.source "OfflineEncryptedTextSubtitleParser.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V
    .locals 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;F)V

    .line 38
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create encrypted offline text based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method private decrypt([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDecryptionKey()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->getIV([B)[B

    move-result-object v1

    .line 87
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->getEnc([B)[B

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->decrypt([B[B[B)[B

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    return-object v1
.end method

.method private static decrypt([B[B[B)[B
    .locals 4

    .prologue
    .line 135
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 136
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 137
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 138
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 139
    return-object v0
.end method

.method private getEnc([B)[B
    .locals 2

    .prologue
    .line 118
    const/16 v0, 0x10

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private getIV([B)[B
    .locals 1

    .prologue
    .line 106
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected handleImport()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Check if cache exist!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "File %s exist"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 50
    :try_start_0
    invoke-static {v2}, Lcom/netflix/mediaclient/util/FileUtils;->readFileToByteArray(Ljava/io/File;)[B

    move-result-object v2

    .line 52
    const-string/jumbo v3, "nf_subtitles"

    const-string/jumbo v4, "Importing subtitles metadata from offline directory size [bytes] %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 54
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->decrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->parse(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "Imported enc data from offline directory!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string/jumbo v2, "nf_subtitles"

    const-string/jumbo v3, "We failed to parse subtitle metadata from cached file"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 63
    :cond_0
    const-string/jumbo v0, "nf_subtitles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Offline text subtitle NOT found at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/offline/subtitles/OfflineEncryptedTextSubtitleParser;->mOfflineSubtitle:Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/offline/OfflineSubtitle;->getLocalFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
