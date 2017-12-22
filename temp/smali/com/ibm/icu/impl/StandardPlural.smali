.class public final enum Lcom/ibm/icu/impl/StandardPlural;
.super Ljava/lang/Enum;
.source "StandardPlural.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/StandardPlural;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/StandardPlural;

.field public static final COUNT:I

.field public static final enum FEW:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum MANY:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum ONE:Lcom/ibm/icu/impl/StandardPlural;

.field public static final enum OTHER:Lcom/ibm/icu/impl/StandardPlural;

.field public static final OTHER_INDEX:I

.field public static final enum TWO:Lcom/ibm/icu/impl/StandardPlural;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/StandardPlural;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ZERO:Lcom/ibm/icu/impl/StandardPlural;


# instance fields
.field private final keyword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "ZERO"

    const-string/jumbo v2, "zero"

    invoke-direct {v0, v1, v4, v2}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    .line 21
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "ONE"

    const-string/jumbo v2, "one"

    invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    .line 22
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "TWO"

    const-string/jumbo v2, "two"

    invoke-direct {v0, v1, v6, v2}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    .line 23
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "FEW"

    const-string/jumbo v2, "few"

    invoke-direct {v0, v1, v7, v2}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "MANY"

    const-string/jumbo v2, "many"

    invoke-direct {v0, v1, v8, v2}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    .line 25
    new-instance v0, Lcom/ibm/icu/impl/StandardPlural;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x5

    const-string/jumbo v3, "other"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/StandardPlural;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    .line 19
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ibm/icu/impl/StandardPlural;

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    .line 30
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER_INDEX:I

    .line 37
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 42
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static final fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 2

    .prologue
    .line 105
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final indexFromString(Ljava/lang/CharSequence;)I
    .locals 2

    .prologue
    .line 137
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    return v0

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .prologue
    .line 62
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    const-string/jumbo v0, "one"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->ONE:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 66
    :cond_1
    const-string/jumbo v0, "two"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->TWO:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 68
    :cond_2
    const-string/jumbo v0, "few"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->FEW:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 73
    :pswitch_1
    const-string/jumbo v0, "many"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->MANY:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 75
    :cond_3
    const-string/jumbo v0, "zero"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->ZERO:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 80
    :pswitch_2
    const-string/jumbo v0, "other"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final orOtherFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0}, Lcom/ibm/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/ibm/icu/impl/StandardPlural;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/StandardPlural;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/StandardPlural;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ibm/icu/impl/StandardPlural;->$VALUES:[Lcom/ibm/icu/impl/StandardPlural;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/StandardPlural;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/StandardPlural;

    return-object v0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ibm/icu/impl/StandardPlural;->keyword:Ljava/lang/String;

    return-object v0
.end method
