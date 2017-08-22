.class Lcom/novel/reader/adapter/GridViewAppAdapter$1;
.super Ljava/lang/Object;
.source "GridViewAppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/adapter/GridViewAppAdapter;->getAppGridView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/novel/reader/entity/GameAPP;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

.field final synthetic val$app:Lcom/novel/reader/entity/GameAPP;


# direct methods
.method constructor <init>(Lcom/novel/reader/adapter/GridViewAppAdapter;Lcom/novel/reader/entity/GameAPP;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/adapter/GridViewAppAdapter;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    iput-object p2, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$1;->val$app:Lcom/novel/reader/entity/GameAPP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$1;->this$0:Lcom/novel/reader/adapter/GridViewAppAdapter;

    iget-object v1, p0, Lcom/novel/reader/adapter/GridViewAppAdapter$1;->val$app:Lcom/novel/reader/entity/GameAPP;

    invoke-virtual {v0, v1}, Lcom/novel/reader/adapter/GridViewAppAdapter;->showRecommendAppDialog(Lcom/novel/reader/entity/GameAPP;)V

    .line 86
    return-void
.end method
