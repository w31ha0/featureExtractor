.class public final Lcom/ibm/icu/impl/ICUDebug;
.super Ljava/lang/Object;
.source "ICUDebug.java"


# static fields
.field private static debug:Z

.field private static help:Z

.field public static final isJDK14OrHigher:Z

.field public static final javaVersion:Lcom/ibm/icu/util/VersionInfo;

.field public static final javaVersionString:Ljava/lang/String;

.field private static params:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    :try_start_0
    const-string/jumbo v0, "ICUDebug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    .line 23
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v3, "help"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    :cond_0
    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    .line 26
    sget-boolean v0, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\nICUDebug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 31
    :cond_1
    const-string/jumbo v0, "java.version"

    const-string/jumbo v3, "0"

    invoke-static {v0, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->javaVersionString:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->getInstanceLenient(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUDebug;->javaVersion:Lcom/ibm/icu/util/VersionInfo;

    .line 75
    const-string/jumbo v0, "1.4.0"

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    .line 77
    sget-object v3, Lcom/ibm/icu/impl/ICUDebug;->javaVersion:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result v0

    if-ltz v0, :cond_4

    :goto_3
    sput-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->isJDK14OrHigher:Z

    .line 78
    return-void

    :cond_2
    move v0, v2

    .line 22
    goto :goto_1

    :cond_3
    move v0, v2

    .line 23
    goto :goto_2

    :cond_4
    move v1, v2

    .line 77
    goto :goto_3

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static enabled(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 85
    sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v1, :cond_1

    .line 86
    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 87
    :cond_0
    sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    if-eqz v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nICUDebug.enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    :cond_1
    return v0
.end method

.method public static getInstanceLenient(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 38
    const/4 v0, 0x4

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    move v4, v1

    .line 41
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 42
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 43
    const/16 v7, 0x30

    if-lt v2, v7, :cond_0

    const/16 v7, 0x39

    if-le v2, v7, :cond_3

    .line 44
    :cond_0
    if-eqz v4, :cond_5

    .line 45
    if-ne v0, v8, :cond_2

    .line 69
    :cond_1
    :goto_1
    aget v0, v6, v1

    aget v1, v6, v5

    const/4 v2, 0x2

    aget v2, v6, v2

    aget v3, v6, v8

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    :goto_2
    move v4, v2

    move v2, v3

    .line 67
    goto :goto_0

    .line 53
    :cond_3
    if-eqz v4, :cond_4

    .line 54
    aget v7, v6, v0

    mul-int/lit8 v7, v7, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v2, v7

    aput v2, v6, v0

    .line 55
    aget v2, v6, v0

    const/16 v7, 0xff

    if-le v2, v7, :cond_5

    .line 59
    aput v1, v6, v0

    goto :goto_1

    .line 64
    :cond_4
    add-int/lit8 v2, v2, -0x30

    aput v2, v6, v0

    move v2, v5

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method public static value(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 94
    const-string/jumbo v0, "false"

    .line 95
    sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->debug:Z

    if-eqz v1, :cond_2

    .line 96
    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 97
    if-eq v1, v3, :cond_1

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 99
    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    sget-object v1, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_3

    .line 100
    add-int/lit8 v1, v0, 0x1

    .line 101
    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 102
    sget-object v2, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/ICUDebug;->params:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/ibm/icu/impl/ICUDebug;->help:Z

    if-eqz v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nICUDebug.value("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_2
    return-object v0

    .line 104
    :cond_3
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
