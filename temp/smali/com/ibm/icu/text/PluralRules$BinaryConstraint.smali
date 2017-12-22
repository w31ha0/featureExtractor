.class abstract Lcom/ibm/icu/text/PluralRules$BinaryConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# instance fields
.field protected final a:Lcom/ibm/icu/text/PluralRules$Constraint;

.field protected final b:Lcom/ibm/icu/text/PluralRules$Constraint;


# direct methods
.method protected constructor <init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V
    .locals 0

    .prologue
    .line 1678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1679
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;->a:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1680
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules$BinaryConstraint;->b:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1681
    return-void
.end method
