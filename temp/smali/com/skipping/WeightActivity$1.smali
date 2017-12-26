.class Lcom/skipping/WeightActivity$1;
.super Ljava/lang/Object;
.source "WeightActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/WeightActivity;->SelectWeightUnit(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/WeightActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$radioButtonGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/skipping/WeightActivity;Landroid/widget/RadioGroup;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    iput-object p2, p0, Lcom/skipping/WeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/skipping/WeightActivity$1;->val$dialog:Landroid/app/Dialog;

    .line 129
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

    .line 132
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    .line 133
    .local v3, "radioButtonID":I
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 134
    .local v2, "radioButton":Landroid/view/View;
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->val$radioButtonGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 136
    .local v1, "idx":I
    if-nez v1, :cond_1

    .line 137
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    iput v7, v4, Lcom/skipping/WeightActivity;->WeightUnit:I

    .line 138
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    invoke-static {v4}, Lcom/skipping/WeightActivity;->access$0(Lcom/skipping/WeightActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnit"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 153
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    invoke-virtual {v4}, Lcom/skipping/WeightActivity;->drawTexts()V

    .line 154
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    invoke-virtual {v4}, Lcom/skipping/WeightActivity;->DrawDrams()V

    .line 155
    return-void

    .line 141
    :cond_1
    if-ne v1, v5, :cond_2

    .line 142
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    iput v5, v4, Lcom/skipping/WeightActivity;->WeightUnit:I

    .line 143
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    invoke-static {v4}, Lcom/skipping/WeightActivity;->access$0(Lcom/skipping/WeightActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnit"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 146
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    if-ne v1, v6, :cond_0

    .line 147
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    iput v6, v4, Lcom/skipping/WeightActivity;->WeightUnit:I

    .line 148
    iget-object v4, p0, Lcom/skipping/WeightActivity$1;->this$0:Lcom/skipping/WeightActivity;

    invoke-static {v4}, Lcom/skipping/WeightActivity;->access$0(Lcom/skipping/WeightActivity;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "WeightUnit"

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
