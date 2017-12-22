.class public Lorg/chromium/base/SecureRandomInitializer;
.super Ljava/lang/Object;
.source "SecureRandomInitializer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SecureRandom"
    }
.end annotation


# static fields
.field private static final NUM_RANDOM_BYTES:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Ljava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 27
    const/4 v2, 0x0

    .line 29
    const/16 v0, 0x10

    :try_start_0
    new-array v0, v0, [B

    .line 30
    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v3, "/dev/urandom"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 32
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Failed to get enough random data."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 34
    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    invoke-static {v1}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 38
    return-void

    .line 36
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method
