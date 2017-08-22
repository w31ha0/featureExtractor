.class Lcom/novel/reader/DonateActivity$2;
.super Ljava/lang/Object;
.source "DonateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/novel/reader/DonateActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/novel/reader/DonateActivity;


# direct methods
.method constructor <init>(Lcom/novel/reader/DonateActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/novel/reader/DonateActivity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/novel/reader/DonateActivity$2;->this$0:Lcom/novel/reader/DonateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/novel/reader/DonateActivity$2;->this$0:Lcom/novel/reader/DonateActivity;

    new-instance v1, Lcom/android/vending/billing/InAppBillingForNovel;

    iget-object v2, p0, Lcom/novel/reader/DonateActivity$2;->this$0:Lcom/novel/reader/DonateActivity;

    invoke-direct {v1, v2}, Lcom/android/vending/billing/InAppBillingForNovel;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/novel/reader/DonateActivity;->access$002(Lcom/novel/reader/DonateActivity;Lcom/android/vending/billing/InAppBillingForNovel;)Lcom/android/vending/billing/InAppBillingForNovel;

    .line 64
    return-void
.end method
