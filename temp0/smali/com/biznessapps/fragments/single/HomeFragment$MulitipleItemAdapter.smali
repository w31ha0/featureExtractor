.class public Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;
.super Lcom/biznessapps/layout/adapters/AbstractAdapter;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/single/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulitipleItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/layout/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/model/LocationItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/biznessapps/fragments/single/HomeFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/LocationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;->this$0:Lcom/biznessapps/fragments/single/HomeFragment;

    .line 297
    sget v0, Lcom/biznessapps/layout/R$layout;->multiple_row:I

    invoke-direct {p0, p2, p3, v0}, Lcom/biznessapps/layout/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 298
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 303
    iget-object v4, p0, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;->items:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LocationItem;

    .line 305
    .local v2, "item":Lcom/biznessapps/model/LocationItem;
    if-nez p2, :cond_2

    .line 306
    iget-object v4, p0, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/fragments/single/HomeFragment$MulitipleItemAdapter;->layoutItemResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 307
    new-instance v1, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    invoke-direct {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 308
    .local v1, "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    sget v4, Lcom/biznessapps/layout/R$id;->simple_text_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 309
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 314
    :goto_0
    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v2}, Lcom/biznessapps/model/LocationItem;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "city":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/biznessapps/model/LocationItem;->getState()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, "state":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    .end local v0    # "city":Ljava/lang/String;
    .end local v3    # "state":Ljava/lang/String;
    :cond_1
    return-object p2

    .line 311
    .end local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;

    .restart local v1    # "holder":Lcom/biznessapps/layout/adapters/ListItemHolder$CommonItem;
    goto :goto_0
.end method
