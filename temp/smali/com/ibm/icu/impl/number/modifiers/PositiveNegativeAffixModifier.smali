.class public Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;
.super Lcom/ibm/icu/impl/number/Format$BeforeFormat;
.source "PositiveNegativeAffixModifier.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Modifier$PositiveNegativeModifier;


# instance fields
.field private final negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

.field private final positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/number/Modifier$AffixModifier;Lcom/ibm/icu/impl/number/Modifier$AffixModifier;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/Format$BeforeFormat;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    .line 27
    iput-object p2, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    .line 28
    return-void
.end method

.method static exportPositiveNegative(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 49
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 50
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/Properties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 51
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Lcom/ibm/icu/impl/number/Properties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Properties;

    .line 52
    return-void

    .line 48
    :cond_0
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_1
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/Modifier;->getSuffix()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 50
    :cond_2
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 51
    :cond_3
    invoke-interface {p2}, Lcom/ibm/icu/impl/number/Modifier;->getSuffix()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public before(Lcom/ibm/icu/impl/number/FormatQuantity;Lcom/ibm/icu/impl/number/ModifierHolder;)V
    .locals 1

    .prologue
    .line 37
    invoke-interface {p1}, Lcom/ibm/icu/impl/number/FormatQuantity;->isNegative()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;

    move-result-object v0

    .line 38
    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/number/ModifierHolder;->add(Lcom/ibm/icu/impl/number/Modifier;)V

    .line 39
    return-void
.end method

.method public export(Lcom/ibm/icu/impl/number/Properties;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->exportPositiveNegative(Lcom/ibm/icu/impl/number/Properties;Lcom/ibm/icu/impl/number/Modifier;Lcom/ibm/icu/impl/number/Modifier;)V

    .line 44
    return-void
.end method

.method public getModifier(Z)Lcom/ibm/icu/impl/number/Modifier;
    .locals 1

    .prologue
    .line 32
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->negative:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/modifiers/PositiveNegativeAffixModifier;->positive:Lcom/ibm/icu/impl/number/Modifier$AffixModifier;

    goto :goto_0
.end method
