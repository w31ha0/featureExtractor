.class public Lcom/biznessapps/widgets/RefreshableListView;
.super Landroid/widget/ListView;
.source "RefreshableListView.java"


# instance fields
.field private positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public removeListeners()V
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/biznessapps/layout/adapters/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/widgets/RefreshableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/AbstractAdapter;

    iget-object v1, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {v0, v1}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->removePositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V

    .line 43
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 11
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    instance-of v0, p1, Lcom/biznessapps/layout/adapters/AbstractAdapter;

    if-eqz v0, :cond_0

    .line 35
    check-cast p1, Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {p1, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->addPositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V

    .line 37
    :cond_0
    return-void
.end method

.method public setPositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V
    .locals 0
    .param p1, "positionListener"    # Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/biznessapps/widgets/RefreshableListView;->positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    .line 17
    return-void
.end method
