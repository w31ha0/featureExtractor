.class Lcom/novel/reader/BookmarkActivity$2;
.super Ljava/lang/Object;
.source "BookmarkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/BookmarkActivity;->showArticleDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/BookmarkActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/BookmarkActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/BookmarkActivity;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/novel/reader/BookmarkActivity$2;->this$0:Lcom/novel/reader/BookmarkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 194
    return-void
.end method
