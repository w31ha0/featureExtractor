.class public final Lcom/mopub/common/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/Preconditions$NoThrow;
    }
.end annotation


# static fields
.field public static final EMPTY_ARGUMENTS:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/common/Preconditions;->checkArgumentInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/common/Preconditions;->checkStateInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/mopub/common/Preconditions;->checkNotNullInternal(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lcom/mopub/common/Preconditions;->checkUiThreadInternal(ZLjava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static checkArgument(Z)V
    .locals 5
    .param p0, "expression"    # Z

    .prologue
    const/4 v4, 0x1

    .line 30
    const-string v0, "Illegal argument."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v4, v0, v1}, Lcom/mopub/common/Preconditions;->checkArgumentInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public static checkArgument(ZLjava/lang/String;)V
    .locals 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 37
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {p0, v3, p1, v0}, Lcom/mopub/common/Preconditions;->checkArgumentInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/common/Preconditions;->checkArgumentInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method private static varargs checkArgumentInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "allowThrow"    # Z
    .param p2, "errorMessageTemplate"    # Ljava/lang/String;
    .param p3, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 237
    if-eqz p0, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 245
    :goto_0
    return v1

    .line 240
    :cond_0
    invoke-static {p2, p3}, Lcom/mopub/common/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 245
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)V
    .locals 5
    .param p0, "reference"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 75
    const-string v0, "Object can not be null."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v4, v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNullInternal(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "reference"    # Ljava/lang/Object;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 82
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {p0, v3, p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNullInternal(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "reference"    # Ljava/lang/Object;
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/common/Preconditions;->checkNotNullInternal(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method private static varargs checkNotNullInternal(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "reference"    # Ljava/lang/Object;
    .param p1, "allowThrow"    # Z
    .param p2, "errorMessageTemplate"    # Ljava/lang/String;
    .param p3, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 263
    if-eqz p0, :cond_0

    .line 264
    const/4 v1, 0x1

    .line 271
    :goto_0
    return v1

    .line 266
    :cond_0
    invoke-static {p2, p3}, Lcom/mopub/common/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 268
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkState(Z)V
    .locals 5
    .param p0, "expression"    # Z

    .prologue
    const/4 v4, 0x1

    .line 52
    const-string v0, "Illegal state."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {p0, v4, v0, v1}, Lcom/mopub/common/Preconditions;->checkStateInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 4
    .param p0, "expression"    # Z
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 59
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {p0, v3, p1, v0}, Lcom/mopub/common/Preconditions;->checkStateInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expression"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/mopub/common/Preconditions;->checkStateInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private static varargs checkStateInternal(ZZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 2
    .param p0, "expression"    # Z
    .param p1, "allowThrow"    # Z
    .param p2, "errorMessageTemplate"    # Ljava/lang/String;
    .param p3, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 251
    const/4 v1, 0x1

    .line 258
    :goto_0
    return v1

    .line 253
    :cond_0
    invoke-static {p2, p3}, Lcom/mopub/common/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkUiThread()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 97
    const-string v0, "This method must be called from the UI thread."

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v4, v0, v1}, Lcom/mopub/common/Preconditions;->checkUiThreadInternal(ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public static checkUiThread(Ljava/lang/String;)V
    .locals 4
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 105
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {v3, p0, v0}, Lcom/mopub/common/Preconditions;->checkUiThreadInternal(ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public static varargs checkUiThread(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "errorMessageTemplate"    # Ljava/lang/String;
    .param p1, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/mopub/common/Preconditions;->checkUiThreadInternal(ZLjava/lang/String;[Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method private static varargs checkUiThreadInternal(ZLjava/lang/String;[Ljava/lang/Object;)Z
    .locals 3
    .param p0, "allowThrow"    # Z
    .param p1, "errorMessageTemplate"    # Ljava/lang/String;
    .param p2, "errorMessageArgs"    # [Ljava/lang/Object;

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x1

    .line 285
    :goto_0
    return v1

    .line 280
    :cond_0
    invoke-static {p1, p2}, Lcom/mopub/common/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "errorMessage":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 282
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 293
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 296
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 299
    .end local p0    # "template":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 297
    .restart local p0    # "template":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 298
    .local v0, "exception":Ljava/util/IllegalFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MoPub preconditions had a format exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/IllegalFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
