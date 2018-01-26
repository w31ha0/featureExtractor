.class public Lcom/biznessapps/layout/adapters/FallWallAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "FallWallAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/FanWallComment;",
        ">;"
    }
.end annotation


# instance fields
.field private isParentAdapter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .param p4, "isParentAdapter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/FanWallComment;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/FanWallComment;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 23
    iput-boolean p4, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->isParentAdapter:Z

    .line 24
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    if-nez p2, :cond_2

    .line 30
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;-><init>()V

    .line 33
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;
    sget v2, Lcom/biznessapps/layout/R$id;->fan_wall_comment:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->setCommentTextView(Landroid/widget/TextView;)V

    .line 34
    sget v2, Lcom/biznessapps/layout/R$id;->fan_wall_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->setNameTextView(Landroid/widget/TextView;)V

    .line 35
    sget v2, Lcom/biznessapps/layout/R$id;->fan_wall_time_ago:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->setTimeAgoTextView(Landroid/widget/TextView;)V

    .line 36
    sget v2, Lcom/biznessapps/layout/R$id;->fan_wall_comment_replies:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->setReplyTextView(Landroid/widget/TextView;)V

    .line 37
    sget v2, Lcom/biznessapps/layout/R$id;->fan_wall_comment_item_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->setFanWallImageView(Landroid/widget/ImageView;)V

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/FanWallComment;

    .line 44
    .local v1, "item":Lcom/biznessapps/model/FanWallComment;
    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getCommentTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getNameTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getTimeAgoTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getTimeAgo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->imageDownloader:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getImage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getFanWallImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/utils/ImageDownloader;->download(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 53
    :cond_0
    iget-boolean v2, p0, Lcom/biznessapps/layout/adapters/FallWallAdapter;->isParentAdapter:Z

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getReplyTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/FanWallComment;->getReplies()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :cond_1
    :goto_1
    return-object p2

    .line 40
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;
    .end local v1    # "item":Lcom/biznessapps/model/FanWallComment;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;
    goto :goto_0

    .line 56
    .restart local v1    # "item":Lcom/biznessapps/model/FanWallComment;
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$FanWallItem;->getReplyTextView()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
