.class Lcom/biznessapps/fragments/qr/QrScannerFragment$2;
.super Ljava/lang/Object;
.source "QrScannerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/qr/QrScannerFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/qr/QrScannerFragment;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    invoke-virtual {v1}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "helpIntent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "QR_SCANNER_HELP_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->help:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$2;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    invoke-virtual {v1, v0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
