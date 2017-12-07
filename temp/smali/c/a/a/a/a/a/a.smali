.class public final Lc/a/a/a/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "org.apache.harmony.awt.internal.nls.messages"

    invoke-static {v0, v1}, Lc/a/a/a/a/a/a;->a(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    sget-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Missing message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lc/a/a/a/a/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x7b

    const/4 v8, 0x1

    const/4 v5, 0x0

    sget-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v0, Lc/a/a/a/a/a/a;->a:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    move v3, v5

    :goto_1
    array-length v4, p1

    if-lt v3, v4, :cond_2

    invoke-virtual {v0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    move v4, v3

    move v3, v5

    :goto_2
    if-gez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :cond_2
    aget-object v4, p1, v3

    if-nez v4, :cond_3

    const-string v4, "<null>"

    aput-object v4, v2, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_6

    sub-int v5, v4, v8

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_6

    if-eq v4, v8, :cond_5

    sub-int v5, v4, v8

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    :goto_4
    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    int-to-byte v5, v5

    if-ltz v5, :cond_8

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7d

    if-eq v6, v7, :cond_9

    :cond_8
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v2

    if-lt v5, v3, :cond_a

    const-string v3, "<missing argument>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v3, v4, 0x3

    goto :goto_4

    :cond_a
    aget-object v3, v2, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method private static a(Ljava/util/Locale;Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    :try_start_0
    new-instance v0, Lc/a/a/a/a/a/b;

    invoke-direct {v0, p1, p0}, Lc/a/a/a/a/a/b;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
