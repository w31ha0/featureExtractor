.class public final Lc/a/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lc/a/a/b/a;->a:I

    sput v0, Lc/a/a/b/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3

    sget v0, Lc/a/a/b/a;->a:I

    if-nez v0, :cond_0

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    sput v0, Lc/a/a/b/a;->a:I

    :cond_0
    :goto_0
    sget v0, Lc/a/a/b/a;->a:I

    return v0

    :cond_1
    const-string v1, "lin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    sput v0, Lc/a/a/b/a;->a:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    sput v0, Lc/a/a/b/a;->a:I

    goto :goto_0
.end method
