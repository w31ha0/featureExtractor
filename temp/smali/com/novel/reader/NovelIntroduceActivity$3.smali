.class Lcom/novel/reader/NovelIntroduceActivity$3;
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
    .line 204
    iput-object p1, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 208
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$800(Lcom/novel/reader/NovelIntroduceActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$900(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 210
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$802(Lcom/novel/reader/NovelIntroduceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 211
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1000(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$900(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 214
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/novel/reader/NovelIntroduceActivity;->access$802(Lcom/novel/reader/NovelIntroduceActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 215
    iget-object v0, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-static {v0}, Lcom/novel/reader/NovelIntroduceActivity;->access$1000(Lcom/novel/reader/NovelIntroduceActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/novel/reader/NovelIntroduceActivity$3;->this$0:Lcom/novel/reader/NovelIntroduceActivity;

    invoke-virtual {v1}, Lcom/novel/reader/NovelIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
