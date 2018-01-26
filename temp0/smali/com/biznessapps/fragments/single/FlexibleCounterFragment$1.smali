.class Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;
.super Ljava/lang/Object;
.source "FlexibleCounterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "bodyText":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$000(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Lcom/biznessapps/model/StatFieldsItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/model/StatFieldsItem;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v1, " "

    .line 68
    .local v1, "dataMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v5, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$000(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Lcom/biznessapps/model/StatFieldsItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/model/StatFieldsItem;->getFields()Ljava/util/List;

    move-result-object v2

    .line 71
    .local v2, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 72
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v6}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$100(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v1    # "dataMessage":Ljava/lang/String;
    .end local v2    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v5}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$000(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Lcom/biznessapps/model/StatFieldsItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/model/StatFieldsItem;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    .restart local v1    # "dataMessage":Ljava/lang/String;
    .restart local v2    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v5, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v8}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$000(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Lcom/biznessapps/model/StatFieldsItem;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/model/StatFieldsItem;->getEmail()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/biznessapps/fragments/single/FlexibleCounterFragment$1;->this$0:Lcom/biznessapps/fragments/single/FlexibleCounterFragment;

    invoke-static {v7}, Lcom/biznessapps/fragments/single/FlexibleCounterFragment;->access$200(Lcom/biznessapps/fragments/single/FlexibleCounterFragment;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lcom/biznessapps/utils/ViewUtils;->email(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method
