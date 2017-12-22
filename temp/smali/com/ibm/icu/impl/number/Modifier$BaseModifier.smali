.class public abstract Lcom/ibm/icu/impl/number/Modifier$BaseModifier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "Modifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier;
.implements Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p2, p0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 121
    return-void
.end method

.method public getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;
    .locals 0

    .prologue
    .line 125
    return-object p0
.end method
