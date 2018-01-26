.class public Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/single/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/fragments/single/HomeFragment;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$800(Lcom/biznessapps/fragments/single/HomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$800(Lcom/biznessapps/fragments/single/HomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 340
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomeFragment$AppsAdapter;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/HomeFragment;->access$800(Lcom/biznessapps/fragments/single/HomeFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method
