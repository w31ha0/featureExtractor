.class Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->initFieldsCounters(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

.field final synthetic val$counterView:Landroid/widget/TextView;

.field final synthetic val$currentPos:I


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;ILandroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    iput p2, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$currentPos:I

    iput-object p3, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$counterView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$100(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$currentPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "currentValue":I
    add-int/lit8 v0, v0, -0x1

    .line 158
    iget-object v1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$100(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$currentPos:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$counterView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v3}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$100(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$3;->val$currentPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method
