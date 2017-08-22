.class Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;
.super Ljava/lang/Object;
.source "MyBookmarkFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    iput p2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "NovelId"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->access$300(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Bookmark;->getNovelId()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v3, "NovelName"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->access$300(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Bookmark;->getNovelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v2, "NovelAuthor"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v2, "NovelDescription"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v2, "NovelUpdate"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v3, "NovelPicUrl"

    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->access$300(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/novel/reader/entity/Bookmark;

    invoke-virtual {v2}, Lcom/novel/reader/entity/Bookmark;->getNovelPic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "NovelArticleNum"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    invoke-static {v2}, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->access$400(Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter$1;->this$1:Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;

    iget-object v2, v2, Lcom/kosbrother/fragments/MyBookmarkFragment$BookmarkSectionAdapter;->this$0:Lcom/kosbrother/fragments/MyBookmarkFragment;

    invoke-virtual {v2, v1}, Lcom/kosbrother/fragments/MyBookmarkFragment;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method
