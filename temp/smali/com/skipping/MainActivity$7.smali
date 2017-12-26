.class Lcom/skipping/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skipping/MainActivity;->Translate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/skipping/MainActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/skipping/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/skipping/MainActivity$7;->this$0:Lcom/skipping/MainActivity;

    iput-object p2, p0, Lcom/skipping/MainActivity$7;->val$dialog:Landroid/app/Dialog;

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 822
    iget-object v2, p0, Lcom/skipping/MainActivity$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 824
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "message/rfc822"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v2, "android.intent.extra.EMAIL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ddshnn@gmail.com"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v2, "android.intent.extra.SUBJECT"

    iget-object v3, p0, Lcom/skipping/MainActivity$7;->this$0:Lcom/skipping/MainActivity;

    const v4, 0x7f05003d

    invoke-virtual {v3, v4}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/skipping/MainActivity$7;->this$0:Lcom/skipping/MainActivity;

    const v4, 0x7f05003a

    invoke-virtual {v3, v4}, Lcom/skipping/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    :try_start_0
    iget-object v2, p0, Lcom/skipping/MainActivity$7;->this$0:Lcom/skipping/MainActivity;

    const-string v3, "Send mail..."

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/skipping/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/skipping/MainActivity$7;->this$0:Lcom/skipping/MainActivity;

    const-string v3, "There are no email clients installed."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
