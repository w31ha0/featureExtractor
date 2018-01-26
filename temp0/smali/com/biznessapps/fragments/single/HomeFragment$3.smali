.class Lcom/biznessapps/fragments/single/HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/HomeFragment;->showDirections()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/HomeFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$3;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 188
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LocationItem;

    .line 189
    .local v0, "item":Lcom/biznessapps/model/LocationItem;
    iget-object v1, p0, Lcom/biznessapps/fragments/single/HomeFragment$3;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v1, v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$700(Lcom/biznessapps/fragments/single/HomeFragment;Lcom/biznessapps/model/LocationItem;)V

    .line 190
    return-void
.end method
