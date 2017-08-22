.class Lcom/novel/reader/adapter/ExpandListAdapter$1;
.super Ljava/lang/Object;
.source "ExpandListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/ExpandListAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

.field final synthetic val$child:Lcom/kosbrother/tool/ChildArticle;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/ExpandListAdapter;IILcom/kosbrother/tool/ChildArticle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/ExpandListAdapter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iput p2, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$groupPosition:I

    iput p3, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$childPosition:I

    iput-object p4, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v0, "articleIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 77
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 78
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7, v5}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kosbrother/tool/ChildArticle;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "j":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "articleNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 85
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 86
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7, v5}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/kosbrother/tool/ChildArticle;->getNum()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 84
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 90
    .end local v5    # "j":I
    :cond_3
    const/4 v6, 0x0

    .line 91
    .local v6, "position":I
    const/4 v3, 0x0

    :goto_4
    iget v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$groupPosition:I

    if-ge v3, v7, :cond_4

    .line 92
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v7, v7, Lcom/novel/reader/adapter/ExpandListAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 94
    :cond_4
    iget v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$childPosition:I

    add-int/2addr v6, v7

    .line 96
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v7}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$000(Lcom/novel/reader/adapter/ExpandListAdapter;)Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/novel/reader/ArticleActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "ArticleIDs"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 99
    const-string v7, "ArticlePosition"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v7, "ArticleId"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v7, "ArticleTitle"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "NovelName"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v8}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$100(Lcom/novel/reader/adapter/ExpandListAdapter;)Lcom/novel/reader/entity/Novel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v7, "NovelPic"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v8}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$100(Lcom/novel/reader/adapter/ExpandListAdapter;)Lcom/novel/reader/entity/Novel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v7, "NovelId"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v8}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$100(Lcom/novel/reader/adapter/ExpandListAdapter;)Lcom/novel/reader/entity/Novel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    const-string v7, "ArticleNum"

    iget-object v8, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNum()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 106
    const-string v7, "ArticleNums"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    iget-object v7, p0, Lcom/novel/reader/adapter/ExpandListAdapter$1;->this$0:Lcom/novel/reader/adapter/ExpandListAdapter;

    invoke-static {v7}, Lcom/novel/reader/adapter/ExpandListAdapter;->access$000(Lcom/novel/reader/adapter/ExpandListAdapter;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
