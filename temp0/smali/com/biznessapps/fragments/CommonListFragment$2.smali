.class Lcom/biznessapps/fragments/CommonListFragment$2;
.super Ljava/lang/Object;
.source "CommonListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/CommonListFragment;->initListViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/CommonListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/CommonListFragment;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment$2;, "Lcom/biznessapps/fragments/CommonListFragment.2;"
    iput-object p1, p0, Lcom/biznessapps/fragments/CommonListFragment$2;->this$0:Lcom/biznessapps/fragments/CommonListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment$2;, "Lcom/biznessapps/fragments/CommonListFragment.2;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment$2;->this$0:Lcom/biznessapps/fragments/CommonListFragment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/biznessapps/fragments/CommonListFragment;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 73
    return-void
.end method
