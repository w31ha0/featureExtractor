.class public Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;
.super Ljava/lang/Object;
.source "SegmentEncryptionInfo.java"


# static fields
.field private static final ZERO_AES_CBC_IV:[B


# instance fields
.field private encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

.field private encryptionModeRaw:B

.field private iv:[B

.field private ivSize:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ZERO_AES_CBC_IV:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/io/DataInputStream;B)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 130
    and-int/lit8 v1, v0, 0x3f

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    .line 131
    ushr-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionModeRaw:B

    .line 133
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->initEncryptionMode()V

    .line 135
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->verifyIV(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-byte v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/ParserUtils;->readByteArray(Ljava/io/DataInputStream;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->iv:[B

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v0, "nf_subtitles_imv2"

    const-string/jumbo v1, "IV size is 0, use 0 as IV, set to empty array..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/io/DataInputStream;BLcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$1;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;-><init>(Ljava/io/DataInputStream;B)V

    return-void
.end method

.method private initEncryptionMode()V
    .locals 3

    .prologue
    .line 173
    iget-byte v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionModeRaw:B

    packed-switch v0, :pswitch_data_0

    .line 187
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    .line 188
    const-string/jumbo v0, "nf_subtitles_imv2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImageEncryptionInfo:: Not recognized encryption mode. We should never be here! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionModeRaw:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 175
    :pswitch_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    goto :goto_0

    .line 178
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    goto :goto_0

    .line 181
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    goto :goto_0

    .line 184
    :pswitch_3
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->RESERVED:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private verifyIV(B)Z
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v1, 0x0

    .line 144
    const/4 v0, 0x1

    .line 145
    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->NONE:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    if-eq v2, v3, :cond_0

    .line 149
    iput-byte p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    .line 152
    :cond_0
    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-eq v2, v4, :cond_1

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IV size, must be 0, 8 or 16 and NOT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_1
    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CTR:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    if-ne v2, v3, :cond_2

    if-nez p1, :cond_2

    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid IV size for AES-CTR, must be 8 or 16 and NOT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_2
    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    sget-object v3, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;->AES_CBC:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    if-ne v2, v3, :cond_3

    if-nez p1, :cond_3

    .line 161
    iput-byte v4, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    .line 162
    sget-object v0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ZERO_AES_CBC_IV:[B

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->iv:[B

    move v0, v1

    .line 166
    :cond_3
    iget-byte v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    if-nez v2, :cond_4

    .line 169
    :goto_0
    return v1

    :cond_4
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getEncryptionMode()Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    return-object v0
.end method

.method public getIV()[B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->iv:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImageEncryptionInfo{encryptionModeRaw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionModeRaw:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ivSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->ivSize:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", encryptionMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$ImageEncryptionInfo;->encryptionMode:Lcom/netflix/mediaclient/service/player/subtitles/image/v2/SegmentEncryptionInfo$EncryptionMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
