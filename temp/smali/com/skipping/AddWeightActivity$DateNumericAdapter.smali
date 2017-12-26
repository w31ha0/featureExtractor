.class Lcom/skipping/AddWeightActivity$DateNumericAdapter;
.super Lwheel_lib/adapters/NumericWheelAdapter;
.source "AddWeightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/AddWeightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateNumericAdapter"
.end annotation


# instance fields
.field currentItem:I

.field currentValue:I

.field final synthetic this$0:Lcom/skipping/AddWeightActivity;


# direct methods
.method public constructor <init>(Lcom/skipping/AddWeightActivity;Landroid/content/Context;III)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "minValue"    # I
    .param p4, "maxValue"    # I
    .param p5, "current"    # I

    .prologue
    .line 511
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->this$0:Lcom/skipping/AddWeightActivity;

    .line 512
    invoke-direct {p0, p2, p3, p4}, Lwheel_lib/adapters/NumericWheelAdapter;-><init>(Landroid/content/Context;II)V

    .line 513
    iput p5, p0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->currentValue:I

    .line 514
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->setTextSize(I)V

    .line 515
    return-void
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 519
    invoke-super {p0, p1}, Lwheel_lib/adapters/NumericWheelAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 520
    iget v0, p0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->currentItem:I

    iget v1, p0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->currentValue:I

    if-ne v0, v1, :cond_0

    .line 521
    const v0, -0xffff10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 523
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 524
    return-void
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 528
    iput p1, p0, Lcom/skipping/AddWeightActivity$DateNumericAdapter;->currentItem:I

    .line 529
    invoke-super {p0, p1, p2, p3}, Lwheel_lib/adapters/NumericWheelAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
