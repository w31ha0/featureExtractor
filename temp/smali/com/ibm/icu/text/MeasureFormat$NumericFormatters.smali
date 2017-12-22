.class Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# instance fields
.field private hourMinute:Lcom/ibm/icu/text/DateFormat;

.field private hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

.field private minuteSecond:Lcom/ibm/icu/text/DateFormat;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;Lcom/ibm/icu/text/DateFormat;)V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Lcom/ibm/icu/text/DateFormat;

    .line 745
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Lcom/ibm/icu/text/DateFormat;

    .line 746
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

    .line 747
    return-void
.end method


# virtual methods
.method public getHourMinute()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method public getHourMinuteSecond()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method public getMinuteSecond()Lcom/ibm/icu/text/DateFormat;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method
