.class public abstract Lcom/ibm/icu/text/UFormat;
.super Ljava/text/Format;
.source "UFormat.java"


# instance fields
.field private actualLocale:Lcom/ibm/icu/util/ULocale;

.field private validLocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/UFormat;->actualLocale:Lcom/ibm/icu/util/ULocale;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/UFormat;->validLocale:Lcom/ibm/icu/util/ULocale;

    goto :goto_0
.end method

.method final setLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_0

    move v2, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    move v2, v1

    .line 85
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 92
    :cond_2
    iput-object p1, p0, Lcom/ibm/icu/text/UFormat;->validLocale:Lcom/ibm/icu/util/ULocale;

    .line 93
    iput-object p2, p0, Lcom/ibm/icu/text/UFormat;->actualLocale:Lcom/ibm/icu/util/ULocale;

    .line 94
    return-void
.end method
