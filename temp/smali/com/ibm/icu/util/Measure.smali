.class public Lcom/ibm/icu/util/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# instance fields
.field private final number:Ljava/lang/Number;

.field private final unit:Lcom/ibm/icu/util/MeasureUnit;


# direct methods
.method public constructor <init>(Ljava/lang/Number;Lcom/ibm/icu/util/MeasureUnit;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Number and MeasureUnit must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    iput-object p1, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    .line 49
    iput-object p2, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    .line 50
    return-void
.end method

.method private static numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v2, p1, Lcom/ibm/icu/util/Measure;

    if-nez v2, :cond_2

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    check-cast p1, Lcom/ibm/icu/util/Measure;

    .line 66
    iget-object v2, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    iget-object v3, p1, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    iget-object v3, p1, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-static {v2, v3}, Lcom/ibm/icu/util/Measure;->numbersEqual(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    return-object v0
.end method

.method public getUnit()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->number:Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/util/Measure;->unit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
