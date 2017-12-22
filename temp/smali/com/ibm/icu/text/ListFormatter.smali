.class public final Lcom/ibm/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# static fields
.field static cache:Lcom/ibm/icu/text/ListFormatter$Cache;


# instance fields
.field private final end:Ljava/lang/String;

.field private final locale:Lcom/ibm/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final two:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 333
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$Cache;-><init>(Lcom/ibm/icu/text/ListFormatter$1;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/ibm/icu/text/ListFormatter;->two:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lcom/ibm/icu/text/ListFormatter;->end:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/ibm/icu/text/ListFormatter;->locale:Lcom/ibm/icu/util/ULocale;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/ibm/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 130
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/ListFormatter$Style;)Lcom/ibm/icu/text/ListFormatter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/ibm/icu/text/ListFormatter;->cache:Lcom/ibm/icu/text/ListFormatter$Cache;

    invoke-virtual {p1}, Lcom/ibm/icu/text/ListFormatter$Style;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/text/ListFormatter$Cache;->get(Lcom/ibm/icu/util/ULocale;Ljava/lang/String;)Lcom/ibm/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;I)",
            "Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 210
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    .line 212
    packed-switch v5, :pswitch_data_0

    .line 220
    new-instance v6, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_3

    move v2, v0

    :goto_0
    invoke-direct {v6, v3, v2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 221
    iget-object v3, p0, Lcom/ibm/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-ne p2, v0, :cond_4

    move v2, v0

    :goto_1
    invoke-virtual {v6, v3, v7, v2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    .line 222
    const/4 v2, 0x2

    move v3, v2

    :goto_2
    add-int/lit8 v2, v5, -0x1

    if-ge v3, v2, :cond_6

    .line 223
    iget-object v7, p0, Lcom/ibm/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    if-ne p2, v3, :cond_5

    move v2, v0

    :goto_3
    invoke-virtual {v6, v7, v8, v2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    .line 222
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 214
    :pswitch_0
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    const-string/jumbo v2, ""

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 225
    :goto_4
    return-object v0

    .line 216
    :pswitch_1
    new-instance v2, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_0

    :goto_5
    invoke-direct {v2, v3, v0}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v2

    goto :goto_4

    :cond_0
    move v0, v1

    goto :goto_5

    .line 218
    :pswitch_2
    new-instance v3, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_1

    move v2, v0

    :goto_6
    invoke-direct {v3, v5, v2}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object v2, p0, Lcom/ibm/icu/text/ListFormatter;->two:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v0, :cond_2

    :goto_7
    invoke-virtual {v3, v2, v4, v0}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    goto :goto_4

    :cond_1
    move v2, v1

    goto :goto_6

    :cond_2
    move v0, v1

    goto :goto_7

    :cond_3
    move v2, v1

    .line 220
    goto :goto_0

    :cond_4
    move v2, v1

    .line 221
    goto :goto_1

    :cond_5
    move v2, v1

    .line 223
    goto :goto_3

    .line 225
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/text/ListFormatter;->end:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v5, -0x1

    if-ne p2, v4, :cond_7

    :goto_8
    invoke-virtual {v6, v2, v3, v0}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_8

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
