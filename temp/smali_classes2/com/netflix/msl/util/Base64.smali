.class public Lcom/netflix/msl/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final BASE64_PATTERN:Ljava/util/regex/Pattern;

.field private static final WHITESPACE_REGEX:Ljava/lang/String; = "\\s"

.field private static impl:Lcom/netflix/msl/util/Base64$Base64Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/netflix/msl/util/Base64;->BASE64_PATTERN:Ljava/util/regex/Pattern;

    .line 107
    new-instance v0, Lcom/netflix/msl/util/Base64Secure;

    invoke-direct {v0}, Lcom/netflix/msl/util/Base64Secure;-><init>()V

    sput-object v0, Lcom/netflix/msl/util/Base64;->impl:Lcom/netflix/msl/util/Base64$Base64Impl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/netflix/msl/util/Base64;->impl:Lcom/netflix/msl/util/Base64$Base64Impl;

    invoke-interface {v0, p0}, Lcom/netflix/msl/util/Base64$Base64Impl;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/netflix/msl/util/Base64;->impl:Lcom/netflix/msl/util/Base64$Base64Impl;

    invoke-interface {v0, p0}, Lcom/netflix/msl/util/Base64$Base64Impl;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isValidBase64(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 42
    const-string/jumbo v0, "\\s"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sget-object v1, Lcom/netflix/msl/util/Base64;->BASE64_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static setImpl(Lcom/netflix/msl/util/Base64$Base64Impl;)V
    .locals 2

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Base64 implementation cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    sput-object p0, Lcom/netflix/msl/util/Base64;->impl:Lcom/netflix/msl/util/Base64$Base64Impl;

    .line 81
    return-void
.end method
