.class Lcom/novel/reader/MainActivity$11;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/MainActivity;->showUpdateDialog(ILcom/novel/reader/MainActivity$UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/MainActivity;

.field final synthetic val$info:Lcom/novel/reader/MainActivity$UpdateInfo;


# direct methods
.method constructor <init>(Lcom/novel/reader/MainActivity;Lcom/novel/reader/MainActivity$UpdateInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/novel/reader/MainActivity$11;->this$0:Lcom/novel/reader/MainActivity;

    iput-object p2, p0, Lcom/novel/reader/MainActivity$11;->val$info:Lcom/novel/reader/MainActivity$UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/novel/reader/MainActivity$11;->val$info:Lcom/novel/reader/MainActivity$UpdateInfo;

    iget-object v2, v2, Lcom/novel/reader/MainActivity$UpdateInfo;->updateLink:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/novel/reader/MainActivity$11;->this$0:Lcom/novel/reader/MainActivity;

    invoke-virtual {v1, v0}, Lcom/novel/reader/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 747
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 748
    return-void
.end method
