.class final Lcom/paypal/android/MEP/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/paypal/android/MEP/a/c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/a/c;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/a/c$1;->a:Lcom/paypal/android/MEP/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v2, "CorrelationId"

    invoke-virtual {v1, v2}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v2

    const-string v3, "PayKey"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/paypal/android/MEP/a/c$1;->a:Lcom/paypal/android/MEP/a/c;

    iget-object v3, v3, Lcom/paypal/android/MEP/a/c;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/paypal/android/MEP/a/c$1;->a:Lcom/paypal/android/MEP/a/c;

    iget-object v4, v4, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/paypal/android/MEP/PayPalActivity;->paymentFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
