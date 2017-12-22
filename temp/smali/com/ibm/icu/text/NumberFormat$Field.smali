.class public Lcom/ibm/icu/text/NumberFormat$Field;
.super Ljava/text/Format$Field;
.source "NumberFormat.java"


# static fields
.field public static final CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

.field public static final SIGN:Lcom/ibm/icu/text/NumberFormat$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1816
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1821
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "integer"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1826
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "fraction"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1831
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1836
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent sign"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1841
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "exponent symbol"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1846
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "decimal separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1850
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "grouping separator"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1855
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "percent"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1860
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "per mille"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1865
    new-instance v0, Lcom/ibm/icu/text/NumberFormat$Field;

    const-string/jumbo v1, "currency"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NumberFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1873
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1874
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1883
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->INTEGER:Lcom/ibm/icu/text/NumberFormat$Field;

    .line 1904
    :goto_0
    return-object v0

    .line 1885
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1886
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->FRACTION:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1887
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1888
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1889
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1890
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1891
    :cond_3
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1892
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1893
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1894
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->CURRENCY:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1895
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1896
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->DECIMAL_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    goto :goto_0

    .line 1897
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1898
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->GROUPING_SEPARATOR:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_0

    .line 1899
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1900
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERCENT:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_0

    .line 1901
    :cond_8
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1902
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->PERMILLE:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_0

    .line 1903
    :cond_9
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1904
    sget-object v0, Lcom/ibm/icu/text/NumberFormat$Field;->SIGN:Lcom/ibm/icu/text/NumberFormat$Field;

    goto/16 :goto_0

    .line 1906
    :cond_a
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
