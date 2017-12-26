.class Lcom/skipping/AddWeightActivity$DateArrayAdapter;
.super Lwheel_lib/adapters/ArrayWheelAdapter;
.source "AddWeightActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skipping/AddWeightActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwheel_lib/adapters/ArrayWheelAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field currentItem:I

.field currentValue:I

.field final synthetic this$0:Lcom/skipping/AddWeightActivity;


# direct methods
.method public constructor <init>(Lcom/skipping/AddWeightActivity;Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "items"    # [Ljava/lang/String;
    .param p4, "current"    # I

    .prologue
    .line 545
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->this$0:Lcom/skipping/AddWeightActivity;

    .line 546
    invoke-direct {p0, p2, p3}, Lwheel_lib/adapters/ArrayWheelAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 547
    iput p4, p0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->currentValue:I

    .line 548
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->setTextSize(I)V

    .line 549
    return-void
.end method


# virtual methods
.method protected configureTextView(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 553
    invoke-super {p0, p1}, Lwheel_lib/adapters/ArrayWheelAdapter;->configureTextView(Landroid/widget/TextView;)V

    .line 554
    iget v0, p0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->currentItem:I

    iget v1, p0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->currentValue:I

    if-ne v0, v1, :cond_0

    .line 555
    const v0, -0xffff10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 557
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 558
    return-void
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I
    .param p2, "cachedView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 562
    iput p1, p0, Lcom/skipping/AddWeightActivity$DateArrayAdapter;->currentItem:I

    .line 563
    invoke-super {p0, p1, p2, p3}, Lwheel_lib/adapters/ArrayWheelAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
