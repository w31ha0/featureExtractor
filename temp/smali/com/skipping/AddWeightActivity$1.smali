.class Lcom/skipping/AddWeightActivity$1;
.super Ljava/lang/Object;
.source "AddWeightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/AddWeightActivity;->SelectWeightUnit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/AddWeightActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$radioButtonGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/skipping/AddWeightActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    iput-object p2, p0, Lcom/skipping/AddWeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/skipping/AddWeightActivity$1;->val$dialog:Landroid/app/Dialog;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 179
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 180
    .local v2, "radioButtonID":I
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    .local v1, "radioButton":Landroid/view/View;
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 183
    .local v0, "idx":I
    if-nez v0, :cond_1

    .line 184
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    const/4 v4, 0x0

    iput v4, v3, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    .line 199
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 200
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    invoke-virtual {v3}, Lcom/skipping/AddWeightActivity;->drawTexts()V

    .line 201
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    invoke-virtual {v3}, Lcom/skipping/AddWeightActivity;->DrawDrams()V

    .line 202
    return-void

    .line 188
    :cond_1
    if-ne v0, v4, :cond_2

    .line 189
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    iput v4, v3, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    goto :goto_0

    .line 193
    :cond_2
    if-ne v0, v5, :cond_0

    .line 194
    iget-object v3, p0, Lcom/skipping/AddWeightActivity$1;->this$0:Lcom/skipping/AddWeightActivity;

    iput v5, v3, Lcom/skipping/AddWeightActivity;->WeightUnit:I

    goto :goto_0
.end method
