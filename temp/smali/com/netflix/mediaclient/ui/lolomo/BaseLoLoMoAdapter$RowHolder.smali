.class public Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;
.super Ljava/lang/Object;
.source "BaseLoLoMoAdapter.java"


# instance fields
.field public final contentGroup:Landroid/view/View;

.field public final defaultTitleColors:Landroid/content/res/ColorStateList;

.field public final rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

.field public final shelf:Landroid/view/View;

.field public final title:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/view/View;Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->contentGroup:Landroid/view/View;

    .line 164
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->title:Landroid/widget/TextView;

    .line 165
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    .line 166
    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->shelf:Landroid/view/View;

    .line 168
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->defaultTitleColors:Landroid/content/res/ColorStateList;

    .line 169
    return-void
.end method


# virtual methods
.method public onViewMovedToScrapHeap()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "BaseLoLoMoAdapter"

    const-string/jumbo v1, "rowContent is null - can\'t notify of move to scrap heap"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$RowHolder;->rowContent:Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseLoLoMoAdapter$LoMoRowContent;->onViewMovedToScrapHeap()V

    goto :goto_0
.end method
