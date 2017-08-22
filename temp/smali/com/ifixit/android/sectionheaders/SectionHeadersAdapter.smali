.class public Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionHeadersAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    }
.end annotation


# static fields
.field private static final HEADER_POSITION:I = -0x1

.field private static final HEADER_VIEW_TYPE:I = 0x0

.field private static final ITEM_VIEW_TYPE:I = 0x1

.field protected static final NO_NEXT_HEADER:I = -0x1

.field private static final VIEW_TYPES:I = 0x2


# instance fields
.field protected mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ifixit/android/sectionheaders/Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->mSections:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method private getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "sectionNumber":I
    iget-object v2, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifixit/android/sectionheaders/Section;

    .line 138
    .local v0, "section":Lcom/ifixit/android/sectionheaders/Section;
    if-nez p1, :cond_0

    .line 139
    new-instance v2, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3, v1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;-><init>(Lcom/ifixit/android/sectionheaders/Section;II)V

    .line 149
    .end local v0    # "section":Lcom/ifixit/android/sectionheaders/Section;
    :goto_1
    return-object v2

    .line 140
    .restart local v0    # "section":Lcom/ifixit/android/sectionheaders/Section;
    :cond_0
    invoke-virtual {v0}, Lcom/ifixit/android/sectionheaders/Section;->getCount()I

    move-result v3

    if-gt p1, v3, :cond_1

    .line 141
    new-instance v2, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    add-int/lit8 v3, p1, -0x1

    invoke-direct {v2, v0, v3, v1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;-><init>(Lcom/ifixit/android/sectionheaders/Section;II)V

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {v0}, Lcom/ifixit/android/sectionheaders/Section;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v3

    .line 146
    add-int/lit8 v1, v1, 0x1

    .line 147
    goto :goto_0

    .line 149
    .end local v0    # "section":Lcom/ifixit/android/sectionheaders/Section;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addSection(Lcom/ifixit/android/sectionheaders/Section;)V
    .locals 1
    .param p1, "section"    # Lcom/ifixit/android/sectionheaders/Section;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "count":I
    iget-object v2, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifixit/android/sectionheaders/Section;

    .line 47
    .local v1, "section":Lcom/ifixit/android/sectionheaders/Section;
    invoke-virtual {v1}, Lcom/ifixit/android/sectionheaders/Section;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 48
    goto :goto_0

    .line 50
    .end local v1    # "section":Lcom/ifixit/android/sectionheaders/Section;
    :cond_0
    return v0
.end method

.method protected getHeaderPosition(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 157
    .local v0, "sectionPosition":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    add-int/lit8 v1, v1, 0x1

    sub-int v1, p1, v1

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 56
    .local v0, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    invoke-virtual {v1}, Lcom/ifixit/android/sectionheaders/Section;->getHeaderItem()Ljava/lang/Object;

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    iget v2, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    invoke-virtual {v1, v2}, Lcom/ifixit/android/sectionheaders/Section;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 76
    .local v0, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 77
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getNextHeaderPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 163
    .local v0, "sectionPosition":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->sectionNumber:I

    iget-object v2, p0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_0

    .line 164
    const/4 v1, -0x1

    .line 166
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    invoke-virtual {v1}, Lcom/ifixit/android/sectionheaders/Section;->getCount()I

    move-result v1

    iget v2, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    sub-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 102
    .local v0, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 103
    iget-object v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    invoke-virtual {v1, p2, p3}, Lcom/ifixit/android/sectionheaders/Section;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    iget v2, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    invoke-virtual {v1, v2, p2, p3}, Lcom/ifixit/android/sectionheaders/Section;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v0

    .line 92
    .local v0, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v1, v0, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 110
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v6

    .line 112
    .local v6, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v0, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    iget v3, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ifixit/android/sectionheaders/Section;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x0

    .line 121
    invoke-direct {p0, p3}, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter;->getSectionPosition(I)Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;

    move-result-object v6

    .line 123
    .local v6, "section":Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;
    iget v0, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 128
    :goto_0
    return v7

    .line 126
    :cond_0
    iget-object v0, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->section:Lcom/ifixit/android/sectionheaders/Section;

    iget v3, v6, Lcom/ifixit/android/sectionheaders/SectionHeadersAdapter$SectionPosition;->position:I

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ifixit/android/sectionheaders/Section;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method
