.class public final Lcom/ibm/icu/impl/SimpleFormatterImpl;
.super Ljava/lang/Object;
.source "SimpleFormatterImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final COMMON_PATTERNS:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    const-class v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;->$assertionsDisabled:Z

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "{0} {1}"

    aput-object v4, v3, v2

    const-string/jumbo v4, "\u0002\u0000\u0101 \u0001"

    aput-object v4, v3, v1

    aput-object v3, v0, v2

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "{0} ({1})"

    aput-object v4, v3, v2

    const-string/jumbo v4, "\u0002\u0000\u0102 (\u0001\u0101)"

    aput-object v4, v3, v1

    aput-object v3, v0, v1

    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v4, "{0}, {1}"

    aput-object v4, v3, v2

    const-string/jumbo v4, "\u0002\u0000\u0102, \u0001"

    aput-object v4, v3, v1

    aput-object v3, v0, v5

    const/4 v3, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "{0} \u2013 {1}"

    aput-object v5, v4, v2

    const-string/jumbo v2, "\u0002\u0000\u0103 \u2013 \u0001"

    aput-object v2, v4, v1

    aput-object v4, v0, v3

    sput-object v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 11

    .prologue
    .line 74
    const/4 v0, 0x2

    if-gt p2, v0, :cond_2

    const/4 v0, 0x2

    if-gt v0, p3, :cond_2

    .line 75
    sget-object v1, Lcom/ibm/icu/impl/SimpleFormatterImpl;->COMMON_PATTERNS:[[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 76
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    sget-boolean v0, Lcom/ibm/icu/impl/SimpleFormatterImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, v3, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    aget-object v0, v3, v0

    .line 171
    :goto_1
    return-object v0

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 86
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 89
    const/4 v4, 0x0

    .line 90
    const/4 v0, -0x1

    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v2, 0x0

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_f

    .line 93
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 94
    const/16 v5, 0x27

    if-ne v1, v5, :cond_a

    .line 95
    if-ge v2, v7, :cond_6

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v5, 0x27

    if-ne v1, v5, :cond_6

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 149
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    .line 151
    const v5, 0xffff

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    add-int/lit8 v1, v4, 0x1

    const v4, 0xfeff

    if-ne v1, v4, :cond_5

    .line 155
    const/4 v1, 0x0

    :cond_5
    move v4, v1

    move v1, v2

    .line 157
    goto :goto_2

    .line 98
    :cond_6
    if-eqz v3, :cond_7

    .line 100
    const/4 v3, 0x0

    move v1, v2

    .line 101
    goto :goto_2

    .line 102
    :cond_7
    const/16 v5, 0x7b

    if-eq v1, v5, :cond_8

    const/16 v5, 0x7d

    if-ne v1, v5, :cond_9

    .line 104
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 105
    const/4 v3, 0x1

    goto :goto_3

    .line 108
    :cond_9
    const/16 v1, 0x27

    goto :goto_3

    .line 110
    :cond_a
    if-nez v3, :cond_3

    const/16 v5, 0x7b

    if-ne v1, v5, :cond_3

    .line 111
    if-lez v4, :cond_18

    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit16 v4, v4, 0x100

    int-to-char v4, v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 113
    const/4 v4, 0x0

    move v6, v4

    .line 116
    :goto_4
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v7, :cond_d

    .line 117
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    if-ltz v4, :cond_d

    const/16 v5, 0x9

    if-gt v4, v5, :cond_d

    add-int/lit8 v5, v2, 0x1

    .line 118
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v8, 0x7d

    if-ne v5, v8, :cond_d

    .line 119
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    move v1, v4

    .line 142
    :cond_b
    if-le v1, v0, :cond_c

    move v0, v1

    .line 145
    :cond_c
    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    move v4, v6

    .line 146
    goto :goto_2

    .line 124
    :cond_d
    add-int/lit8 v8, v2, -0x1

    .line 125
    const/4 v4, -0x1

    .line 126
    if-ge v2, v7, :cond_17

    const/16 v9, 0x31

    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-gt v9, v1, :cond_16

    const/16 v2, 0x39

    if-gt v1, v2, :cond_16

    .line 127
    add-int/lit8 v2, v1, -0x30

    move v10, v2

    move v2, v1

    move v1, v10

    .line 128
    :goto_5
    if-ge v5, v7, :cond_15

    const/16 v9, 0x30

    add-int/lit8 v4, v5, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-gt v9, v2, :cond_14

    const/16 v5, 0x39

    if-gt v2, v5, :cond_14

    .line 129
    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v5, v2, -0x30

    add-int/2addr v1, v5

    .line 130
    const/16 v5, 0x100

    if-lt v1, v5, :cond_13

    move v10, v2

    move v2, v4

    move v4, v10

    .line 135
    :goto_6
    if-ltz v1, :cond_e

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_b

    .line 136
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Argument syntax error in pattern \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\" at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-interface {p0, v8, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_f
    if-lez v4, :cond_10

    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    add-int/lit16 v2, v4, 0x100

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 161
    :cond_10
    add-int/lit8 v0, v0, 0x1

    .line 162
    if-ge v0, p2, :cond_11

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Fewer than minimum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " arguments in pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_11
    if-le v0, p3, :cond_12

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "More than maximum "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " arguments in pattern \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_12
    const/4 v1, 0x0

    int-to-char v0, v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    move v5, v4

    goto/16 :goto_5

    :cond_14
    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_6

    :cond_15
    move v4, v2

    move v2, v5

    goto/16 :goto_6

    :cond_16
    move v2, v5

    move v10, v1

    move v1, v4

    move v4, v10

    goto/16 :goto_6

    :cond_17
    move v10, v4

    move v4, v1

    move v1, v10

    goto/16 :goto_6

    :cond_18
    move v6, v4

    goto/16 :goto_4
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 311
    if-nez p5, :cond_1

    move v0, v1

    .line 319
    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 320
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 321
    const/16 v4, 0x100

    if-ge v2, v4, :cond_8

    .line 322
    aget-object v4, p1, v2

    .line 323
    if-ne v4, p2, :cond_6

    .line 324
    if-eqz p4, :cond_2

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Value must not be same object as result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    array-length v0, p5

    move v2, v1

    .line 315
    :goto_1
    if-ge v2, v0, :cond_0

    .line 316
    const/4 v3, -0x1

    aput v3, p5, v2

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 329
    if-ge v2, v0, :cond_3

    .line 330
    aput v1, p5, v2

    :cond_3
    :goto_2
    move v2, v3

    .line 344
    goto :goto_0

    .line 333
    :cond_4
    if-ge v2, v0, :cond_5

    .line 334
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    aput v4, p5, v2

    .line 336
    :cond_5
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 339
    :cond_6
    if-ge v2, v0, :cond_7

    .line 340
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    aput v5, p5, v2

    .line 342
    :cond_7
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    :cond_8
    add-int/lit16 v2, v2, -0x100

    add-int/2addr v2, v3

    .line 346
    invoke-virtual {p2, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_9
    return-object p2
.end method

.method public static varargs formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 227
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 228
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Too few values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static varargs formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 252
    if-eqz p3, :cond_0

    array-length v0, p3

    .line 253
    :goto_0
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Too few values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v4

    .line 252
    goto :goto_0

    .line 260
    :cond_1
    const/4 v3, -0x1

    .line 263
    const/4 v1, 0x0

    .line 264
    invoke-static {p0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 265
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 266
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 267
    const/16 v5, 0x100

    if-ge v2, v5, :cond_3

    .line 268
    aget-object v5, p3, v2

    if-ne v5, p1, :cond_6

    .line 269
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    :goto_2
    move v3, v2

    move v2, v0

    .line 278
    goto :goto_1

    .line 271
    :cond_2
    if-nez v1, :cond_6

    .line 272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    goto :goto_2

    .line 276
    :cond_3
    add-int/lit16 v2, v2, -0x100

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_2

    :cond_4
    move v0, v3

    move-object v3, v1

    .line 280
    :goto_3
    if-gez v0, :cond_5

    .line 281
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5
    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v5, p2

    .line 283
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->format(Ljava/lang/String;[Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/lang/String;Z[I)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    :cond_6
    move v2, v3

    goto :goto_2

    :cond_7
    move v0, v3

    move-object v3, v1

    goto :goto_3
.end method

.method public static varargs formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-static {p0, v0, p1, p2}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v1

    .line 206
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 207
    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getArgumentLimit(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method
