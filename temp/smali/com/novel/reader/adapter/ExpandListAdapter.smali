.class public Lcom/novel/reader/adapter/ExpandListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandListAdapter.java"


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private expandGroup:I

.field public theGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final theNovel:Lcom/novel/reader/entity/Novel;

.field private final theNovelBookmark:Lcom/novel/reader/entity/Bookmark;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/novel/reader/adapter/ExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;I)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p3, "mNovel"    # Lcom/novel/reader/entity/Novel;
    .param p4, "expandGroup"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;",
            "Lcom/novel/reader/entity/Novel;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "mGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/Group;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    .line 42
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/novel/reader/adapter/ExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p3, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    .line 45
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v0}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v0

    invoke-static {v0, p1}, Lcom/novel/reader/api/NovelAPI;->getNovelBookmark(ILandroid/content/Context;)Lcom/novel/reader/entity/Bookmark;

    move-result-object v0

    iput-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovelBookmark:Lcom/novel/reader/entity/Bookmark;

    .line 46
    iput p4, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/novel/reader/adapter/ExpandListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/ExpandListAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/novel/reader/adapter/ExpandListAdapter;)Lcom/novel/reader/entity/Novel;
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/ExpandListAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/novel/reader/adapter/ExpandListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/novel/reader/adapter/ExpandListAdapter;

    .prologue
    .line 28
    iget v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    return v0
.end method

.method static synthetic access$202(Lcom/novel/reader/adapter/ExpandListAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/novel/reader/adapter/ExpandListAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    return p1
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iget-object v4, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/kosbrother/tool/Group;

    invoke-virtual {v4, p2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v0

    .line 64
    .local v0, "child":Lcom/kosbrother/tool/ChildArticle;
    move-object v3, p4

    .line 65
    .local v3, "vi":Landroid/view/View;
    sget-object v4, Lcom/novel/reader/adapter/ExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03003b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    const v4, 0x7f0e00c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, "text":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "childString":Ljava/lang/String;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v4, Lcom/novel/reader/adapter/ExpandListAdapter$1;

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/novel/reader/adapter/ExpandListAdapter$1;-><init>(Lcom/novel/reader/adapter/ExpandListAdapter;IILcom/kosbrother/tool/ChildArticle;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v4, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovelBookmark:Lcom/novel/reader/entity/Bookmark;

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theNovelBookmark:Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v4}, Lcom/novel/reader/entity/Bookmark;->getArticleTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    const-string v4, "#FF1919"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :cond_0
    return-object v3
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kosbrother/tool/Group;

    invoke-virtual {v0}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 147
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 153
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    .line 155
    .local v1, "group":Lcom/kosbrother/tool/Group;
    move-object v6, p3

    .line 156
    .local v6, "vi":Landroid/view/View;
    sget-object v7, Lcom/novel/reader/adapter/ExpandListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f03003a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 157
    const v7, 0x7f0e00c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    .local v5, "text":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "groupString":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    if-nez p2, :cond_1

    const v3, 0x7f0200ca

    .line 162
    .local v3, "id":I
    :goto_0
    const v7, 0x7f0e00c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 163
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    iget v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    if-ne v7, p1, :cond_0

    move-object v0, p4

    .line 166
    check-cast v0, Landroid/widget/ExpandableListView;

    .line 167
    .local v0, "eLV":Landroid/widget/ExpandableListView;
    iget v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter;->expandGroup:I

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 168
    new-instance v7, Lcom/novel/reader/adapter/ExpandListAdapter$2;

    invoke-direct {v7, p0, v0}, Lcom/novel/reader/adapter/ExpandListAdapter$2;-><init>(Lcom/novel/reader/adapter/ExpandListAdapter;Landroid/widget/ExpandableListView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .end local v0    # "eLV":Landroid/widget/ExpandableListView;
    :cond_0
    return-object v6

    .line 161
    .end local v3    # "id":I
    .end local v4    # "image":Landroid/widget/ImageView;
    :cond_1
    const v3, 0x7f0200d1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 138
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 143
    return-void
.end method
