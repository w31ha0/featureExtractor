.class public final Lcom/paypal/android/MEP/a/c;
.super Lcom/paypal/android/b/j;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/b/g$a;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private c:Landroid/content/Intent;

.field private d:Lcom/paypal/android/b/i;

.field private e:Lcom/paypal/android/MEP/b/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/b/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/paypal/android/b/j;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Landroid/content/Intent;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/paypal/android/MEP/a/c;->c:Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Landroid/content/Intent;

    const-string v1, "FATAL_ERROR_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->c:Landroid/content/Intent;

    const-string v1, "FATAL_ERROR_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "10001"

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->a:Ljava/lang/String;

    const-string v0, "ANDROID_10001"

    invoke-static {v0}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/c;->b:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v3, 0xa

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x5

    invoke-super {p0, p1}, Lcom/paypal/android/b/j;->a(Landroid/content/Context;)V

    const/4 v0, -0x2

    invoke-static {p1, v5, v0}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v1, Lcom/paypal/android/a/o$a;->a:Lcom/paypal/android/a/o$a;

    invoke-static {v1, p1}, Lcom/paypal/android/a/o;->b(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v1, p1, p0}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Lcom/paypal/android/b/j;)V

    iput-object v1, p0, Lcom/paypal/android/MEP/a/c;->e:Lcom/paypal/android/MEP/b/b;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->e:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v1, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/b/g$a;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/a/c;->e:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/c;->addView(Landroid/view/View;)V

    invoke-static {p1, v5, v5}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/a/d;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Lcom/paypal/android/b/h;

    const-string v2, "ANDROID_error_heading"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/paypal/android/b/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v1, -0x2

    invoke-static {p1, v5, v1}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/b/i;

    sget-object v3, Lcom/paypal/android/b/i$a;->a:Lcom/paypal/android/b/i$a;

    invoke-direct {v2, p1, v3}, Lcom/paypal/android/b/i;-><init>(Landroid/content/Context;Lcom/paypal/android/b/i$a;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    const-string v3, "ANDROID_10001"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    invoke-virtual {v2, v7, v4, v7, v4}, Lcom/paypal/android/b/i;->setPadding(IIII)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    invoke-virtual {v2, v7}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/c;->d:Lcom/paypal/android/b/i;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v2, "ANDROID_ok"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setGravity(I)V

    invoke-static {}, Lcom/paypal/android/a/e;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    new-instance v2, Lcom/paypal/android/MEP/a/c$1;

    invoke-direct {v2, p0}, Lcom/paypal/android/MEP/a/c$1;-><init>(Lcom/paypal/android/MEP/a/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/c;->addView(Landroid/view/View;)V

    return-void
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
    .locals 0

    return-void
.end method
