.class public final Lcom/netflix/mediaclient/util/MSLUtils;
.super Ljava/lang/Object;
.source "MSLUtils.java"


# static fields
.field private static final MSL_APPBOOT_BLACKLISTED_DEVICE:I = 0x3289f

.field private static final MSL_USERAUTH_ENTITY_MISMATCH:I = 0x320e8

.field private static final TAG:Ljava/lang/String; = "nf_msl_utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static dumpErrorHeader(Lcom/netflix/msl/msg/ErrorHeader;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public static isBlackListed(Lcom/netflix/msl/msg/ErrorHeader;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/util/MSLUtils;->dumpErrorHeader(Lcom/netflix/msl/msg/ErrorHeader;)V

    .line 69
    invoke-virtual {p0}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v1

    const v2, 0x3289f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUserAuthEntityMismatch(Lcom/android/volley/VolleyError;)Z
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 43
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    .line 45
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->getErrorHeader()Lcom/netflix/msl/msg/ErrorHeader;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/msl/msg/ErrorHeader;->getInternalCode()I

    move-result v1

    const v2, 0x320e8

    if-ne v1, v2, :cond_0

    .line 47
    invoke-static {v0}, Lcom/netflix/mediaclient/util/MSLUtils;->dumpErrorHeader(Lcom/netflix/msl/msg/ErrorHeader;)V

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
