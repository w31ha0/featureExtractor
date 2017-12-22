.class public Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
.super Ljava/lang/Object;
.source "DeviceUniqueId.java"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    invoke-static {}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->getRandom16Bits()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    .line 37
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    .line 30
    return-void
.end method

.method private static getRandom16Bits()I
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 56
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 59
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 62
    return v0
.end method

.method public static parse(J)Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;-><init>()V

    .line 97
    iput-wide p0, v0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    .line 98
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;

    .line 87
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    iget-wide v4, p1, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 72
    .line 74
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    .line 75
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeviceUniqueId [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/DeviceUniqueId;->value:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
