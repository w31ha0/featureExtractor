.class Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;
.super Ljava/lang/Object;
.source "HashTagsListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 37
    const-string v3, ""

    .line 38
    .local v3, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->access$000(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/widgets/RefreshableListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-static {v4}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->access$100(Lcom/biznessapps/fragments/twitter/HashTagsListFragment;)Lcom/biznessapps/widgets/RefreshableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/biznessapps/widgets/RefreshableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/CommonListEntity;

    .line 40
    .local v2, "item":Lcom/biznessapps/model/CommonListEntity;
    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 38
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "item":Lcom/biznessapps/model/CommonListEntity;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v0, "data":Landroid/content/Intent;
    const-string v4, "SELECTED_RESULT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-virtual {v5}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 47
    iget-object v4, p0, Lcom/biznessapps/fragments/twitter/HashTagsListFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/HashTagsListFragment;

    invoke-virtual {v4}, Lcom/biznessapps/fragments/twitter/HashTagsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/activities/CommonFragmentActivity;->finish()V

    .line 48
    return-void
.end method
