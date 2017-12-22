.class Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
.super Lcom/ibm/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNames.java"


# instance fields
.field private contexts:[Lcom/ibm/icu/text/DisplayContext;

.field private locale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 3

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/ibm/icu/text/LocaleDisplayNames;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Lcom/ibm/icu/util/ULocale;

    .line 458
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 460
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/ibm/icu/text/DisplayContext;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Lcom/ibm/icu/text/DisplayContext;

    .line 461
    return-void

    .line 458
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;Lcom/ibm/icu/text/LocaleDisplayNames$1;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V

    return-void
.end method


# virtual methods
.method public localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 532
    return-object p1
.end method
