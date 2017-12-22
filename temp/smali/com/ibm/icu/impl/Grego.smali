.class public Lcom/ibm/icu/impl/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/Grego;->MONTH_LENGTH:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/impl/Grego;->DAYS_BEFORE:[I

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    .line 53
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public static dayOfWeek(J)I
    .locals 6

    .prologue
    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 111
    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5, v0}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    .line 112
    const/4 v1, 0x0

    aget-wide v0, v0, v1

    long-to-int v0, v0

    .line 113
    if-nez v0, :cond_0

    const/4 v0, 0x7

    .line 114
    :cond_0
    return v0
.end method

.method public static dayToFields(J[I)[I
    .locals 16

    .prologue
    .line 118
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 119
    :cond_0
    const/4 v2, 0x5

    new-array v0, v2, [I

    move-object/from16 p2, v0

    .line 122
    :cond_1
    const-wide/32 v2, 0xaf93a

    add-long v6, p0, v2

    .line 124
    const/4 v2, 0x1

    new-array v2, v2, [J

    .line 125
    const-wide/32 v4, 0x23ab1

    invoke-static {v6, v7, v4, v5, v2}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v4

    .line 126
    const/4 v3, 0x0

    aget-wide v8, v2, v3

    const-wide/32 v10, 0x8eac

    invoke-static {v8, v9, v10, v11, v2}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v8

    .line 127
    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const-wide/16 v12, 0x5b5

    invoke-static {v10, v11, v12, v13, v2}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v10

    .line 128
    const/4 v3, 0x0

    aget-wide v12, v2, v3

    const-wide/16 v14, 0x16d

    invoke-static {v12, v13, v14, v15, v2}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v12

    .line 130
    const-wide/16 v14, 0x190

    mul-long/2addr v4, v14

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v8

    add-long/2addr v4, v14

    const-wide/16 v14, 0x4

    mul-long/2addr v10, v14

    add-long/2addr v4, v10

    add-long/2addr v4, v12

    long-to-int v3, v4

    .line 131
    const/4 v4, 0x0

    aget-wide v4, v2, v4

    long-to-int v2, v4

    .line 132
    const-wide/16 v4, 0x4

    cmp-long v4, v8, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x4

    cmp-long v4, v12, v4

    if-nez v4, :cond_5

    .line 133
    :cond_2
    const/16 v2, 0x16d

    .line 139
    :goto_0
    invoke-static {v3}, Lcom/ibm/icu/impl/Grego;->isLeapYear(I)Z

    move-result v8

    .line 140
    const/4 v4, 0x0

    .line 141
    if-eqz v8, :cond_6

    const/16 v5, 0x3c

    .line 142
    :goto_1
    if-lt v2, v5, :cond_3

    .line 143
    if-eqz v8, :cond_7

    const/4 v4, 0x1

    .line 145
    :cond_3
    :goto_2
    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x6

    div-int/lit16 v5, v4, 0x16f

    .line 146
    sget-object v9, Lcom/ibm/icu/impl/Grego;->DAYS_BEFORE:[I

    if-eqz v8, :cond_8

    add-int/lit8 v4, v5, 0xc

    :goto_3
    aget v4, v9, v4

    sub-int v4, v2, v4

    add-int/lit8 v8, v4, 0x1

    .line 147
    const-wide/16 v10, 0x2

    add-long/2addr v6, v10

    const-wide/16 v10, 0x7

    rem-long/2addr v6, v10

    long-to-int v4, v6

    .line 148
    const/4 v6, 0x1

    if-ge v4, v6, :cond_4

    .line 149
    add-int/lit8 v4, v4, 0x7

    .line 151
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 153
    const/4 v6, 0x0

    aput v3, p2, v6

    .line 154
    const/4 v3, 0x1

    aput v5, p2, v3

    .line 155
    const/4 v3, 0x2

    aput v8, p2, v3

    .line 156
    const/4 v3, 0x3

    aput v4, p2, v3

    .line 157
    const/4 v3, 0x4

    aput v2, p2, v3

    .line 159
    return-object p2

    .line 136
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_6
    const/16 v5, 0x3b

    goto :goto_1

    .line 143
    :cond_7
    const/4 v4, 0x2

    goto :goto_2

    :cond_8
    move v4, v5

    .line 146
    goto :goto_3
.end method

.method public static fieldsToDay(III)J
    .locals 8

    .prologue
    .line 96
    add-int/lit8 v0, p0, -0x1

    .line 97
    mul-int/lit16 v1, v0, 0x16d

    int-to-long v2, v1

    int-to-long v4, v0

    const-wide/16 v6, 0x4

    .line 98
    invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1a444f

    add-long/2addr v2, v4

    int-to-long v4, v0

    const-wide/16 v6, 0x190

    .line 99
    invoke-static {v4, v5, v6, v7}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    int-to-long v0, v0

    const-wide/16 v4, 0x64

    invoke-static {v0, v1, v4, v5}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ)J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    sget-object v1, Lcom/ibm/icu/impl/Grego;->DAYS_BEFORE:[I

    .line 100
    invoke-static {p0}, Lcom/ibm/icu/impl/Grego;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    add-int/2addr v0, p1

    aget v0, v1, v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 101
    const-wide/32 v2, 0x253d8c

    sub-long/2addr v0, v2

    return-wide v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floorDivide(JJ)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 186
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static floorDivide(JJ[J)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 193
    rem-long v0, p0, p2

    aput-wide v0, p4, v4

    .line 194
    div-long v0, p0, p2

    .line 198
    :goto_0
    return-wide v0

    .line 196
    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    .line 197
    mul-long v2, v0, p2

    sub-long v2, p0, v2

    aput-wide v2, p4, v4

    goto :goto_0
.end method

.method public static final isLeapYear(I)Z
    .locals 1

    .prologue
    .line 64
    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final monthLength(II)I
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcom/ibm/icu/impl/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Lcom/ibm/icu/impl/Grego;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    add-int/2addr v0, p1

    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final previousMonthLength(II)I
    .locals 1

    .prologue
    .line 84
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method public static timeToFields(J[I)[I
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 173
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge v0, v1, :cond_1

    .line 174
    :cond_0
    new-array p2, v1, [I

    .line 176
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 177
    const-wide/32 v2, 0x5265c00

    invoke-static {p0, p1, v2, v3, v0}, Lcom/ibm/icu/impl/Grego;->floorDivide(JJ[J)J

    move-result-wide v2

    .line 178
    invoke-static {v2, v3, p2}, Lcom/ibm/icu/impl/Grego;->dayToFields(J[I)[I

    .line 179
    const/4 v1, 0x5

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    long-to-int v0, v2

    aput v0, p2, v1

    .line 180
    return-object p2
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 14

    .prologue
    const v4, 0xea60

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 225
    aget v0, v1, v12

    .line 226
    const v2, 0x36ee80

    div-int v2, v0, v2

    .line 227
    const v3, 0x36ee80

    rem-int/2addr v0, v3

    .line 228
    div-int v3, v0, v4

    .line 229
    rem-int/2addr v0, v4

    .line 230
    div-int/lit16 v4, v0, 0x3e8

    .line 231
    rem-int/lit16 v5, v0, 0x3e8

    .line 233
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string/jumbo v6, "%04d-%02d-%02dT%02d:%02d:%02d.%03dZ"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    aget v8, v1, v9

    .line 234
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aget v8, v1, v10

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v12

    const/4 v1, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    .line 233
    invoke-static {v0, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
