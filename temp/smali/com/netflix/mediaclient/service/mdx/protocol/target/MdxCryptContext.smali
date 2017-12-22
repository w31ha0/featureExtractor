.class public Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;
.super Ljava/lang/Object;
.source "MdxCryptContext.java"


# static fields
.field private static final AES_BLOCK_SIZE:I = 0x10

.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CIPHER_ENV_VERSION:I = 0x2

.field private static final CIPHER_KEY_SIZE:I = 0x10

.field private static final CIPHER_TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final HMAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"

.field private static final HMAC_KEY_SIZE:I = 0x20

.field private static final IV_SIZE:I = 0x10

.field private static final MAX_CTEXT_SIZE:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "MdxTargetCryptContext"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v13, 0x1

    const/4 v5, 0x0

    .line 125
    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->isValidSharedSecret([B)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 203
    :goto_0
    return-object v0

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 129
    array-length v0, v6

    const/16 v2, 0x11

    if-gt v0, v2, :cond_1

    .line 130
    const-string/jumbo v0, "MdxTargetCryptContext"

    const-string/jumbo v2, "decrypt input not enough for IV %d"

    new-array v3, v13, [Ljava/lang/Object;

    array-length v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    aget-byte v0, v6, v5

    if-eq v0, v3, :cond_2

    aget-byte v0, v6, v13

    if-eq v0, v4, :cond_2

    .line 133
    const-string/jumbo v0, "MdxTargetCryptContext"

    const-string/jumbo v2, "decrypt input has wrong version/iv_siz %d %d"

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, v6, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, v6, v13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v13

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 138
    :cond_2
    :try_start_0
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 139
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v2, 0x20

    const/16 v3, 0x10

    const-string/jumbo v4, "AES"

    invoke-direct {v0, p0, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 140
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-direct {v2, v6, v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 141
    const/4 v3, 0x2

    invoke-virtual {v7, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 143
    const/16 v0, 0x12

    .line 145
    array-length v2, v6

    sub-int/2addr v2, v0

    new-array v8, v2, [B

    move v4, v5

    .line 146
    :goto_1
    array-length v2, v6

    if-ge v0, v2, :cond_4

    .line 147
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    .line 148
    const/16 v3, 0xc0

    if-le v0, v3, :cond_6

    .line 149
    packed-switch v0, :pswitch_data_0

    .line 163
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "has invlid chunk size %x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 164
    goto/16 :goto_0

    .line 151
    :pswitch_0
    const/16 v0, 0x4000

    .line 174
    :cond_3
    :goto_2
    const-string/jumbo v3, "MdxTargetCryptContext"

    const-string/jumbo v9, "has chunck size 0x%x"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v9, v10}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 175
    if-gtz v0, :cond_7

    .line 187
    :cond_4
    if-lez v4, :cond_5

    .line 188
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v0, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    .line 189
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :goto_3
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "decrypt exception %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_5
    :goto_4
    move-object v0, v1

    .line 203
    goto/16 :goto_0

    .line 154
    :pswitch_1
    const v0, 0x8000

    .line 155
    goto :goto_2

    .line 157
    :pswitch_2
    const v0, 0xc000

    .line 158
    goto :goto_2

    .line 160
    :pswitch_3
    const/high16 v0, 0x10000

    .line 161
    goto :goto_2

    .line 166
    :cond_6
    and-int/lit16 v3, v0, 0xc0

    const/16 v9, 0x80

    if-ne v3, v9, :cond_3

    .line 167
    :try_start_1
    array-length v3, v6

    if-eq v2, v3, :cond_4

    .line 170
    and-int/lit8 v0, v0, 0x3f

    .line 171
    shl-int/lit8 v0, v0, 0x8

    .line 172
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    move v2, v3

    goto :goto_2

    .line 178
    :cond_7
    const-string/jumbo v3, "MdxTargetCryptContext"

    const-string/jumbo v9, "copy buffer data from offset %d to %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v9, v10}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    add-int v3, v2, v0

    array-length v9, v6

    if-le v3, v9, :cond_8

    .line 180
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "has invlid chunk size %x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 181
    goto/16 :goto_0

    .line 183
    :cond_8
    invoke-static {v6, v2, v8, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 184
    add-int/2addr v2, v0

    .line 185
    add-int/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 186
    goto/16 :goto_1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "decrypt exception %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 195
    :catch_2
    move-exception v0

    .line 196
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "decrypt exception %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    .line 197
    :catch_3
    move-exception v0

    .line 198
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "decrypt exception %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 199
    :catch_4
    move-exception v0

    .line 200
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "decrypt exception %s"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 191
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 149
    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static encrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 53
    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->isValidSharedSecret([B)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 57
    :cond_0
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    array-length v2, v0

    if-nez v2, :cond_1

    .line 59
    const-string/jumbo v0, "MdxTargetCryptContext"

    const-string/jumbo v2, "encrypt input data size is 0"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 60
    goto :goto_0

    .line 62
    :cond_1
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 63
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v4, 0x20

    const/16 v5, 0x10

    const-string/jumbo v6, "AES"

    invoke-direct {v3, p0, v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 65
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 66
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 67
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 68
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 69
    const/4 v6, 0x1

    invoke-virtual {v2, v6, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 71
    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 72
    array-length v3, v2

    .line 73
    if-eqz v3, :cond_2

    const/16 v0, 0x7fff

    if-le v3, v0, :cond_3

    .line 74
    :cond_2
    const-string/jumbo v0, "MdxTargetCryptContext"

    const-string/jumbo v2, "incorrect encrypt ciphertext data size %x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v0, v2, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_3
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->getDERlength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->getDERlength(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    .line 78
    const-string/jumbo v4, "MdxTargetCryptContext"

    const-string/jumbo v6, "data length %d, envelop length %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v6, v7}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    new-array v4, v0, [B

    .line 80
    const/4 v0, 0x0

    const/4 v6, 0x2

    aput-byte v6, v4, v0

    .line 81
    const/4 v0, 0x1

    const/16 v6, 0x10

    aput-byte v6, v4, v0

    .line 82
    const/4 v0, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x10

    invoke-static {v5, v0, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    const/16 v5, 0x12

    .line 89
    const/16 v0, 0x3fff

    if-gt v3, v0, :cond_5

    .line 90
    const/16 v0, 0x7f

    if-gt v3, v0, :cond_4

    .line 91
    const/16 v0, 0x13

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    .line 96
    :goto_1
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-static {v4}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 93
    :cond_4
    const/16 v6, 0x13

    shr-int/lit8 v0, v3, 0x8

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    .line 94
    const/16 v0, 0x14

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    :goto_2
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    move-object v0, v1

    .line 116
    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    .line 100
    goto/16 :goto_0

    .line 105
    :catch_1
    move-exception v0

    .line 106
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 107
    :catch_2
    move-exception v0

    .line 108
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 109
    :catch_3
    move-exception v0

    .line 110
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 111
    :catch_4
    move-exception v0

    .line 112
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 113
    :catch_5
    move-exception v0

    .line 114
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "encrypt exception %s"

    new-array v4, v11, [Ljava/lang/Object;

    aput-object v0, v4, v10

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_3

    .line 103
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method private static getDERlength(I)I
    .locals 1

    .prologue
    .line 233
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    .line 234
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    .line 235
    :cond_0
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_1

    .line 236
    const/4 v0, 0x2

    goto :goto_0

    .line 238
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static hmac([BLjava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 212
    invoke-static {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/MdxCryptContext;->isValidSharedSecret([B)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 225
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    const-string/jumbo v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 217
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const-string/jumbo v5, "HmacSHA256"

    invoke-direct {v2, p0, v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 218
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 219
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :goto_1
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "hmac has exception %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    move-object v0, v1

    .line 225
    goto :goto_0

    .line 222
    :catch_1
    move-exception v0

    .line 223
    const-string/jumbo v2, "MdxTargetCryptContext"

    const-string/jumbo v3, "hmac has exception %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 220
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static isValidSharedSecret([B)Z
    .locals 2

    .prologue
    .line 228
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
