.class public Lcom/ibm/icu/impl/number/RoundingUtils;
.super Ljava/lang/Object;
.source "RoundingUtils.java"


# static fields
.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_16_DIGITS:[Ljava/math/MathContext;

.field private static final MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    .line 121
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_16_DIGITS:[Ljava/math/MathContext;

    move v0, v1

    .line 124
    :goto_0
    sget-object v2, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_16_DIGITS:[Ljava/math/MathContext;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 125
    sget-object v2, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    new-instance v3, Ljava/math/MathContext;

    invoke-static {v0}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    aput-object v3, v2, v0

    .line 126
    sget-object v2, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_16_DIGITS:[Ljava/math/MathContext;

    new-instance v3, Ljava/math/MathContext;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/math/MathContext;-><init>(I)V

    aput-object v3, v2, v0

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public static getMathContextOr16Digits(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Ljava/math/MathContext;
    .locals 2

    .prologue
    .line 157
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 158
    if-nez v0, :cond_1

    .line 159
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 161
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_16_DIGITS:[Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    aget-object v0, v1, v0

    .line 163
    :cond_1
    return-object v0
.end method

.method public static getMathContextOrUnlimited(Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;)Ljava/math/MathContext;
    .locals 2

    .prologue
    .line 139
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 140
    if-nez v0, :cond_1

    .line 141
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 143
    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    aget-object v0, v1, v0

    .line 145
    :cond_1
    return-object v0
.end method

.method public static getRoundingDirection(ZZIILjava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    packed-switch p3, :pswitch_data_0

    .line 91
    :goto_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rounding is required on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 85
    :cond_0
    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    move v0, p1

    .line 50
    goto :goto_1

    .line 54
    :pswitch_3
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_1

    .line 57
    :pswitch_4
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 59
    goto :goto_1

    :pswitch_6
    move v0, v1

    .line 63
    goto :goto_1

    .line 68
    :pswitch_7
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 74
    goto :goto_1

    .line 79
    :pswitch_9
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    :pswitch_a
    move v0, p0

    .line 81
    goto :goto_1

    :pswitch_b
    move v0, v1

    .line 85
    goto :goto_1

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_9
    .end packed-switch

    .line 57
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 68
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_8
    .end packed-switch

    .line 79
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_1
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static roundsAtMidpoint(I)Z
    .locals 1

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_0

    .line 113
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 110
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
