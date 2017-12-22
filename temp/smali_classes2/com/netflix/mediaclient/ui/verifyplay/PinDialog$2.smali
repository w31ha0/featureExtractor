.class final Lcom/netflix/mediaclient/ui/verifyplay/PinDialog$2;
.super Ljava/lang/Object;
.source "PinDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 485
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 486
    return-void
.end method
