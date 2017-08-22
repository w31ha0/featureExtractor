.class public Lcom/mopub/common/util/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# static fields
.field private static absolutePattern:Ljava/util/regex/Pattern;

.field private static percentagePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "((\\d{1,2})|(100))%"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/util/Strings;->percentagePattern:Ljava/util/regex/Pattern;

    .line 13
    const-string v0, "\\d{2}:\\d{2}:\\d{2}(.\\d{3})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/util/Strings;->absolutePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "numberBytesRead":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .local v2, "out":Ljava/lang/StringBuilder;
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 20
    .local v0, "bytes":[B
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isAbsoluteTracker(Ljava/lang/String;)Z
    .locals 1
    .param p0, "progressValue"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/common/util/Strings;->absolutePattern:Ljava/util/regex/Pattern;

    .line 37
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPercentageTracker(Ljava/lang/String;)Z
    .locals 1
    .param p0, "progressValue"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mopub/common/util/Strings;->percentagePattern:Ljava/util/regex/Pattern;

    .line 32
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p0, "progressValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 42
    if-nez p0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 46
    :cond_1
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "split":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 51
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method
