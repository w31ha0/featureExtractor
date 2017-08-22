.class Lcom/novel/reader/NovelIntroduceActivity$1;
.super Ljava/lang/Object;
.source "NovelIntroduceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/NovelIntroduceActivity;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/NovelIntroduceActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelIntroduceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/NovelIntroduceActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0700a3

    .line 174
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$200(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v2}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$200(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v2}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$300(Lcom/novel/reader/NovelIntroduceActivity;)V

    .line 177
    new-instance v0, Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v2}, Lcom/novel/reader/NovelIntroduceActivity;->access$400(Lcom/novel/reader/NovelIntroduceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v3}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v3

    iget-object v4, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v4}, Lcom/novel/reader/NovelIntroduceActivity;->access$600(Lcom/novel/reader/NovelIntroduceActivity;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/novel/reader/adapter/ExpandListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;I)V

    .line 178
    .local v0, "mAdapter":Lcom/novel/reader/adapter/ExpandListAdapter;
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$700(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 185
    :goto_0
    return-void

    .line 180
    .end local v0    # "mAdapter":Lcom/novel/reader/adapter/ExpandListAdapter;
    :cond_0
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$200(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v2}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$300(Lcom/novel/reader/NovelIntroduceActivity;)V

    .line 182
    new-instance v0, Lcom/novel/reader/adapter/ExpandListAdapter;

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    iget-object v2, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v2}, Lcom/novel/reader/NovelIntroduceActivity;->access$400(Lcom/novel/reader/NovelIntroduceActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v3}, Lcom/novel/reader/NovelIntroduceActivity;->access$500(Lcom/novel/reader/NovelIntroduceActivity;)Lcom/novel/reader/entity/Novel;

    move-result-object v3

    iget-object v4, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v4}, Lcom/novel/reader/NovelIntroduceActivity;->access$600(Lcom/novel/reader/NovelIntroduceActivity;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/novel/reader/adapter/ExpandListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/novel/reader/entity/Novel;I)V

    .line 183
    .restart local v0    # "mAdapter":Lcom/novel/reader/adapter/ExpandListAdapter;
    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$1;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$700(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    goto :goto_0
.end method
