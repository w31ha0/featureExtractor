.class public Lorg/chromium/net/impl/ImplVersion;
.super Ljava/lang/Object;
.source "ImplVersion.java"


# static fields
.field private static final API_LEVEL:I = 0x3

.field private static final CRONET_VERSION:Ljava/lang/String; = "58.0.3029.83"

.field private static final LAST_CHANGE:Ljava/lang/String; = "e76cc6b93d194dac46a61d88327a96a0d5cf9894-refs/branch-heads/3029@{#754}"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiLevel()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x3

    return v0
.end method

.method public static getCronetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "58.0.3029.83"

    return-object v0
.end method

.method public static getCronetVersionWithLastChange()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "58.0.3029.83@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "e76cc6b93d194dac46a61d88327a96a0d5cf9894-refs/branch-heads/3029@{#754}"

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "e76cc6b93d194dac46a61d88327a96a0d5cf9894-refs/branch-heads/3029@{#754}"

    return-object v0
.end method
