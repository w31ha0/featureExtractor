.class Lcom/biznessapps/fragments/qr/QrScannerFragment$1;
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
    .line 72
    iput-object p1, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$1;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/fragments/qr/QrScannerFragment$1;->this$0:Lcom/biznessapps/fragments/qr/QrScannerFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/qr/QrScannerFragment;->access$000(Lcom/biznessapps/fragments/qr/QrScannerFragment;)V

    .line 76
    return-void
.end method
