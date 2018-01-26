.class public Lorg/apache/http/impl/auth/DigestScheme;
.super Lorg/apache/http/impl/auth/RFC2617Scheme;
.source "DigestScheme.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final HEXADECIMAL:[C

.field private static final QOP_AUTH:I = 0x2

.field private static final QOP_AUTH_INT:I = 0x1

.field private static final QOP_MISSING:I = 0x0

.field private static final QOP_UNKNOWN:I = -0x1


# instance fields
.field private a1:Ljava/lang/String;

.field private a2:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field private complete:Z

.field private lastNonce:Ljava/lang/String;

.field private nounceCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lorg/apache/http/impl/auth/RFC2617Scheme;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 111
    return-void
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 436
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 437
    .local v0, "rnd":Ljava/security/SecureRandom;
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 438
    .local v1, "tmp":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 439
    invoke-static {v1}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private createDigestHeader(Lorg/apache/http/auth/Credentials;)Lorg/apache/http/Header;
    .locals 37
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 228
    const-string v32, "uri"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 229
    .local v30, "uri":Ljava/lang/String;
    const-string v32, "realm"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 230
    .local v26, "realm":Ljava/lang/String;
    const-string v32, "nonce"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 231
    .local v19, "nonce":Ljava/lang/String;
    const-string v32, "opaque"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 232
    .local v20, "opaque":Ljava/lang/String;
    const-string v32, "methodname"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 233
    .local v16, "method":Ljava/lang/String;
    const-string v32, "algorithm"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "algorithm":Ljava/lang/String;
    if-nez v30, :cond_0

    .line 235
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "URI may not be null"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 237
    :cond_0
    if-nez v26, :cond_1

    .line 238
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "Realm may not be null"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 240
    :cond_1
    if-nez v19, :cond_2

    .line 241
    new-instance v32, Ljava/lang/IllegalStateException;

    const-string v33, "Nonce may not be null"

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 245
    :cond_2
    const/16 v24, -0x1

    .line 246
    .local v24, "qop":I
    const-string v32, "qop"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, "qoplist":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 248
    new-instance v28, Ljava/util/StringTokenizer;

    const-string v32, ","

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v28, "tok":Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 250
    invoke-virtual/range {v28 .. v28}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    .line 251
    .local v31, "variant":Ljava/lang/String;
    const-string v32, "auth"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 252
    const/16 v24, 0x2

    .line 260
    .end local v28    # "tok":Ljava/util/StringTokenizer;
    .end local v31    # "variant":Ljava/lang/String;
    :cond_4
    :goto_0
    const/16 v32, -0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 261
    new-instance v32, Lorg/apache/http/auth/AuthenticationException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "None of the qop methods is supported: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 257
    :cond_5
    const/16 v24, 0x0

    goto :goto_0

    .line 265
    :cond_6
    if-nez v3, :cond_7

    .line 266
    const-string v3, "MD5"

    .line 269
    :cond_7
    const-string v32, "charset"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "charset":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 271
    const-string v5, "ISO-8859-1"

    .line 274
    :cond_8
    move-object v7, v3

    .line 275
    .local v7, "digAlg":Ljava/lang/String;
    const-string v32, "MD5-sess"

    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 276
    const-string v7, "MD5"

    .line 281
    :cond_9
    :try_start_0
    invoke-static {v7}, Lorg/apache/http/impl/auth/DigestScheme;->createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 286
    .local v10, "digester":Ljava/security/MessageDigest;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v29

    .line 287
    .local v29, "uname":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/auth/Credentials;->getPassword()Ljava/lang/String;

    move-result-object v23

    .line 289
    .local v23, "pwd":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 290
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    .line 296
    :goto_1
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v32, 0x100

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 297
    .local v27, "sb":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/util/Formatter;

    sget-object v32, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-direct {v12, v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 298
    .local v12, "formatter":Ljava/util/Formatter;
    const-string v32, "%08x"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    move-wide/from16 v35, v0

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 299
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 301
    .local v17, "nc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_a

    .line 302
    invoke-static {}, Lorg/apache/http/impl/auth/DigestScheme;->createCnonce()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 305
    :cond_a
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 306
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 308
    const-string v32, "MD5-sess"

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 314
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, "checksum":Ljava/lang/String;
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 318
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    .line 327
    .end local v6    # "checksum":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v13

    .line 329
    .local v13, "hasha1":Ljava/lang/String;
    const/16 v32, 0x2

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    .line 331
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    .line 340
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v14

    .line 345
    .local v14, "hasha2":Ljava/lang/String;
    if-nez v24, :cond_14

    .line 346
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 347
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "digestValue":Ljava/lang/String;
    :goto_4
    invoke-static {v9}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lorg/apache/http/impl/auth/DigestScheme;->encode([B)Ljava/lang/String;

    move-result-object v8

    .line 359
    .local v8, "digest":Ljava/lang/String;
    new-instance v4, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v32, 0x80

    move/from16 v0, v32

    invoke-direct {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 360
    .local v4, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/http/impl/auth/DigestScheme;->isProxy()Z

    move-result v32

    if-eqz v32, :cond_16

    .line 361
    const-string v32, "Proxy-Authorization"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 365
    :goto_5
    const-string v32, ": Digest "

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 367
    new-instance v22, Ljava/util/ArrayList;

    const/16 v32, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v22, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "username"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "realm"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "nonce"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "uri"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "response"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    if-eqz v24, :cond_b

    .line 375
    new-instance v33, Lorg/apache/http/message/BasicNameValuePair;

    const-string v34, "qop"

    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    const-string v32, "auth-int"

    :goto_6
    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "nc"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "cnonce"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_b
    if-eqz v3, :cond_c

    .line 380
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "algorithm"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_c
    if-eqz v20, :cond_d

    .line 383
    new-instance v32, Lorg/apache/http/message/BasicNameValuePair;

    const-string v33, "opaque"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_d
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v15, v0, :cond_1a

    .line 387
    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/message/BasicNameValuePair;

    .line 388
    .local v21, "param":Lorg/apache/http/message/BasicNameValuePair;
    if-lez v15, :cond_e

    .line 389
    const-string v32, ", "

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 391
    :cond_e
    const-string v32, "nc"

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_f

    const-string v32, "qop"

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_18

    :cond_f
    const/16 v18, 0x1

    .line 392
    .local v18, "noQuotes":Z
    :goto_8
    sget-object v33, Lorg/apache/http/message/BasicHeaderValueFormatter;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueFormatter;

    if-nez v18, :cond_19

    const/16 v32, 0x1

    :goto_9
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    move/from16 v2, v32

    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatNameValuePair(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    .line 386
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 282
    .end local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v8    # "digest":Ljava/lang/String;
    .end local v9    # "digestValue":Ljava/lang/String;
    .end local v10    # "digester":Ljava/security/MessageDigest;
    .end local v12    # "formatter":Ljava/util/Formatter;
    .end local v13    # "hasha1":Ljava/lang/String;
    .end local v14    # "hasha2":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "nc":Ljava/lang/String;
    .end local v18    # "noQuotes":Z
    .end local v21    # "param":Lorg/apache/http/message/BasicNameValuePair;
    .end local v22    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v23    # "pwd":Ljava/lang/String;
    .end local v27    # "sb":Ljava/lang/StringBuilder;
    .end local v29    # "uname":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 283
    .local v11, "ex":Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
    new-instance v32, Lorg/apache/http/auth/AuthenticationException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Unsuppported digest algorithm: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 292
    .end local v11    # "ex":Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
    .restart local v10    # "digester":Ljava/security/MessageDigest;
    .restart local v23    # "pwd":Ljava/lang/String;
    .restart local v29    # "uname":Ljava/lang/String;
    :cond_10
    const-wide/16 v32, 0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/apache/http/impl/auth/DigestScheme;->nounceCount:J

    .line 293
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    .line 294
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->lastNonce:Ljava/lang/String;

    goto/16 :goto_1

    .line 322
    .restart local v12    # "formatter":Ljava/util/Formatter;
    .restart local v17    # "nc":Ljava/lang/String;
    .restart local v27    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 323
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    goto/16 :goto_2

    .line 332
    .restart local v13    # "hasha1":Ljava/lang/String;
    :cond_12
    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 335
    new-instance v32, Lorg/apache/http/auth/AuthenticationException;

    const-string v33, "qop-int method is not suppported"

    invoke-direct/range {v32 .. v33}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 337
    :cond_13
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    goto/16 :goto_3

    .line 350
    .restart local v14    # "hasha2":Ljava/lang/String;
    :cond_14
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 351
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v32, 0x1

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    const-string v32, "auth-int"

    :goto_a
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x3a

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "digestValue":Ljava/lang/String;
    goto/16 :goto_4

    .line 351
    .end local v9    # "digestValue":Ljava/lang/String;
    :cond_15
    const-string v32, "auth"

    goto :goto_a

    .line 363
    .restart local v4    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v8    # "digest":Ljava/lang/String;
    .restart local v9    # "digestValue":Ljava/lang/String;
    :cond_16
    const-string v32, "Authorization"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 375
    .restart local v22    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_17
    const-string v32, "auth"

    goto/16 :goto_6

    .line 391
    .restart local v15    # "i":I
    .restart local v21    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 392
    .restart local v18    # "noQuotes":Z
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_9

    .line 394
    .end local v18    # "noQuotes":Z
    .end local v21    # "param":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1a
    new-instance v32, Lorg/apache/http/message/BufferedHeader;

    move-object/from16 v0, v32

    invoke-direct {v0, v4}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v32
.end method

.method private static createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 4
    .param p0, "digAlg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;
        }
    .end annotation

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/impl/auth/UnsupportedDigestAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 7
    .param p0, "binaryData"    # [B

    .prologue
    .line 417
    array-length v4, p0

    .line 418
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x2

    new-array v0, v5, [C

    .line 419
    .local v0, "buffer":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 420
    aget-byte v5, p0, v2

    and-int/lit8 v3, v5, 0xf

    .line 421
    .local v3, "low":I
    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v1, v5, 0x4

    .line 422
    .local v1, "high":I
    mul-int/lit8 v5, v2, 0x2

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v1

    aput-char v6, v0, v5

    .line 423
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Lorg/apache/http/impl/auth/DigestScheme;->HEXADECIMAL:[C

    aget-char v6, v6, v3

    aput-char v6, v0, v5

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "high":I
    .end local v3    # "low":I
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 4
    .param p1, "credentials"    # Lorg/apache/http/auth/Credentials;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Credentials may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    if-nez p2, :cond_1

    .line 194
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "methodname"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "uri"

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "charset"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 202
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/auth/params/AuthParams;->getCredentialCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v1

    const-string v2, "charset"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/http/impl/auth/DigestScheme;->createDigestHeader(Lorg/apache/http/auth/Credentials;)Lorg/apache/http/Header;

    move-result-object v1

    return-object v1
.end method

.method getA1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a1:Ljava/lang/String;

    return-object v0
.end method

.method getA2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->a2:Ljava/lang/String;

    return-object v0
.end method

.method getCnonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "digest"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 142
    const-string v1, "stale"

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "s":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    goto :goto_0
.end method

.method public isConnectionBased()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public overrideParamter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public processChallenge(Lorg/apache/http/Header;)V
    .locals 2
    .param p1, "header"    # Lorg/apache/http/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0, p1}, Lorg/apache/http/impl/auth/RFC2617Scheme;->processChallenge(Lorg/apache/http/Header;)V

    .line 126
    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/DigestScheme;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lorg/apache/http/auth/MalformedChallengeException;

    const-string v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/DigestScheme;->complete:Z

    .line 133
    return-void
.end method
