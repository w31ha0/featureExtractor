.class public Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;
.super Ljava/lang/Object;
.source "ICUMessageFormat.java"


# static fields
.field public static EMPTY:Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat; = null

.field private static final QUANTITY_KEY:Ljava/lang/String; = "quantity"

.field private static final TAG:Ljava/lang/String; = "ICUMessageFormat"


# instance fields
.field private args:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private icuFormat:Lcom/ibm/icu/text/MessageFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    const-string/jumbo v1, "{EMPTY}"

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->EMPTY:Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->args:Ljava/util/HashMap;

    .line 38
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->icuFormat:Lcom/ibm/icu/text/MessageFormat;

    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->icuFormat:Lcom/ibm/icu/text/MessageFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessageFormat;->usesNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :cond_0
    return-void
.end method

.method public static getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    const-string/jumbo v0, "ICUMessageFormat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Processing ICU string... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 56
    sget-object v0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->EMPTY:Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    goto :goto_0
.end method


# virtual methods
.method public format()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->icuFormat:Lcom/ibm/icu/text/MessageFormat;

    iget-object v1, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->args:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 88
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withArg(Ljava/lang/String;Ljava/lang/Object;)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->args:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object p0
.end method

.method public withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->args:Ljava/util/HashMap;

    const-string/jumbo v1, "quantity"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object p0
.end method
