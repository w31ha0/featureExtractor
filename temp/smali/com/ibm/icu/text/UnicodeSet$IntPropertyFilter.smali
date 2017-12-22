.class Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# instance fields
.field prop:I

.field value:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 3205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3206
    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    .line 3207
    iput p2, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    .line 3208
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2

    .prologue
    .line 3211
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
