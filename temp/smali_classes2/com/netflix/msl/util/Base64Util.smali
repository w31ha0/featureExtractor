.class public Lcom/netflix/msl/util/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static platformUrlDecode(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "\\."

    const-string/jumbo v1, "="

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/xml/bind/DatatypeConverter;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static platformUrlEncode([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 15
    invoke-static {p0}, Ljavax/xml/bind/DatatypeConverter;->printBase64Binary([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "="

    const-string/jumbo v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
