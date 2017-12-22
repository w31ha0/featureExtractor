.class public Lcom/ibm/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lcom/ibm/icu/text/PluralRules$IFixedDecimal;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/text/PluralRules$FixedDecimal;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final baseFactor:I

.field public final decimalDigits:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final decimalDigitsWithoutTrailingZeros:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final hasIntegerValue:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final integerValue:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isNegative:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final source:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCountWithoutTrailingZeros:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    .line 738
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 715
    invoke-static {p1, p2, p3}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 716
    return-void
.end method

.method public constructor <init>(DIJ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 672
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    .line 673
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_1

    neg-double v0, p1

    :goto_1
    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    .line 674
    iput p3, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 675
    iput-wide p4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    .line 676
    const-wide v0, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v0, p1, v0

    if-lez v0, :cond_2

    const-wide v0, 0xde0b6b3a7640000L

    :goto_2
    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    .line 679
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v2, v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    .line 693
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_4

    .line 694
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    .line 706
    :goto_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    .line 707
    return-void

    .line 672
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v0, p1

    .line 673
    goto :goto_1

    .line 676
    :cond_2
    double-to-long v0, p1

    goto :goto_2

    .line 679
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move v0, p3

    .line 699
    :goto_5
    const-wide/16 v2, 0xa

    rem-long v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 700
    const-wide/16 v2, 0xa

    div-long/2addr p4, v2

    .line 701
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 703
    :cond_5
    iput-wide p4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 704
    iput v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 808
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    .line 809
    return-void
.end method

.method public static decimals(D)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 797
    :cond_1
    :goto_0
    return v0

    .line 764
    :cond_2
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_3

    .line 765
    neg-double p0, p0

    .line 767
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-nez v0, :cond_4

    move v0, v1

    .line 768
    goto :goto_0

    .line 770
    :cond_4
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v0, p0, v2

    if-gez v0, :cond_6

    .line 771
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, p0

    double-to-long v2, v2

    const-wide/32 v4, 0xf4240

    rem-long v4, v2, v4

    .line 772
    const/16 v2, 0xa

    const/4 v0, 0x6

    :goto_1
    if-lez v0, :cond_5

    .line 773
    int-to-long v6, v2

    rem-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    .line 772
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    move v0, v1

    .line 777
    goto :goto_0

    .line 779
    :cond_6
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v2, "%1.15e"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 780
    const/16 v0, 0x65

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 781
    add-int/lit8 v0, v4, 0x1

    .line 782
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2b

    if-ne v2, v5, :cond_7

    .line 783
    add-int/lit8 v0, v0, 0x1

    .line 785
    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 787
    add-int/lit8 v2, v4, -0x2

    sub-int/2addr v2, v0

    .line 788
    if-gez v2, :cond_8

    move v0, v1

    .line 789
    goto :goto_0

    .line 791
    :cond_8
    add-int/lit8 v0, v4, -0x1

    move v1, v0

    move v0, v2

    :goto_2
    if-lez v0, :cond_1

    .line 792
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x30

    if-ne v2, v4, :cond_1

    .line 795
    add-int/lit8 v2, v0, -0x1

    .line 791
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_2
.end method

.method private static getFractionalDigits(DI)I
    .locals 4

    .prologue
    .line 719
    if-nez p2, :cond_0

    .line 720
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    .line 722
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 723
    neg-double p0, p0

    .line 725
    :cond_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 726
    int-to-double v2, v0

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 727
    int-to-long v0, v0

    rem-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getOperand(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 847
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;

    move-result-object v0

    return-object v0
.end method

.method private static getVisibleFractionCount(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 813
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 814
    if-nez v1, :cond_0

    .line 815
    const/4 v0, 0x0

    .line 817
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 858
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 859
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 859
    goto :goto_0

    .line 861
    :cond_2
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 862
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 864
    :cond_3
    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v3, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-eq v2, v3, :cond_4

    .line 865
    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v3, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 867
    :cond_4
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    sub-long/2addr v2, v4

    .line 868
    cmp-long v4, v2, v6

    if-eqz v4, :cond_5

    .line 869
    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 871
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 526
    check-cast p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->compareTo(Lcom/ibm/icu/text/PluralRules$FixedDecimal;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 962
    iget-boolean v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    neg-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 881
    if-nez p1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return v1

    .line 884
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v0

    .line 885
    goto :goto_0

    .line 887
    :cond_2
    instance-of v2, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    if-eqz v2, :cond_0

    .line 890
    check-cast p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    .line 891
    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v3, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v4, p1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public floatValue()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 952
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    double-to-float v0, v0

    return v0
.end method

.method public getPluralOperand(Lcom/ibm/icu/text/PluralRules$Operand;)D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 830
    sget-object v0, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 837
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    :goto_0
    return-wide v0

    .line 831
    :pswitch_0
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    goto :goto_0

    .line 832
    :pswitch_1
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v0, v0

    goto :goto_0

    .line 833
    :pswitch_2
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    long-to-double v0, v0

    goto :goto_0

    .line 834
    :pswitch_3
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    long-to-double v0, v0

    goto :goto_0

    .line 835
    :pswitch_4
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    int-to-double v0, v0

    goto :goto_0

    .line 836
    :pswitch_5
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    int-to-double v0, v0

    goto :goto_0

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getVisibleDecimalDigitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 594
    iget v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    return v0
.end method

.method public hashCode()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 902
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget v2, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    const-wide v4, 0x4042800000000000L    # 37.0

    iget-wide v6, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 932
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1006
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 994
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 942
    iget-wide v0, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
