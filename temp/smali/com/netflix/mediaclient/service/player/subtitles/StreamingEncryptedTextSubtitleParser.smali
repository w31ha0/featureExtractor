.class public Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;
.super Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;
.source "StreamingEncryptedTextSubtitleParser.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V
    .locals 3

    .prologue
    .line 47
    invoke-direct/range {p0 .. p8}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingTextSubtitleParser;-><init>(Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;FLcom/netflix/mediaclient/service/player/subtitles/SubtitleParser$DownloadFailedCallback;J)V

    .line 48
    const-string/jumbo v0, "nf_subtitles"

    const-string/jumbo v1, "Create encrypted text based subtitle parser"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method private decrypt([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->mSubtitleData:Lcom/netflix/mediaclient/media/SubtitleUrl;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/SubtitleUrl;->getDecryptionKey()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 84
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->getIV([B)[B

    move-result-object v1

    .line 91
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->getEnc([B)[B

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->decrypt([B[B[B)[B

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 98
    return-object v1
.end method

.method private static decrypt([B[B[B)[B
    .locals 4

    .prologue
    .line 139
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v1, "AES"

    invoke-direct {v0, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 140
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 141
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 142
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 143
    return-object v0
.end method

.method private getEnc([B)[B
    .locals 2

    .prologue
    .line 122
    const/16 v0, 0x10

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private getIV([B)[B
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected handleImport()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected injectContent([B)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->decrypt([B)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/subtitles/StreamingEncryptedTextSubtitleParser;->parse(Ljava/lang/String;)V

    .line 70
    return-void
.end method
