.class public Lcom/mopub/common/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitMaskContainsFlag(II)Z
    .locals 1
    .param p0, "bitMask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 48
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateUniqueId()J
    .locals 6

    .prologue
    .line 36
    .local v0, "newValue":J
    .local v2, "result":J
    :cond_0
    sget-object v4, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 37
    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 38
    const-wide v4, 0x7ffffffffffffffeL

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 39
    const-wide/16 v0, 0x1

    .line 41
    :cond_1
    sget-object v4, Lcom/mopub/common/util/Utils;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    return-wide v2
.end method

.method public static sha1(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 15
    .local v2, "digest":Ljava/security/MessageDigest;
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 16
    .local v1, "bytes":[B
    const/4 v6, 0x0

    array-length v7, v1

    invoke-virtual {v2, v1, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 17
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 19
    array-length v6, v1

    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, v1, v5

    .line 20
    .local v0, "b":B
    const-string v7, "%02X"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "b":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 25
    .end local v1    # "bytes":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    :goto_1
    return-object v5

    .line 24
    :catch_0
    move-exception v3

    .line 25
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_1
.end method
