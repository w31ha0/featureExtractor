.class public Lwheel_lib/adapters/NumericWheelAdapter;
.super Lwheel_lib/adapters/AbstractWheelTextAdapter;
.source "NumericWheelAdapter.java"


# static fields
.field public static final DEFAULT_MAX_VALUE:I = 0x9

.field private static final DEFAULT_MIN_VALUE:I


# instance fields
.field private decimal:I

.field private format:Ljava/lang/String;

.field private maxValue:I

.field private minValue:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;II)V
    .locals 1
    .param p1, "textSize"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p4, v0}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lwheel_lib/adapters/NumericWheelAdapter;->setTextSize(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, v0, v1}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "decimal"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lwheel_lib/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    .line 74
    iput p2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    .line 75
    iput p3, p0, Lwheel_lib/adapters/NumericWheelAdapter;->maxValue:I

    .line 76
    iput p4, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lwheel_lib/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    .line 57
    iput p2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    .line 58
    iput p3, p0, Lwheel_lib/adapters/NumericWheelAdapter;->maxValue:I

    .line 59
    iput-object p4, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "decimal"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lwheel_lib/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    .line 65
    iput p2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    .line 66
    iput p3, p0, Lwheel_lib/adapters/NumericWheelAdapter;->maxValue:I

    .line 67
    iput-object p4, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    .line 68
    iput p5, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    .line 69
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 81
    iget v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    if-nez v2, :cond_1

    .line 82
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lwheel_lib/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 83
    iget v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    add-int v0, v2, p1

    .line 84
    .local v0, "value":I
    iget-object v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .end local v0    # "value":I
    :goto_0
    return-object v2

    .line 84
    .restart local v0    # "value":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v0    # "value":I
    :cond_1
    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lwheel_lib/adapters/NumericWheelAdapter;->getItemsCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 88
    iget v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    add-int v0, v2, p1

    .line 90
    .restart local v0    # "value":I
    int-to-float v2, v0

    iget v3, p0, Lwheel_lib/adapters/NumericWheelAdapter;->decimal:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 91
    .local v1, "value1":F
    iget-object v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lwheel_lib/adapters/NumericWheelAdapter;->format:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 94
    .end local v0    # "value":I
    .end local v1    # "value1":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lwheel_lib/adapters/NumericWheelAdapter;->maxValue:I

    iget v1, p0, Lwheel_lib/adapters/NumericWheelAdapter;->minValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
