.class Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;
.super Ljava/lang/Object;
.source "NTLMEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MD4"
.end annotation


# instance fields
.field protected A:I

.field protected B:I

.field protected C:I

.field protected D:I

.field protected count:J

.field protected dataBuffer:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    const v0, 0x67452301

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1070
    const v0, -0x10325477

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1071
    const v0, -0x67452302

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1072
    const v0, 0x10325476

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1073
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    .line 1074
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    .line 1077
    return-void
.end method


# virtual methods
.method getOutput()[B
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1110
    iget-wide v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v7, 0x3f

    and-long/2addr v5, v7

    long-to-int v0, v5

    .line 1111
    .local v0, "bufferIndex":I
    const/16 v5, 0x38

    if-ge v0, v5, :cond_0

    rsub-int/lit8 v2, v0, 0x38

    .line 1112
    .local v2, "padLen":I
    :goto_0
    add-int/lit8 v5, v2, 0x8

    new-array v3, v5, [B

    .line 1115
    .local v3, "postBytes":[B
    const/16 v5, -0x80

    aput-byte v5, v3, v10

    .line 1117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v11, :cond_1

    .line 1118
    add-int v5, v2, v1

    iget-wide v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    mul-int/lit8 v8, v1, 0x8

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    .line 1117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1111
    .end local v1    # "i":I
    .end local v2    # "padLen":I
    .end local v3    # "postBytes":[B
    :cond_0
    rsub-int/lit8 v2, v0, 0x78

    goto :goto_0

    .line 1122
    .restart local v1    # "i":I
    .restart local v2    # "padLen":I
    .restart local v3    # "postBytes":[B
    :cond_1
    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->update([B)V

    .line 1125
    const/16 v5, 0x10

    new-array v4, v5, [B

    .line 1126
    .local v4, "result":[B
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v4, v5, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1127
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1128
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v4, v5, v11}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1129
    iget v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->writeULong([BII)V

    .line 1130
    return-object v4
.end method

.method protected processBuffer()V
    .locals 10

    .prologue
    const/16 v9, 0x10

    .line 1135
    new-array v4, v9, [I

    .line 1137
    .local v4, "d":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_0

    .line 1138
    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v7, v5, 0x4

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget-object v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v8, v5, 0x4

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v8, v5, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    mul-int/lit8 v8, v5, 0x4

    add-int/lit8 v8, v8, 0x3

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    add-int/2addr v6, v7

    aput v6, v4, v5

    .line 1137
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1145
    .local v0, "AA":I
    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1146
    .local v1, "BB":I
    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1147
    .local v2, "CC":I
    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1148
    .local v3, "DD":I
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round1([I)V

    .line 1149
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round2([I)V

    .line 1150
    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->round3([I)V

    .line 1151
    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    add-int/2addr v6, v0

    iput v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1152
    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1153
    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    add-int/2addr v6, v2

    iput v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1154
    iget v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    add-int/2addr v6, v3

    iput v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1156
    return-void
.end method

.method protected round1([I)V
    .locals 8
    .param p1, "d"    # [I

    .prologue
    const/16 v7, 0x13

    const/16 v6, 0xb

    const/4 v5, 0x7

    const/4 v4, 0x3

    .line 1159
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1160
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1161
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1162
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v4

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1164
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1165
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1166
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1167
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1169
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1170
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1171
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1172
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1174
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1175
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1176
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1177
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->F(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1178
    return-void
.end method

.method protected round2([I)V
    .locals 9
    .param p1, "d"    # [I

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0x9

    const/4 v6, 0x5

    const/4 v5, 0x3

    const v4, 0x5a827999

    .line 1181
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1182
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1183
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1184
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1186
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1187
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1188
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1189
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1191
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1192
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1193
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1194
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1196
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1197
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1198
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1199
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->G(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1201
    return-void
.end method

.method protected round3([I)V
    .locals 9
    .param p1, "d"    # [I

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x3

    const v4, 0x6ed9eba1

    .line 1204
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1205
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1206
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1207
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1209
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1210
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1211
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1212
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1214
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1215
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v6

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1216
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1217
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1219
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v5

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    .line 1220
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v7

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    .line 1221
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p1, v1

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    .line 1222
    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->C:I

    iget v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->D:I

    iget v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->A:I

    invoke-static {v1, v2, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->H(III)I

    move-result v1

    add-int/2addr v0, v1

    aget v1, p1, v8

    add-int/2addr v0, v1

    add-int/2addr v0, v4

    invoke-static {v0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->rotintlft(II)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->B:I

    .line 1224
    return-void
.end method

.method update([B)V
    .locals 7
    .param p1, "input"    # [B

    .prologue
    .line 1083
    iget-wide v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    const-wide/16 v5, 0x3f

    and-long/2addr v3, v5

    long-to-int v0, v3

    .line 1084
    .local v0, "curBufferPos":I
    const/4 v1, 0x0

    .line 1085
    .local v1, "inputIndex":I
    :goto_0
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 1089
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    array-length v3, v3

    sub-int v2, v3, v0

    .line 1090
    .local v2, "transferAmt":I
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    iget-wide v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    .line 1092
    const/4 v0, 0x0

    .line 1093
    add-int/2addr v1, v2

    .line 1094
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->processBuffer()V

    goto :goto_0

    .line 1099
    .end local v2    # "transferAmt":I
    :cond_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 1100
    array-length v3, p1

    sub-int v2, v3, v1

    .line 1101
    .restart local v2    # "transferAmt":I
    iget-object v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->dataBuffer:[B

    invoke-static {p1, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1102
    iget-wide v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$MD4;->count:J

    .line 1103
    add-int/2addr v0, v2

    .line 1105
    .end local v2    # "transferAmt":I
    :cond_1
    return-void
.end method
