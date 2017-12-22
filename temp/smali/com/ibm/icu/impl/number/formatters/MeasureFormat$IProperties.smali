.class public interface abstract Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# static fields
.field public static final DEFAULT_MEASURE_FORMAT_WIDTH:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

.field public static final DEFAULT_MEASURE_UNIT:Lcom/ibm/icu/util/MeasureUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->DEFAULT_MEASURE_UNIT:Lcom/ibm/icu/util/MeasureUnit;

    .line 30
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/MeasureFormat$IProperties;->DEFAULT_MEASURE_FORMAT_WIDTH:Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    return-void
.end method


# virtual methods
.method public abstract getMeasureFormatWidth()Lcom/ibm/icu/text/MeasureFormat$FormatWidth;
.end method

.method public abstract getMeasureUnit()Lcom/ibm/icu/util/MeasureUnit;
.end method
