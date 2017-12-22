.class final Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;
.super Ljava/lang/Object;
.source "CastPrefetchMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CastPrefetchMessage"


# instance fields
.field final BLOCKSIZE_IN_BYTES:I

.field final PROP_CIPHERTEXT:Ljava/lang/String;

.field final PROP_CONTROLLER_ESN:Ljava/lang/String;

.field final PROP_EVENLOP_ID:Ljava/lang/String;

.field final PROP_IV:Ljava/lang/String;

.field final PROP_KEY_ID:Ljava/lang/String;

.field final PROP_MOVIES_ARRAY:Ljava/lang/String;

.field final PROP_MOVIE_ID:Ljava/lang/String;

.field final PROP_PRIORITY:Ljava/lang/String;

.field final PROP_TAGLENGTH:Ljava/lang/String;

.field final TAGLENGHT_IN_BIT:I

.field final evenlopeId:B

.field private mMessageJSON:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x80

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "movieId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_MOVIE_ID:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "priority"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_PRIORITY:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "movies"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_MOVIES_ARRAY:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "controllerESN"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_CONTROLLER_ESN:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "evenlopeId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_EVENLOP_ID:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "keyId"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_KEY_ID:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "iv"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_IV:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "taglength"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_TAGLENGTH:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "ciphertext"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->PROP_CIPHERTEXT:Ljava/lang/String;

    .line 39
    iput v9, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->BLOCKSIZE_IN_BYTES:I

    .line 40
    iput v8, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->TAGLENGHT_IN_BIT:I

    .line 41
    iput-byte v1, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->evenlopeId:B

    .line 46
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;

    .line 48
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 50
    :try_start_0
    const-string/jumbo v4, "movieId"

    iget-wide v6, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayableId:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v4, "priority"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_a

    .line 57
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    :try_start_1
    const-string/jumbo v2, "movies"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "controllerESN"

    .line 62
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9

    .line 71
    new-array v1, v9, [B

    .line 72
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 73
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 75
    new-instance v2, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-direct {v2, v8, v1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 77
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, p4, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 80
    :try_start_2
    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v4

    .line 85
    if-nez v4, :cond_2

    .line 86
    const-string/jumbo v0, "CastPrefetchMessage"

    const-string/jumbo v1, "cipher is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    :goto_1
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    :goto_2
    const-string/jumbo v0, "CastPrefetchMessage"

    const-string/jumbo v1, "NoSuchAlgorithmException or NoSuchPaddingException for GCM encryption"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 90
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 92
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v4, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    .line 116
    :try_start_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    const-string/jumbo v3, "evenlopeId"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "keyId"

    .line 117
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "iv"

    .line 118
    invoke-static {v1}, Lcom/netflix/mediaclient/util/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "taglength"

    const/16 v3, 0x80

    .line 119
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "ciphertext"

    .line 120
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 121
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    .line 103
    :catch_3
    move-exception v0

    goto :goto_1

    .line 95
    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_1

    .line 81
    :catch_8
    move-exception v0

    goto :goto_2

    .line 63
    :catch_9
    move-exception v0

    goto :goto_1

    .line 51
    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method


# virtual methods
.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/CastPrefetchMessage;->mMessageJSON:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
