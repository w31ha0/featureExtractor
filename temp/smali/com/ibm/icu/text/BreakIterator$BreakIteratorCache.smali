.class final Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;
.super Ljava/lang/Object;
.source "BreakIterator.java"


# instance fields
.field private iter:Lcom/ibm/icu/text/BreakIterator;

.field private where:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/BreakIterator;)V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    iput-object p1, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->where:Lcom/ibm/icu/util/ULocale;

    .line 915
    invoke-virtual {p2}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator;

    iput-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->iter:Lcom/ibm/icu/text/BreakIterator;

    .line 916
    return-void
.end method


# virtual methods
.method createBreakInstance()Lcom/ibm/icu/text/BreakIterator;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->iter:Lcom/ibm/icu/text/BreakIterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/BreakIterator;

    return-object v0
.end method

.method getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/ibm/icu/text/BreakIterator$BreakIteratorCache;->where:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method
