.class public abstract Lcom/biznessapps/layout/adapters/AbstractAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AbstractAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected layoutItemResourceId:I

.field private positionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 35
    new-instance v0, Lcom/biznessapps/utils/ImageDownloader;

    invoke-direct {v0}, Lcom/biznessapps/utils/ImageDownloader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->items:Ljava/util/List;

    .line 42
    iput p3, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->layoutItemResourceId:I

    .line 43
    return-void
.end method


# virtual methods
.method public addPositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V
    .locals 1
    .param p1, "listenerToAdd"    # Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 66
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;
    .locals 9
    .param p1, "unselectedColor"    # I

    .prologue
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 81
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 82
    .local v0, "listItemDrawable":Landroid/graphics/drawable/StateListDrawable;
    const v2, 0x101009c

    .line 83
    .local v2, "stateFocused":I
    const v3, 0x10100a7

    .line 85
    .local v3, "statePressed":I
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 86
    .local v4, "unselectedState":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v5, "#999999"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 88
    .local v1, "selectedState":Landroid/graphics/drawable/ColorDrawable;
    const/4 v5, 0x2

    new-array v5, v5, [I

    neg-int v6, v3

    aput v6, v5, v7

    neg-int v6, v2

    aput v6, v5, v8

    invoke-virtual {v0, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 91
    new-array v5, v8, [I

    aput v3, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    new-array v5, v8, [I

    aput v2, v5, v7

    invoke-virtual {v0, v5, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    .line 59
    .local v1, "item":Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;
    invoke-interface {v1}, Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;->onLastPositionAchieved()V

    goto :goto_0

    .line 62
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;
    :cond_0
    return-object p2
.end method

.method public removePositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V
    .locals 1
    .param p1, "listenerToRemove"    # Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    .prologue
    .line 70
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/AbstractAdapter;->positionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method protected varargs setTextColorToView(I[Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textColor"    # I
    .param p2, "views"    # [Landroid/widget/TextView;

    .prologue
    .line 107
    .local p0, "this":Lcom/biznessapps/layout/adapters/AbstractAdapter;, "Lcom/biznessapps/layout/adapters/AbstractAdapter<TT;>;"
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 109
    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
