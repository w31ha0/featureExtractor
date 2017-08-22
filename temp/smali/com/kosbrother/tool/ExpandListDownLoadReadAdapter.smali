.class public Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandListDownLoadReadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;,
        Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private final activity:Landroid/app/Activity;

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

.field public theNovel:Lcom/novel/reader/entity/Novel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;
    .param p3, "novel"    # Lcom/novel/reader/entity/Novel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kosbrother/tool/Group;",
            ">;",
            "Lcom/novel/reader/entity/Novel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "mGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/kosbrother/tool/Group;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->activity:Landroid/app/Activity;

    .line 36
    iput-object p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->activity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 38
    iput-object p3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    iget-object v5, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kosbrother/tool/Group;

    invoke-virtual {v5, p2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v1

    .line 57
    .local v1, "child":Lcom/kosbrother/tool/ChildArticle;
    move-object v4, p4

    .line 58
    .local v4, "vi":Landroid/view/View;
    sget-object v5, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030038

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 59
    const v5, 0x7f0e00c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 60
    .local v3, "text":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "childString":Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v5, 0x7f0e00c1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 74
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    new-instance v5, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Child_CheckBox_Click;-><init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;II)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v5, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;-><init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;IILcom/kosbrother/tool/ChildArticle;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    return-object v4
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

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
    .line 130
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 150
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
    .line 156
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kosbrother/tool/Group;

    .line 158
    .local v1, "group":Lcom/kosbrother/tool/Group;
    move-object v6, p3

    .line 159
    .local v6, "vi":Landroid/view/View;
    sget-object v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030039

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 160
    const v7, 0x7f0e00c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 161
    .local v5, "text":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/novel/reader/util/NovelReaderUtil;->translateTextIfCN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "groupString":Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    if-nez p2, :cond_0

    const v3, 0x7f0200ca

    .line 165
    .local v3, "id":I
    :goto_0
    const v7, 0x7f0e00c7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 166
    .local v4, "image":Landroid/widget/ImageView;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    const v7, 0x7f0e00c4

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 184
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Lcom/kosbrother/tool/Group;->getChecked()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    new-instance v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, p0, v8}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;-><init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;I)V

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v6

    .line 164
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "id":I
    .end local v4    # "image":Landroid/widget/ImageView;
    :cond_0
    const v3, 0x7f0200d1

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 141
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 0
    .param p1, "groupPosition"    # I

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 146
    return-void
.end method
