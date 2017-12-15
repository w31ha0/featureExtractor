.class final Lcom/tapjoy/p;
.super Ljava/lang/Object;
.source "TJCOffersWebView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tapjoy/p;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    return-void
.end method
