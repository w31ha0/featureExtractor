.class public Lcom/biznessapps/layout/adapters/MessageAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "MessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/MessageItem;",
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
            "Lcom/biznessapps/model/MessageItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MessageItem;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 28
    if-nez p2, :cond_2

    .line 29
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/MessageAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v6, p0, Lcom/biznessapps/layout/adapters/MessageAdapter;->layoutItemResourceId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 30
    new-instance v2, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;

    invoke-direct {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;-><init>()V

    .line 32
    .local v2, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;
    sget v5, Lcom/biznessapps/layout/R$id;->message_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->setTextViewText(Landroid/widget/TextView;)V

    .line 33
    sget v5, Lcom/biznessapps/layout/R$id;->message_date_text:I

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->setTextViewDate(Landroid/widget/TextView;)V

    .line 34
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    :goto_0
    iget-object v5, p0, Lcom/biznessapps/layout/adapters/MessageAdapter;->items:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/MessageItem;

    .line 40
    .local v3, "item":Lcom/biznessapps/model/MessageItem;
    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->getDate()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "sdfInput":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 47
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "sdfInput":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->hasColor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->getItemColor()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-virtual {v3}, Lcom/biznessapps/model/MessageItem;->getItemTextColor()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->getTextViewText()Landroid/widget/TextView;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;->getTextViewDate()Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/layout/adapters/MessageAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 57
    :cond_1
    invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V

    .line 58
    return-object p2

    .line 36
    .end local v2    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;
    .end local v3    # "item":Lcom/biznessapps/model/MessageItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;

    .restart local v2    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$MessageItem;
    goto :goto_0

    .line 48
    .restart local v3    # "item":Lcom/biznessapps/model/MessageItem;
    .restart local v4    # "sdfInput":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method
