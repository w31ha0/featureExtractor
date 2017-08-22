.class Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$1;
.super Ljava/lang/Object;
.source "NovelRecommendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;


# direct methods
.method constructor <init>(Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$1;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask$1;->this$1:Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;

    iget-object v0, v0, Lcom/novel/reader/NovelRecommendActivity$DownloadRecommendNovelTask;->this$0:Lcom/novel/reader/NovelRecommendActivity;

    invoke-virtual {v0}, Lcom/novel/reader/NovelRecommendActivity;->finish()V

    .line 84
    return-void
.end method
