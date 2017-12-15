.class public final Lcom/creativemobi/DragRacing/billing/f;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final a:Ljava/security/SecureRandom;

.field private static b:Ljava/util/HashSet;

.field private static c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/f;->a:Ljava/security/SecureRandom;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/creativemobi/DragRacing/billing/f;->b:Ljava/util/HashSet;

    .line 90
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/creativemobi/DragRacing/billing/f;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    .line 78
    sget-object v2, Lcom/creativemobi/DragRacing/billing/f;->b:Ljava/util/HashSet;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    return-wide v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17

    .prologue
    .line 106
    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    rem-int/lit8 v3, v2, 0x3

    if-nez v3, :cond_0

    sget-object v3, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    sget-object v4, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    aput v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_1
    if-nez p0, :cond_2

    .line 110
    const/16 p0, 0x0

    .line 243
    :goto_1
    return-object p0

    .line 115
    :cond_2
    const/4 v2, 0x0

    .line 116
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 117
    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    .line 118
    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8QU1JSUJDZ0tDQVFFQXZYVmI4NEFUSnNtM1pYZmp5NQUFZQM09EaGxjWHVyaitOMi9KOG9MMy9NUXVRRDMvUQV5MP2Jh28uC5xsFBu69jy/9zXisK4mSbGNFdTlHNVlUOVJhd3l2cUEyUklrT2p2WE9DQ0V3NgNi9FcnhLQ3JuQ0F5dFBmR3dDV2hMRVhNU0phUy9ITwi5PXB/04+eyJEM+t5nUzY4FDRb9isYXeEVrTzc5NStkOHQyOXUyRC92WjJlTTl4TG9ScVZZRgbmlhRlBZdUhybnEwZEloTTkwNUhmaDBxMC9URUt2RAtFcsNzNWii0ZJZAOHiH7Vv7NMY8TglgSTNYMUJyVHJ5Z1p2NkROSTIrTWt4UDlyS0lWUlhPTgeUpKS1RqMnZXQzJlRVBqa2VVYUVuOUNSMThEemZCNQZyX5y74jcqhKjQIDAQAB"

    .line 126
    const/4 v4, 0x0

    .line 127
    const/4 v5, 0x0

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :goto_2
    const/16 v6, 0xd

    if-ge v4, v6, :cond_5

    .line 129
    sget-object v6, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    aget v6, v6, v4

    if-ne v4, v6, :cond_4

    const/16 v6, 0x2a

    :goto_3
    add-int/2addr v6, v5

    .line 130
    const/16 v7, 0xc

    if-ne v4, v7, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 131
    :cond_3
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 127
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    .line 129
    :cond_4
    const/16 v6, 0x1f

    goto :goto_3

    .line 134
    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 135
    const/4 v4, 0x0

    :goto_4
    array-length v5, v2

    if-ge v4, v5, :cond_7

    .line 136
    sget-object v5, Lcom/creativemobi/DragRacing/billing/f;->c:[I

    aget v5, v5, v4

    if-ne v4, v5, :cond_6

    .line 138
    :try_start_0
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/creativemobi/DragRacing/billing/w;->a([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lcom/creativemobi/DragRacing/billing/x; {:try_start_0 .. :try_end_0} :catch_9

    .line 135
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 142
    :cond_6
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 146
    :cond_7
    const/4 v2, 0x0

    .line 152
    :try_start_1
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/creativemobi/DragRacing/billing/x; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 155
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/creativemobi/DragRacing/billing/w;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 156
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v5

    .line 157
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/creativemobi/DragRacing/billing/x; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v3

    .line 168
    :try_start_3
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/Signature;->update([B)V

    .line 170
    invoke-static/range {p1 .. p1}, Lcom/creativemobi/DragRacing/billing/w;->a(Ljava/lang/String;)[B

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-nez p1, :cond_8

    .line 172
    const/16 p1, 0x0

    .line 186
    :goto_6
    if-nez p1, :cond_a

    .line 188
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 158
    :catch_0
    move-exception p1

    .line 159
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 184
    :catch_1
    move-exception p1

    move/from16 p1, v2

    goto :goto_6

    .line 160
    :catch_2
    move-exception p1

    .line 162
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 184
    :catch_3
    move-exception p1

    move/from16 p1, v2

    goto :goto_6

    .line 163
    :catch_4
    move-exception p1

    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/creativemobi/DragRacing/billing/x; {:try_start_3 .. :try_end_3} :catch_6

    .line 184
    :catch_5
    move-exception p1

    move/from16 p1, v2

    goto :goto_6

    .line 174
    :cond_8
    const/16 p1, 0x1

    goto :goto_6

    :catch_6
    move-exception p1

    move/from16 p1, v2

    goto :goto_6

    :cond_9
    move/from16 p1, v2

    .line 193
    :cond_a
    const/4 v2, 0x0

    .line 195
    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 200
    const-string p0, "nonce"

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 201
    const-string p0, "orders"

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 202
    if-eqz p0, :cond_10

    .line 203
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v2

    move v12, v2

    .line 209
    :goto_7
    sget-object v2, Lcom/creativemobi/DragRacing/billing/f;->b:Ljava/util/HashSet;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 211
    const/16 p0, 0x0

    goto/16 :goto_1

    .line 206
    :catch_7
    move-exception p0

    const/16 p0, 0x0

    goto/16 :goto_1

    .line 214
    :cond_b
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 216
    const/4 v2, 0x0

    move v14, v2

    :goto_8
    if-ge v14, v12, :cond_f

    .line 217
    :try_start_5
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 218
    const-string v3, "purchaseState"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 219
    invoke-static {v3}, Lcom/creativemobi/DragRacing/billing/i;->a(I)Lcom/creativemobi/DragRacing/billing/i;

    move-result-object v3

    .line 220
    const-string v4, "productId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v4, "purchaseTime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 223
    const-string v4, "orderId"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    const/4 v4, 0x0

    .line 225
    const-string v9, "notificationId"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 226
    const-string v4, "notificationId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    :cond_c
    const-string v9, "developerPayload"

    const/4 v15, 0x0

    invoke-virtual {v2, v9, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 232
    sget-object v2, Lcom/creativemobi/DragRacing/billing/i;->a:Lcom/creativemobi/DragRacing/billing/i;

    if-ne v3, v2, :cond_d

    if-eqz p1, :cond_e

    .line 233
    :cond_d
    new-instance v2, Lcom/creativemobi/DragRacing/billing/g;

    invoke-direct/range {v2 .. v9}, Lcom/creativemobi/DragRacing/billing/g;-><init>(Lcom/creativemobi/DragRacing/billing/i;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    .line 216
    :cond_e
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_8

    .line 240
    :catch_8
    move-exception p0

    const/16 p0, 0x0

    goto/16 :goto_1

    .line 242
    :cond_f
    invoke-static {v10, v11}, Lcom/creativemobi/DragRacing/billing/f;->a(J)V

    move-object/from16 p0, v13

    .line 243
    goto/16 :goto_1

    .line 140
    :catch_9
    move-exception v5

    goto/16 :goto_5

    :cond_10
    move v12, v2

    goto :goto_7
.end method

.method public static a(J)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/creativemobi/DragRacing/billing/f;->b:Ljava/util/HashSet;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
