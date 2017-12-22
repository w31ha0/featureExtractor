.class Lcom/ibm/icu/text/IntegralPartSubstitution;
.super Lcom/ibm/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1095
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/text/NFSubstitution;-><init>(ILcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1096
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2

    .prologue
    .line 1150
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3

    .prologue
    .line 1139
    add-double v0, p1, p3

    return-wide v0
.end method

.method tokenChar()C
    .locals 1

    .prologue
    .line 1163
    const/16 v0, 0x3c

    return v0
.end method

.method public transformNumber(D)D
    .locals 3

    .prologue
    .line 1120
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 1

    .prologue
    .line 1110
    return-wide p1
.end method
