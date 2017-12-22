.class final Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "RelativeDateFormat.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/impl/RelativeDateFormat;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/RelativeDateFormat;Lcom/ibm/icu/impl/RelativeDateFormat$1;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;-><init>(Lcom/ibm/icu/impl/RelativeDateFormat;)V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v1

    .line 257
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 268
    iget-object v3, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-static {v3, v2}, Lcom/ibm/icu/impl/RelativeDateFormat;->access$000(Lcom/ibm/icu/impl/RelativeDateFormat;I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 269
    new-instance v3, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;

    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/ibm/icu/impl/RelativeDateFormat$URelativeString;-><init>(ILjava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/ibm/icu/impl/RelativeDateFormat$RelDateFmtDataSink;->this$0:Lcom/ibm/icu/impl/RelativeDateFormat;

    invoke-static {v2}, Lcom/ibm/icu/impl/RelativeDateFormat;->access$100(Lcom/ibm/icu/impl/RelativeDateFormat;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method
