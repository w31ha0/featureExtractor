.class public abstract Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Exportable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
.end method

.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;Lcom/ibm/icu/text/PluralRules;)V
    .locals 0

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;->before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V

    .line 258
    return-void
.end method
