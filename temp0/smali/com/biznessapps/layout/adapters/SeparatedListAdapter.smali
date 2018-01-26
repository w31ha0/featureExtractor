.class public Lcom/biznessapps/layout/adapters/SeparatedListAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/model/CommonListEntity;",
        ">",
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionBarColorId:I

.field private sectionBarTextColorId:I

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "sectionBarColorId"    # I
    .param p4, "sectionBarTextColorId"    # I

    .prologue
    .line 27
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    .line 28
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 29
    iput p3, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sectionBarColorId:I

    .line 30
    iput p4, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sectionBarTextColorId:I

    .line 31
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 34
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 40
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 41
    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->notifyDataSetInvalidated()V

    .line 42
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 67
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x0

    .line 68
    .local v2, "total":I
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 69
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    .line 71
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public getItem(I)Lcom/biznessapps/model/CommonListEntity;
    .locals 5
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    iget-object v4, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "section":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 48
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 51
    .local v3, "size":I
    if-nez p1, :cond_0

    .line 52
    check-cast v2, Lcom/biznessapps/model/CommonListEntity;

    .line 61
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :goto_1
    return-object v2

    .line 54
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 55
    add-int/lit8 v4, p1, -0x1

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/CommonListEntity;

    move-object v2, v4

    goto :goto_1

    .line 59
    :cond_1
    sub-int/2addr p1, v3

    .line 60
    goto :goto_0

    .line 61
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 18
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->getItem(I)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 153
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 86
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v4, 0x1

    .line 87
    .local v4, "type":I
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 88
    .local v2, "section":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 89
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 92
    .local v3, "size":I
    if-nez p1, :cond_0

    .line 93
    const/4 v5, 0x0

    .line 103
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :goto_1
    return v5

    .line 95
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v3    # "size":I
    :cond_0
    if-ge p1, v3, :cond_1

    .line 96
    add-int/lit8 v5, p1, -0x1

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_1

    .line 100
    :cond_1
    sub-int/2addr p1, v3

    .line 101
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 102
    goto :goto_0

    .line 103
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v4, 0x0

    .line 124
    .local v4, "sectionnum":I
    iget-object v7, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    .local v2, "section":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 126
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 128
    .local v5, "size":I
    if-nez p1, :cond_1

    .line 129
    iget-object v7, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "sectionName":Ljava/lang/String;
    iget-object v7, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v7, v4, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 131
    .local v6, "view":Landroid/view/View;
    instance-of v7, v6, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 132
    check-cast v7, Landroid/widget/TextView;

    iget v8, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sectionBarTextColorId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v7, v6

    .line 133
    check-cast v7, Landroid/widget/TextView;

    iget v8, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sectionBarColorId:I

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 134
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 135
    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 148
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v3    # "sectionName":Ljava/lang/String;
    .end local v5    # "size":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_1
    return-object v6

    .line 140
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v2    # "section":Ljava/lang/String;
    .restart local v5    # "size":I
    :cond_1
    if-ge p1, v5, :cond_2

    .line 141
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v0, v7, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_1

    .line 145
    :cond_2
    sub-int/2addr p1, v5

    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    goto :goto_0

    .line 148
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v2    # "section":Ljava/lang/String;
    .end local v5    # "size":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 77
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v2, 0x1

    .line 78
    .local v2, "total":I
    iget-object v3, p0, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 79
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 81
    .end local v0    # "adapter":Landroid/widget/Adapter;
    :cond_0
    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 118
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 113
    .local p0, "this":Lcom/biznessapps/layout/adapters/SeparatedListAdapter;, "Lcom/biznessapps/layout/adapters/SeparatedListAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
