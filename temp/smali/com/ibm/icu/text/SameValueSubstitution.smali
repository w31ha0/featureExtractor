.class Lcom/ibm/icu/text/SameValueSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 580
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 581
    const-string/jumbo v0, "=="

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "== is not a legal token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 1

    .prologue
    .line 633
    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 1

    .prologue
    .line 623
    return-wide p1
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 646
    const/16 v0, 0x3d

    return v0
.end method

.method public transformNumber(D)D
    .locals 1

    .prologue
    .line 605
    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 1

    .prologue
    .line 596
    return-wide p1
.end method
