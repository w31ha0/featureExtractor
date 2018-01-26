.class Lcom/biznessapps/fragments/single/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/HomeFragment;->callUs()V
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
    .line 172
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$2;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 176
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LocationItem;

    .line 177
    .local v0, "item":Lcom/biznessapps/model/LocationItem;
    invoke-virtual {v0}, Lcom/biznessapps/model/LocationItem;->getTelephone()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "tel":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/fragments/single/HomeFragment$2;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v2, v1}, Lcom/biznessapps/fragments/single/HomeFragment;->access$600(Lcom/biznessapps/fragments/single/HomeFragment;Ljava/lang/String;)V

    .line 179
    return-void
.end method
