.class public Lcom/biznessapps/layout/adapters/CouponAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "CouponAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/CouponItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutItemResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/CouponItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/CouponItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    if-nez p2, :cond_1

    .line 25
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/CouponAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/layout/adapters/CouponAdapter;->layoutItemResourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 26
    new-instance v0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;

    invoke-direct {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;-><init>()V

    .line 28
    .local v0, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;
    sget v2, Lcom/biznessapps/layout/R$id;->coupon_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->setTextViewText(Landroid/widget/TextView;)V

    .line 29
    sget v2, Lcom/biznessapps/layout/R$id;->checkin_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->setTextViewCheckin(Landroid/widget/TextView;)V

    .line 30
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/layout/adapters/CouponAdapter;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/CouponItem;

    .line 36
    .local v1, "item":Lcom/biznessapps/model/CouponItem;
    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getLastRedeemedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewCheckin()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->redeemed:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/adapters/CouponAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewCheckin()Landroid/widget/TextView;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/layout/adapters/CouponAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 54
    :cond_0
    return-object p2

    .line 32
    .end local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;
    .end local v1    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;

    .restart local v0    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;
    goto :goto_0

    .line 41
    .restart local v1    # "item":Lcom/biznessapps/model/CouponItem;
    :cond_2
    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v2

    if-nez v2, :cond_3

    .line 42
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewCheckin()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biznessapps/layout/adapters/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->unlocked:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/layout/adapters/ListItemHolder$CouponItem;->getTextViewCheckin()Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getCheckinTargetMax()I

    move-result v4

    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getCheckinTarget()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/biznessapps/model/CouponItem;->getCheckinTargetMax()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
