.class final Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "DecimalFormatSymbols.java"


# instance fields
.field private numberElements:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 1275
    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    .line 1276
    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1280
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v3

    move v0, v1

    .line 1281
    :goto_0
    invoke-interface {v3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 1282
    :goto_1
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormatSymbols;->access$000()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 1283
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormatSymbols;->access$000()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1284
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_0

    .line 1285
    iget-object v4, p0, Lcom/ibm/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 1281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1291
    :cond_2
    return-void
.end method
