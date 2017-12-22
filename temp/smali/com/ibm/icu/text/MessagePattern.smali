.class public final Lcom/ibm/icu/text/MessagePattern;
.super Ljava/lang/Object;
.source "MessagePattern.java"

# interfaces
.implements Lcom/ibm/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/util/Freezable",
        "<",
        "Lcom/ibm/icu/text/MessagePattern;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

.field private static final defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;


# instance fields
.field private aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

.field private volatile frozen:Z

.field private hasArgNames:Z

.field private hasArgNumbers:Z

.field private msg:Ljava/lang/String;

.field private needsAutoQuoting:Z

.field private numericValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ibm/icu/text/MessagePattern$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    const-class v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/text/MessagePattern;->$assertionsDisabled:Z

    .line 1614
    const-string/jumbo v0, "com.ibm.icu.text.MessagePattern.ApostropheMode"

    const-string/jumbo v1, "DOUBLE_OPTIONAL"

    .line 1616
    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 1618
    invoke-static {}, Lcom/ibm/icu/text/MessagePattern$ArgType;->values()[Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/MessagePattern;->argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 147
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 156
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 170
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->defaultAposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 171
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    .line 172
    return-void
.end method

.method static synthetic access$500()[Lcom/ibm/icu/text/MessagePattern$ArgType;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/ibm/icu/text/MessagePattern;->argTypes:[Lcom/ibm/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method private addArgDoublePart(DII)V
    .locals 3

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    .line 1553
    const/4 v0, 0x0

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, p3, p4, v0}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1562
    return-void

    .line 1555
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1556
    const/16 v1, 0x7fff

    if-le v0, v1, :cond_0

    .line 1557
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "Too many numeric values"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V
    .locals 2

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$402(Lcom/ibm/icu/text/MessagePattern$Part;I)I

    .line 1546
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1547
    return-void
.end method

.method private addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V
    .locals 7

    .prologue
    .line 1541
    iget-object v6, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    new-instance v0, Lcom/ibm/icu/text/MessagePattern$Part;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessagePattern$Part;-><init>(Lcom/ibm/icu/text/MessagePattern$Part$Type;IIILcom/ibm/icu/text/MessagePattern$1;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1542
    return-void
.end method

.method static appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/16 v3, 0x27

    const/4 v1, -0x1

    .line 1428
    move v0, v1

    .line 1430
    :goto_0
    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1431
    if-ltz v2, :cond_0

    if-lt v2, p2, :cond_1

    .line 1432
    :cond_0
    invoke-virtual {p3, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1446
    return-void

    .line 1435
    :cond_1
    if-ne v2, v0, :cond_2

    .line 1437
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1438
    add-int/lit8 p1, p1, 0x1

    move v0, v1

    .line 1439
    goto :goto_0

    .line 1442
    :cond_2
    invoke-virtual {p3, p0, p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1443
    add-int/lit8 v0, v2, 0x1

    move p1, v0

    goto :goto_0
.end method

.method private inMessageFormatPattern(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1526
    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private inTopLevelChoiceMessage(ILcom/ibm/icu/text/MessagePattern$ArgType;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1534
    if-ne p1, v1, :cond_0

    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 1537
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 1534
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1537
    goto :goto_0
.end method

.method private static isArgTypeChar(I)Z
    .locals 1

    .prologue
    .line 1473
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isChoice(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x63

    const/16 v3, 0x43

    .line 1478
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1479
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_0

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1480
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x68

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-ne v0, v1, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1481
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1483
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_4

    if-ne v0, v3, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_5

    const/16 v1, 0x45

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1478
    :goto_0
    return v0

    .line 1484
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrdinal(I)Z
    .locals 3

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1512
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x4f

    if-ne v0, v2, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1513
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    const/16 v1, 0x52

    if-ne v0, v1, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1514
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x64

    if-eq v0, v2, :cond_2

    const/16 v2, 0x44

    if-ne v0, v2, :cond_7

    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1515
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1516
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1517
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_5

    const/16 v1, 0x41

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1518
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_6

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    .line 1511
    :goto_0
    return v0

    .line 1518
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlural(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x6c

    const/16 v3, 0x4c

    .line 1489
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1490
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x70

    if-eq v0, v2, :cond_0

    const/16 v2, 0x50

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1491
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1492
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x75

    if-eq v0, v2, :cond_2

    const/16 v2, 0x55

    if-ne v0, v2, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1493
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x72

    if-eq v0, v1, :cond_3

    const/16 v1, 0x52

    if-ne v0, v1, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1494
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x61

    if-eq v0, v2, :cond_4

    const/16 v2, 0x41

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1495
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1489
    :goto_0
    return v0

    .line 1495
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSelect(I)Z
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/16 v3, 0x45

    .line 1500
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    .line 1501
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x73

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-ne v0, v2, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1502
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1503
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6c

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4c

    if-ne v0, v2, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .line 1504
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_3

    if-ne v0, v3, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v2, 0x1

    .line 1505
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x63

    if-eq v0, v2, :cond_4

    const/16 v2, 0x43

    if-ne v0, v2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1506
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-ne v0, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    .line 1500
    :goto_0
    return v0

    .line 1506
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseArg(III)I
    .locals 10

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1021
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 1022
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v2

    invoke-direct {p0, v0, p1, p2, v2}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1023
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v5

    .line 1024
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v5, v0, :cond_0

    .line 1025
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched \'{\' braces in message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1026
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_0
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v0

    .line 1030
    invoke-direct {p0, v5, v0}, Lcom/ibm/icu/text/MessagePattern;->parseArgNumber(II)I

    move-result v2

    .line 1031
    if-ltz v2, :cond_3

    .line 1032
    sub-int v4, v0, v5

    .line 1033
    const v6, 0xffff

    if-gt v4, v6, :cond_1

    const/16 v6, 0x7fff

    if-le v2, v6, :cond_2

    .line 1034
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument number too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1035
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    .line 1038
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v6, v5, v4, v2}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1050
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1051
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 1052
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched \'{\' braces in message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1053
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_3
    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1040
    sub-int v2, v0, v5

    .line 1041
    const v4, 0xffff

    if-le v2, v4, :cond_4

    .line 1042
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1043
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 1046
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v6, 0x0

    invoke-direct {p0, v4, v5, v2, v6}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    .line 1048
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad argument syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1055
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1056
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_7

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    .line 1117
    :goto_1
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1118
    add-int/lit8 v0, v3, 0x1

    return v0

    .line 1058
    :cond_7
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_8

    .line 1059
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad argument syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1062
    :cond_8
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    move v0, v2

    .line 1063
    :goto_2
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/MessagePattern;->isArgTypeChar(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1064
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1066
    :cond_9
    sub-int v6, v0, v2

    .line 1067
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v4

    .line 1068
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v4, v0, :cond_a

    .line 1069
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched \'{\' braces in message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1070
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_a
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v0, 0x2c

    if-eq v7, v0, :cond_c

    const/16 v0, 0x7d

    if-eq v7, v0, :cond_c

    .line 1073
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad argument syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1075
    :cond_c
    const v0, 0xffff

    if-le v6, v0, :cond_d

    .line 1076
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument type name too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1077
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1079
    :cond_d
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    .line 1080
    const/4 v3, 0x6

    if-ne v6, v3, :cond_11

    .line 1082
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->isChoice(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1083
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-object v3, v0

    .line 1095
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v8

    int-to-short v8, v8

    invoke-static {v0, v8}, Lcom/ibm/icu/text/MessagePattern$Part;->access$102(Lcom/ibm/icu/text/MessagePattern$Part;S)S

    .line 1096
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v3, v0, :cond_e

    .line 1097
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_TYPE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    const/4 v8, 0x0

    invoke-direct {p0, v0, v2, v6, v8}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1100
    :cond_e
    const/16 v0, 0x7d

    if-ne v7, v0, :cond_12

    .line 1101
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v3, v0, :cond_15

    .line 1102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No style field for complex argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1103
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_f
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->isPlural(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1085
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-object v3, v0

    goto :goto_3

    .line 1086
    :cond_10
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->isSelect(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1087
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-object v3, v0

    goto :goto_3

    .line 1089
    :cond_11
    const/16 v3, 0xd

    if-ne v6, v3, :cond_16

    .line 1090
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->isSelect(I)Z

    move-result v3

    if-eqz v3, :cond_16

    add-int/lit8 v3, v2, 0x6

    invoke-direct {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->isOrdinal(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1091
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECTORDINAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-object v3, v0

    goto :goto_3

    .line 1106
    :cond_12
    add-int/lit8 v0, v4, 0x1

    .line 1107
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v3, v2, :cond_13

    .line 1108
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->parseSimpleStyle(I)I

    move-result v0

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1109
    :cond_13
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v3, v2, :cond_14

    .line 1110
    invoke-direct {p0, v0, p3}, Lcom/ibm/icu/text/MessagePattern;->parseChoiceStyle(II)I

    move-result v0

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 1112
    :cond_14
    invoke-direct {p0, v3, v0, p3}, Lcom/ibm/icu/text/MessagePattern;->parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I

    move-result v0

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    goto/16 :goto_1

    :cond_15
    move-object v0, v3

    move v3, v4

    goto/16 :goto_1

    :cond_16
    move-object v3, v0

    goto/16 :goto_3
.end method

.method private parseArgNumber(II)I
    .locals 1

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->parseArgNumber(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static parseArgNumber(Ljava/lang/CharSequence;II)I
    .locals 9

    .prologue
    const/16 v8, 0x30

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v0, 0x0

    .line 1320
    if-lt p1, p2, :cond_1

    move v0, v2

    .line 1355
    :cond_0
    :goto_0
    return v0

    .line 1326
    :cond_1
    add-int/lit8 v5, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1327
    if-ne v4, v8, :cond_3

    .line 1328
    if-eq v5, p2, :cond_0

    move v4, v0

    move v0, v1

    .line 1340
    :goto_1
    if-ge v5, p2, :cond_6

    .line 1341
    add-int/lit8 v6, v5, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1342
    if-gt v8, v5, :cond_5

    const/16 v7, 0x39

    if-gt v5, v7, :cond_5

    .line 1343
    const v7, 0xccccccc

    if-lt v4, v7, :cond_2

    move v0, v1

    .line 1346
    :cond_2
    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move v5, v6

    goto :goto_1

    .line 1334
    :cond_3
    const/16 v6, 0x31

    if-gt v6, v4, :cond_4

    const/16 v6, 0x39

    if-gt v4, v6, :cond_4

    .line 1335
    add-int/lit8 v4, v4, -0x30

    .line 1336
    goto :goto_1

    :cond_4
    move v0, v3

    .line 1338
    goto :goto_0

    :cond_5
    move v0, v3

    .line 1348
    goto :goto_0

    .line 1352
    :cond_6
    if-eqz v0, :cond_7

    move v0, v2

    .line 1353
    goto :goto_0

    :cond_7
    move v0, v4

    .line 1355
    goto :goto_0
.end method

.method private parseChoiceStyle(II)I
    .locals 7

    .prologue
    const/16 v6, 0x7d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1158
    .line 1159
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1160
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_2

    .line 1161
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing choice argument pattern in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1162
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1168
    :cond_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v1

    .line 1169
    sub-int v2, v1, v0

    .line 1170
    if-nez v2, :cond_3

    .line 1171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad choice pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1173
    :cond_3
    const v3, 0xffff

    if-le v2, v3, :cond_4

    .line 1174
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Choice number too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1175
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1177
    :cond_4
    invoke-direct {p0, v0, v1, v5}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1179
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v0

    .line 1180
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad choice pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1183
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1184
    const/16 v2, 0x23

    if-eq v1, v2, :cond_6

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_6

    const/16 v2, 0x2264

    if-eq v1, v2, :cond_6

    .line 1185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected choice separator (#<\u2264) instead of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' in choice pattern "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1187
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1189
    :cond_6
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v1, v0, v5, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1191
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, p2, 0x1

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    move-result v0

    .line 1193
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1201
    :cond_7
    return v0

    .line 1196
    :cond_8
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_1

    .line 1197
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad choice pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1199
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseDouble(IIZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1370
    sget-boolean v0, Lcom/ibm/icu/text/MessagePattern;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-lt p1, p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1378
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 1379
    const/4 v4, 0x1

    .line 1380
    if-ne v3, p2, :cond_2

    .line 1417
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad syntax for numeric value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 1418
    invoke-virtual {v2, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1383
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v4

    .line 1390
    :goto_0
    const/16 v4, 0x221e

    if-ne v0, v4, :cond_6

    .line 1391
    if-eqz p3, :cond_1

    if-ne v1, p2, :cond_1

    .line 1392
    if-eqz v3, :cond_4

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_1
    sub-int v2, p2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ibm/icu/text/MessagePattern;->addArgDoublePart(DII)V

    .line 1415
    :goto_2
    return-void

    .line 1384
    :cond_3
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_a

    .line 1385
    if-eq v3, p2, :cond_1

    .line 1388
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v3, v2

    goto :goto_0

    .line 1392
    :cond_4
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1

    .line 1410
    :cond_5
    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v5, v1

    move v1, v2

    move v2, v0

    move v0, v5

    .line 1401
    :cond_6
    const/16 v4, 0x30

    if-gt v4, v0, :cond_7

    const/16 v4, 0x39

    if-gt v0, v4, :cond_7

    .line 1402
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    .line 1403
    add-int/lit16 v2, v3, 0x7fff

    if-le v0, v2, :cond_8

    .line 1413
    :cond_7
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1414
    sub-int v2, p2, p1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ibm/icu/text/MessagePattern;->addArgDoublePart(DII)V

    goto :goto_2

    .line 1406
    :cond_8
    if-ne v1, p2, :cond_5

    .line 1407
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    sub-int v2, p2, p1

    if-eqz v3, :cond_9

    neg-int v0, v0

    :cond_9
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_2

    :cond_a
    move v1, v3

    move v3, v2

    goto :goto_0
.end method

.method private parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I
    .locals 10

    .prologue
    const/16 v9, 0x23

    const/16 v8, 0x7d

    const/16 v7, 0x27

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 934
    const/16 v0, 0x7fff

    if-le p3, v0, :cond_0

    .line 935
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 938
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 939
    add-int v3, p1, p2

    .line 940
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_f

    .line 941
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 942
    if-ne v0, v7, :cond_8

    .line 943
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 946
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, v6, v4, v7}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 947
    iput-boolean v2, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    move v3, v6

    goto :goto_0

    .line 949
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 950
    if-ne v0, v7, :cond_2

    .line 952
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v6, 0x1

    invoke-direct {p0, v0, v6, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_0

    .line 953
    :cond_2
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    if-eq v3, v5, :cond_4

    const/16 v3, 0x7b

    if-eq v0, v3, :cond_4

    if-eq v0, v8, :cond_4

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_3

    const/16 v3, 0x7c

    if-eq v0, v3, :cond_4

    .line 957
    :cond_3
    invoke-virtual {p4}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne v0, v9, :cond_7

    .line 960
    :cond_4
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v6, -0x1

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    move v0, v6

    .line 963
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 964
    if-ltz v0, :cond_6

    .line 965
    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_5

    .line 968
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    goto :goto_1

    .line 971
    :cond_5
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v3, v0, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    move v3, v6

    .line 972
    goto/16 :goto_0

    .line 976
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    .line 978
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, v6, v4, v7}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 979
    iput-boolean v2, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    move v3, v6

    .line 980
    goto/16 :goto_0

    .line 986
    :cond_7
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v0, v6, v4, v7}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 987
    iput-boolean v2, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    move v3, v6

    goto/16 :goto_0

    .line 990
    :cond_8
    invoke-virtual {p4}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v3

    if-eqz v3, :cond_9

    if-ne v0, v9, :cond_9

    .line 993
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v6, -0x1

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    move v3, v6

    goto/16 :goto_0

    .line 994
    :cond_9
    const/16 v3, 0x7b

    if-ne v0, v3, :cond_a

    .line 995
    add-int/lit8 v0, v6, -0x1

    invoke-direct {p0, v0, v2, p3}, Lcom/ibm/icu/text/MessagePattern;->parseArg(III)I

    move-result v6

    move v3, v6

    goto/16 :goto_0

    .line 996
    :cond_a
    if-lez p3, :cond_b

    if-eq v0, v8, :cond_c

    :cond_b
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_11

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_11

    .line 1000
    :cond_c
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v3, :cond_e

    if-ne v0, v8, :cond_e

    .line 1001
    :goto_2
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    add-int/lit8 v3, v6, -0x1

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1002
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne p4, v0, :cond_d

    .line 1004
    add-int/lit8 v6, v6, -0x1

    .line 1016
    :cond_d
    :goto_3
    return v6

    :cond_e
    move v4, v2

    .line 1000
    goto :goto_2

    .line 1011
    :cond_f
    if-lez p3, :cond_10

    invoke-direct {p0, p3, p4}, Lcom/ibm/icu/text/MessagePattern;->inTopLevelChoiceMessage(ILcom/ibm/icu/text/MessagePattern$ArgType;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1012
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched \'{\' braces in message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_10
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-object v0, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessagePattern;->addLimitPart(ILcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    move v6, v3

    .line 1016
    goto :goto_3

    :cond_11
    move v3, v6

    goto/16 :goto_0
.end method

.method private parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I
    .locals 11

    .prologue
    const v10, 0xffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1208
    move v0, v1

    move v2, v3

    move v4, p2

    .line 1215
    :goto_0
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v5

    .line 1216
    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v5, v4, :cond_1

    move v4, v3

    .line 1217
    :goto_1
    if-nez v4, :cond_0

    iget-object v6, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x7d

    if-ne v6, v7, :cond_3

    .line 1218
    :cond_0
    invoke-direct {p0, p3}, Lcom/ibm/icu/text/MessagePattern;->inMessageFormatPattern(I)Z

    move-result v1

    if-ne v4, v1, :cond_2

    .line 1219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1221
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1222
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v1

    .line 1216
    goto :goto_1

    .line 1224
    :cond_2
    if-nez v0, :cond_f

    .line 1225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing \'other\' keyword in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1227
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pattern in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1228
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_7

    .line 1235
    add-int/lit8 v2, v5, 0x1

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v2

    .line 1236
    sub-int v4, v2, v5

    .line 1237
    if-ne v4, v3, :cond_4

    .line 1238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1240
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1241
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_4
    if-le v4, v10, :cond_5

    .line 1244
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument selector too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1245
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_5
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v6, v5, v4, v1}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1248
    add-int/lit8 v4, v5, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    .line 1296
    :goto_2
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v2

    .line 1297
    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_6

    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_e

    .line 1298
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No message fragment after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1300
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " selector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1301
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_7
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->skipIdentifier(I)I

    move-result v4

    .line 1251
    sub-int v6, v4, v5

    .line 1252
    if-nez v6, :cond_8

    .line 1253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1255
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pattern syntax: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1256
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_8
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x6

    if-ne v6, v7, :cond_c

    iget-object v7, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_c

    iget-object v7, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string/jumbo v8, "offset:"

    const/4 v9, 0x7

    .line 1260
    invoke-virtual {v7, v5, v8, v1, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1263
    if-nez v2, :cond_9

    .line 1264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Plural argument \'offset:\' (if present) must precede key-message pairs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1266
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_9
    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->skipWhiteSpace(I)I

    move-result v4

    .line 1270
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->skipDouble(I)I

    move-result v2

    .line 1271
    if-ne v2, v4, :cond_a

    .line 1272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing value for plural \'offset:\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1273
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_a
    sub-int v5, v2, v4

    if-le v5, v10, :cond_b

    .line 1276
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Plural offset value too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1277
    invoke-direct {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_b
    invoke-direct {p0, v4, v2, v1}, Lcom/ibm/icu/text/MessagePattern;->parseDouble(IIZ)V

    move v4, v2

    move v2, v1

    .line 1281
    goto/16 :goto_0

    .line 1284
    :cond_c
    if-le v6, v10, :cond_d

    .line 1285
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument selector too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1286
    invoke-direct {p0, v5}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :cond_d
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v2, v5, v6, v1}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1289
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const-string/jumbo v7, "other"

    invoke-virtual {v2, v5, v7, v1, v6}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_10

    move v0, v3

    move v2, v4

    .line 1290
    goto/16 :goto_2

    .line 1303
    :cond_e
    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v2, v3, v4, p1}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    move-result v2

    move v4, v2

    move v2, v1

    .line 1305
    goto/16 :goto_0

    .line 1230
    :cond_f
    return v5

    :cond_10
    move v2, v4

    goto/16 :goto_2
.end method

.method private parseSimpleStyle(I)I
    .locals 6

    .prologue
    const/16 v5, 0x27

    const/4 v1, 0x0

    .line 1122
    move v0, v1

    move v2, p1

    .line 1124
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 1125
    iget-object v4, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1126
    if-ne v2, v5, :cond_1

    .line 1129
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1130
    if-gez v2, :cond_0

    .line 1131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Quoted literal argument style text reaches to the end of the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1133
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_2

    .line 1138
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 1139
    :cond_2
    const/16 v4, 0x7d

    if-ne v2, v4, :cond_6

    .line 1140
    if-lez v0, :cond_3

    .line 1141
    add-int/lit8 v0, v0, -0x1

    move v2, v3

    goto :goto_0

    .line 1143
    :cond_3
    add-int/lit8 v0, v3, -0x1

    sub-int v2, v0, p1

    .line 1144
    const v3, 0xffff

    if-le v2, v3, :cond_4

    .line 1145
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Argument style text too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1146
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_4
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    invoke-direct {p0, v3, p1, v2, v1}, Lcom/ibm/icu/text/MessagePattern;->addPart(Lcom/ibm/icu/text/MessagePattern$Part$Type;III)V

    .line 1149
    return v0

    .line 1153
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unmatched \'{\' braces in message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1154
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v2, v3

    goto/16 :goto_0
.end method

.method private postParse()V
    .locals 0

    .prologue
    .line 931
    return-void
.end method

.method private preParse(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempt to parse("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 918
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") on frozen MessagePattern instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 921
    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 922
    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 923
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 924
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 927
    :cond_1
    return-void
.end method

.method private prefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prefix(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->prefix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static prefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1573
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1574
    if-nez p1, :cond_0

    .line 1575
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1579
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 1580
    const/16 v2, 0x18

    if-gt v0, v2, :cond_2

    .line 1581
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    :goto_2
    const-string/jumbo v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1577
    :cond_0
    const-string/jumbo v0, "[at pattern index "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1581
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1583
    :cond_2
    add-int/lit8 v0, p1, 0x18

    add-int/lit8 v0, v0, -0x4

    .line 1584
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1586
    add-int/lit8 v0, v0, -0x1

    .line 1588
    :cond_3
    invoke-virtual {v1, p0, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private skipDouble(I)I
    .locals 2

    .prologue
    .line 1461
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1464
    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    const-string/jumbo v1, "+-."

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    :cond_0
    const/16 v1, 0x39

    if-le v0, v1, :cond_2

    const/16 v1, 0x65

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_2

    const/16 v1, 0x221e

    if-eq v0, v1, :cond_2

    .line 1469
    :cond_1
    return p1

    .line 1467
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 1468
    goto :goto_0
.end method

.method private skipIdentifier(I)I
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipIdentifier(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to clear() a frozen MessagePattern instance."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 254
    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNumbers:Z

    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    .line 255
    iput-boolean v1, p0, Lcom/ibm/icu/text/MessagePattern;->needsAutoQuoting:Z

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    :cond_1
    return-void
.end method

.method public clearPatternAndSetApostropheMode(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 0

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 270
    iput-object p1, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 271
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->cloneAsThawed()Lcom/ibm/icu/text/MessagePattern;

    move-result-object p0

    goto :goto_0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/text/MessagePattern;
    .locals 2

    .prologue
    .line 882
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 887
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 888
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    .line 890
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ibm/icu/text/MessagePattern;->frozen:Z

    .line 891
    return-object v0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    new-instance v1, Lcom/ibm/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public countParts()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    if-ne p0, p1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 284
    goto :goto_0

    .line 286
    :cond_3
    check-cast p1, Lcom/ibm/icu/text/MessagePattern;

    .line 287
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    iget-object v3, p1, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 288
    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 289
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    .line 290
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 288
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1
.end method

.method public getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    return-object v0
.end method

.method public getLimitPartIndex(I)I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$400(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 541
    if-ge v0, p1, :cond_0

    .line 544
    :goto_0
    return p1

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D
    .locals 2

    .prologue
    .line 496
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 497
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_INT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 498
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$100(Lcom/ibm/icu/text/MessagePattern$Part;)S

    move-result v0

    int-to-double v0, v0

    .line 502
    :goto_0
    return-wide v0

    .line 499
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_DOUBLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->numericValues:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$100(Lcom/ibm/icu/text/MessagePattern$Part;)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 502
    :cond_1
    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    goto :goto_0
.end method

.method public getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    return-object v0
.end method

.method public getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    return-object v0
.end method

.method public getPatternIndex(I)I
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v0

    return v0
.end method

.method public getPatternString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getPluralOffset(I)D
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$Part;

    .line 523
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->access$200(Lcom/ibm/icu/text/MessagePattern$Part;)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v0

    .line 526
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNamedArguments()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->hasArgNames:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/ibm/icu/text/MessagePattern;->frozen:Z

    return v0
.end method

.method jdkAposMode()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->aposMode:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 186
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/ibm/icu/text/MessagePattern;->parseMessage(IIILcom/ibm/icu/text/MessagePattern$ArgType;)I

    .line 187
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->postParse()V

    .line 188
    return-object p0
.end method

.method public parsePluralStyle(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->preParse(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    invoke-direct {p0, v0, v1, v1}, Lcom/ibm/icu/text/MessagePattern;->parsePluralOrSelectStyle(Lcom/ibm/icu/text/MessagePattern$ArgType;II)I

    .line 221
    invoke-direct {p0}, Lcom/ibm/icu/text/MessagePattern;->postParse()V

    .line 222
    return-object p0
.end method

.method public partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 486
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$000(Lcom/ibm/icu/text/MessagePattern$Part;)I

    move-result v2

    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->access$300(Lcom/ibm/icu/text/MessagePattern$Part;)C

    move-result v3

    invoke-virtual {v1, v2, p2, v0, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/ibm/icu/text/MessagePattern;->msg:Ljava/lang/String;

    return-object v0
.end method
