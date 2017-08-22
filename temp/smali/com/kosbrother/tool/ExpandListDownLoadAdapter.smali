.class public Lcom/kosbrother/tool/ExpandListDownLoadAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandListDownLoadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;,
        Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final theCountText:Landroid/widget/TextView;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p3, "countText"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "mGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/Group;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->activity:Landroid/app/Activity;

    .line 30
    iput-object p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    .line 31
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theCountText:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->setCountText()V

    return-void
.end method

.method private setCountText()V
    .locals 5

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "totalCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kosbrother/tool/Group;

    invoke-virtual {v2}, Lcom/kosbrother/tool/Group;->getGroupCheckedCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theCountText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5171\u9078\u4e86 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u9805"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7, p2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v1

    .line 51
    .local v1, "child":Lcom/kosbrother/tool/ChildArticle;
    move-object v6, p4

    .line 52
    .local v6, "vi":Landroid/view/View;
    sget-object v7, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030038

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 53
    const v7, 0x7f0e00c2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    .local v4, "text":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "childString":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v7, 0x7f0e00c1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 58
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const v7, 0x7f0e00c3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 61
    .local v5, "textDownload":Landroid/widget/TextView;
    invoke-virtual {v1}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 62
    .local v3, "isDownloaded":Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 64
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 71
    new-instance v7, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, p0, v8, v9}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;-><init>(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;II)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-object v6
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

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
    .line 92
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 118
    iget-object v10, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    .line 120
    .local v1, "group":Lcom/kosbrother/tool/Group;
    move-object/from16 v9, p3

    .line 121
    .local v9, "vi":Landroid/view/View;
    sget-object v10, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030039

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 122
    const v10, 0x7f0e00c5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "text":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "groupString":Ljava/lang/String;
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    if-nez p2, :cond_1

    const v4, 0x7f0200ca

    .line 127
    .local v4, "id":I
    :goto_0
    const v10, 0x7f0e00c7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 128
    .local v5, "image":Landroid/widget/ImageView;
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    const v10, 0x7f0e00c4

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 132
    .local v0, "checkBox":Landroid/widget/CheckBox;
    const v10, 0x7f0e00c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 135
    .local v8, "textDownload":Landroid/widget/TextView;
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 136
    .local v6, "isAllDownloaded":Ljava/lang/Boolean;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 137
    invoke-virtual {v1, v3}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/kosbrother/tool/ChildArticle;->isDownload()Z

    move-result v10

    if-nez v10, :cond_0

    .line 138
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 136
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "i":I
    .end local v4    # "id":I
    .end local v5    # "image":Landroid/widget/ImageView;
    .end local v6    # "isAllDownloaded":Ljava/lang/Boolean;
    .end local v8    # "textDownload":Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f0200d1

    goto :goto_0

    .line 141
    .restart local v0    # "checkBox":Landroid/widget/CheckBox;
    .restart local v3    # "i":I
    .restart local v4    # "id":I
    .restart local v5    # "image":Landroid/widget/ImageView;
    .restart local v6    # "isAllDownloaded":Ljava/lang/Boolean;
    .restart local v8    # "textDownload":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 142
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 143
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :cond_3
    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getChecked()Z

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    new-instance v10, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v10, p0, v11}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;-><init>(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;I)V

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object v9
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 103
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 108
    return-void
.end method
