.class Lcom/ibm/icu/text/AbsoluteValueSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1408
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1409
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 1459
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 1449
    neg-double v0, p1

    return-wide v0
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 1472
    const/16 v0, 0x3e

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 1432
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 3

    .prologue
    .line 1422
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method
