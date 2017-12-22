.class public Lcom/netflix/mediaclient/util/net/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    const-string/jumbo v0, ""

    .line 41
    :goto_0
    return-object v0

    .line 29
    :cond_1
    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 30
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 31
    const/4 v0, 0x0

    .line 35
    :goto_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 36
    if-ltz v1, :cond_4

    .line 38
    :goto_2
    const/16 v2, 0x3a

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 39
    if-lez v2, :cond_2

    if-ge v2, v1, :cond_2

    move v1, v2

    .line 41
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_2
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 52
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 56
    :cond_0
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
