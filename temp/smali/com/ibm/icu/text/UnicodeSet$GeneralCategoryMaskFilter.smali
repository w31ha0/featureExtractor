.class Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;
.super Ljava/lang/Object;
.source "UnicodeSet.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# instance fields
.field mask:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 3195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3198
    invoke-static {p1}, Lcom/ibm/icu/lang/UCharacter;->getType(I)I

    move-result v1

    shl-int v1, v0, v1

    iget v2, p0, Lcom/ibm/icu/text/UnicodeSet$GeneralCategoryMaskFilter;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
