.class public final Lcom/netflix/mediaclient/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static final REQUEST_PERMISSION_TO_DUMP_CACHE:I = 0x91

.field public static final REQUEST_PERMISSION_TO_PERF_DUMP:I = 0xe8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static shouldRequestPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 65
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldRequestPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 77
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 79
    invoke-static {p0, v3}, Lcom/netflix/mediaclient/util/PermissionUtils;->shouldRequestPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0

    .line 77
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static verifyPermissions([I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 27
    array-length v2, p0

    if-ge v2, v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    array-length v3, p0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget v4, p0, v2

    .line 33
    if-nez v4, :cond_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public static verifyPermissions([II)Z
    .locals 1

    .prologue
    .line 50
    array-length v0, p0

    if-eq v0, p1, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/PermissionUtils;->verifyPermissions([I)Z

    move-result v0

    goto :goto_0
.end method
