.class public final Lcom/paypal/android/MEP/a/h;
.super Lcom/paypal/android/b/j;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/b/g$a;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/paypal/android/MEP/b/b;

.field private c:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/paypal/android/b/j;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/paypal/android/b/j;->a(Landroid/content/Context;)V

    invoke-static {p1, v6, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v2, p1, p0}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Lcom/paypal/android/b/j;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/h;->b:Lcom/paypal/android/MEP/b/b;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/h;->b:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/b/g$a;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/h;->b:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/h;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-static {}, Lcom/paypal/android/a/d;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v0

    if-ne v0, v5, :cond_1

    new-instance v0, Lcom/paypal/android/b/h;

    const-string v3, "ANDROID_donation_made"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lcom/paypal/android/b/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    new-instance v3, Lcom/paypal/android/b/f;

    sget-object v0, Lcom/paypal/android/a/o$a;->b:Lcom/paypal/android/a/o$a;

    sget-object v4, Lcom/paypal/android/a/o$a;->b:Lcom/paypal/android/a/o$a;

    invoke-direct {v3, p1, v0, v4}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/paypal/android/b/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "ANDROID_successfully_paid_amount_to_recipient"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v4

    if-ne v4, v5, :cond_0

    const-string v0, "ANDROID_successfully_donated_amount_to_recipient"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v4, "{1}"

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getTotal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v6, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    const-string v3, "ANDROID_done"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v4

    invoke-direct {v3, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/a/e;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/a/h;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    new-instance v0, Lcom/paypal/android/b/h;

    const-string v3, "ANDROID_payment_made"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Lcom/paypal/android/b/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/paypal/android/b/g;I)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/paypal/android/MEP/a/h;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/paypal/android/MEP/a/h;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "1111111"

    sput-object v0, Lcom/paypal/android/MEP/a/h;->a:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "PayKey"

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v1, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method
