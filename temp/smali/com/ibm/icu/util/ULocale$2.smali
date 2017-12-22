.class final Lcom/ibm/icu/util/ULocale$2;
.super Lcom/ibm/icu/impl/SoftCache;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/util/Locale;",
        "Lcom/ibm/icu/util/ULocale;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/util/Locale;Ljava/lang/Void;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 318
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toULocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/ULocale$2;->createInstance(Ljava/util/Locale;Ljava/lang/Void;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method
