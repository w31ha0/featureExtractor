.class public Lcom/biznessapps/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static emailPattern:Ljava/util/regex/Pattern; = null

.field private static final emailPatternText:Ljava/lang/String; = "(^[\\w\\.=-]+)@([\\w]+[\\.-][\\w]+)$"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "(^[\\w\\.=-]+)@([\\w]+[\\.-][\\w]+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/utils/StringUtils;->emailPattern:Ljava/util/regex/Pattern;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs checkTextFieldsOnEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "checkedValues"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    array-length v5, p0

    if-nez v5, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v4

    .line 53
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 54
    .local v1, "checkedValue":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 55
    const/4 v4, 0x1

    goto :goto_0

    .line 53
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "primaryStr"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v3, 0x0

    .line 98
    .local v3, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 99
    .local v4, "s":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 100
    const-string v6, ""

    .line 126
    :goto_0
    return-object v6

    .line 103
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v4    # "s":Ljava/lang/String;
    .local v5, "s":Ljava/lang/String;
    :try_start_1
    const-string v6, "!"

    const-string v7, "%21"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 105
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    :try_start_2
    const-string v6, "#"

    const-string v7, "%23"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    :goto_1
    move-object v6, v3

    .line 126
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    :try_start_3
    const-string v6, "%"

    const-string v7, "%25"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "decodedString":Ljava/lang/String;
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_1

    .line 119
    .end local v0    # "decodedString":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 123
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    move-object v3, p0

    goto :goto_1

    .line 108
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v5    # "s":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v4, v5

    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_2
.end method

.method public static isCorrectEmail(Ljava/lang/String;)Z
    .locals 1
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/biznessapps/utils/StringUtils;->emailPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 28
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty([Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # [Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
