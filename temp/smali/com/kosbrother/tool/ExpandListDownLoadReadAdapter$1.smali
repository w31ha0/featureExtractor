.class Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;
.super Ljava/lang/Object;
.source "ExpandListDownLoadReadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

.field final synthetic val$child:Lcom/kosbrother/tool/ChildArticle;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;IILcom/kosbrother/tool/ChildArticle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iput p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$groupPosition:I

    iput p3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$childPosition:I

    iput-object p4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, "articleIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 85
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 86
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

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

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 84
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v5    # "j":I
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, "articleNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 93
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 94
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

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

    .line 93
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 92
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 98
    .end local v5    # "j":I
    :cond_3
    const/4 v6, 0x0

    .line 99
    .local v6, "position":I
    const/4 v3, 0x0

    :goto_4
    iget v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$groupPosition:I

    if-ge v3, v7, :cond_4

    .line 100
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v7, v7, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/kosbrother/tool/Group;

    invoke-virtual {v7}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v7

    add-int/2addr v6, v7

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 102
    :cond_4
    iget v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$childPosition:I

    add-int/2addr v6, v7

    .line 104
    new-instance v4, Landroid/content/Intent;

    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-static {v7}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->access$000(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;)Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/novel/reader/ArticleActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v4, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "ArticleIDs"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    const-string v7, "ArticlePosition"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    const-string v7, "ArticleId"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    const-string v7, "ArticleTitle"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v7, "NovelName"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v8, v8, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v7, "NovelPic"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v8, v8, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getPic()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v7, "NovelId"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v8, v8, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theNovel:Lcom/novel/reader/entity/Novel;

    invoke-virtual {v8}, Lcom/novel/reader/entity/Novel;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v7, "ArticleNum"

    iget-object v8, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->val$child:Lcom/kosbrother/tool/ChildArticle;

    invoke-virtual {v8}, Lcom/kosbrother/tool/ChildArticle;->getNum()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v7, "ArticleNums"

    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 116
    iget-object v7, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$1;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-static {v7}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->access$000(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
