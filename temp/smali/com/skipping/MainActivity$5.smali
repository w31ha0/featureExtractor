.class Lcom/skipping/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/MainActivity;->GetUserWeightUnit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/MainActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$radioButtonGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/skipping/MainActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iput-object p2, p0, Lcom/skipping/MainActivity$5;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/skipping/MainActivity$5;->val$dialog:Landroid/app/Dialog;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 627
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 628
    .local v3, "radioButtonID":I
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 629
    .local v2, "radioButton":Landroid/view/View;
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 631
    .local v1, "idx":I
    if-nez v1, :cond_1

    .line 632
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iput v7, v4, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    .line 633
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iget-object v4, v4, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 634
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnitForChart"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 647
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 649
    return-void

    .line 636
    :cond_1
    if-ne v1, v5, :cond_2

    .line 637
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iput v5, v4, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    .line 638
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iget-object v4, v4, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 639
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnitForChart"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 640
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 641
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    if-ne v1, v6, :cond_0

    .line 642
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iput v6, v4, Lcom/skipping/MainActivity;->WeightUnitForChart:I

    .line 643
    iget-object v4, p0, Lcom/skipping/MainActivity$5;->this$0:Lcom/skipping/MainActivity;

    iget-object v4, v4, Lcom/skipping/MainActivity;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 644
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnitForChart"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
