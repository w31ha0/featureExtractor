.class public final Lcom/paypal/android/MEP/b/a;
.super Lcom/paypal/android/b/k;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/paypal/android/MEP/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/b/a$1;,
        Lcom/paypal/android/MEP/b/a$a;,
        Lcom/paypal/android/MEP/b/a$b;
    }
.end annotation


# static fields
.field private static l:Lcom/paypal/android/b/e;

.field private static q:Z


# instance fields
.field e:Z

.field f:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/Hashtable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/graphics/drawable/GradientDrawable;

.field private h:Landroid/graphics/drawable/GradientDrawable;

.field private i:Lcom/paypal/android/MEP/b/a$a;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/paypal/android/MEP/a/a;

.field private o:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Lcom/paypal/android/MEP/b/a$b;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/b/a;->q:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/paypal/android/MEP/b/a$a;Lcom/paypal/android/MEP/a/a;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lcom/paypal/android/b/k;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/MEP/a/a;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->o:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->p:Ljava/util/Vector;

    iput-boolean v5, p0, Lcom/paypal/android/MEP/b/a;->e:Z

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    iput v5, p0, Lcom/paypal/android/MEP/b/a;->r:I

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    new-instance v0, Lcom/paypal/android/MEP/b/d;

    invoke-direct {v0, p0}, Lcom/paypal/android/MEP/b/d;-><init>(Lcom/paypal/android/MEP/b/a;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->t:Landroid/view/View$OnClickListener;

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->u:Ljava/lang/String;

    invoke-virtual {p0, p0}, Lcom/paypal/android/MEP/b/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p3, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/MEP/a/a;

    iput-object p2, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    const v0, -0xff0001

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v5}, Lcom/paypal/android/MEP/b/a;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v6}, Lcom/paypal/android/MEP/b/a;->a(Landroid/widget/LinearLayout$LayoutParams;I)V

    const v0, -0x170e06

    const v1, -0x302111

    invoke-static {v4, v0, v1}, Lcom/paypal/android/a/d;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    const v0, -0x422d16

    const v1, -0x302111

    invoke-static {v4, v0, v1}, Lcom/paypal/android/a/d;->a(III)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setGravity(I)V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    const/4 v1, 0x2

    const v2, -0x99999a

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->c(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1b332

    const/16 v1, 0x1d0

    invoke-static {v0, v1}, Lcom/paypal/android/a/e;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1d002

    const/16 v1, 0x1ae

    invoke-static {v0, v1}, Lcom/paypal/android/a/e;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1, v4, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/a/o$a;->c:Lcom/paypal/android/a/o$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v3, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_funding"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->c:Lcom/paypal/android/b/d;

    invoke-virtual {v0, v5}, Lcom/paypal/android/b/d;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v4, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v4, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {p1, v4, v7}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    const v2, -0xcc9967

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    const-string v2, "ANDROID_getting_information"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    if-nez v0, :cond_5

    new-instance v0, Lcom/paypal/android/b/e;

    invoke-direct {v0, p1}, Lcom/paypal/android/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    :goto_1
    sget-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0, v6}, Lcom/paypal/android/b/e;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v1, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    :cond_1
    sput-boolean v5, Lcom/paypal/android/MEP/b/a;->q:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v3, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_fee"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v0

    if-ne v0, v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_mailing_address"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_ship_to"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0x99999a
        -0x353536
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;
    .locals 11

    const/4 v4, 0x0

    const/high16 v10, 0x40a00000    # 5.0f

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x3

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v8, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v3, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v4, v7, [I

    fill-array-data v4, :array_0

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v5, v7, [I

    fill-array-data v5, :array_1

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v6, v7, [I

    fill-array-data v6, :array_2

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, -0x603d10

    invoke-virtual {v2, v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, -0xa28365

    invoke-virtual {v3, v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, -0xffcc9a

    invoke-virtual {v4, v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v6, 0x7f5d7c9b

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    new-array v6, v8, [I

    fill-array-data v6, :array_4

    invoke-virtual {v1, v6, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_6

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_7

    invoke-virtual {v1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_8

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_9

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_a

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v8, [I

    fill-array-data v2, :array_b

    invoke-virtual {v1, v2, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x7f000000

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_2

    const/high16 v1, 0x7e000000

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->c:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_0

    const/high16 v1, 0x7d000000

    or-int/2addr v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0x50303
        -0x422d16
    .end array-data

    :array_1
    .array-data 4
        -0x664726
        -0xb6977b
    .end array-data

    :array_2
    .array-data 4
        -0xcf9c6a
        -0xffcc9a
    .end array-data

    :array_3
    .array-data 4
        0x7f99b8da
        0x7f496885
    .end array-data

    :array_4
    .array-data 4
        0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    :array_5
    .array-data 4
        0x101009e
        -0x10100a7
        0x101009c
    .end array-data

    :array_6
    .array-data 4
        0x101009e
        0x10100a7
        -0x101009c
    .end array-data

    :array_7
    .array-data 4
        0x101009e
        0x10100a7
        0x101009c
    .end array-data

    :array_8
    .array-data 4
        -0x101009e
        -0x10100a7
        -0x101009c
    .end array-data

    :array_9
    .array-data 4
        -0x101009e
        -0x10100a7
        0x101009c
    .end array-data

    :array_a
    .array-data 4
        -0x101009e
        0x10100a7
        -0x101009c
    .end array-data

    :array_b
    .array-data 4
        -0x101009e
        0x10100a7
        0x101009c
    .end array-data
.end method

.method static synthetic a(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->p:Ljava/util/Vector;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 14

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->a:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_21

    const-string v1, "FundingPlans"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_5

    :cond_0
    const-string v2, "DefaultFundingPlan"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/c;

    move-object v3, v2

    :goto_1
    const/4 v2, 0x0

    move v7, v2

    :goto_2
    iget-object v2, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v7, v2, :cond_1b

    iget-object v2, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/k;

    iget-object v4, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v4}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v4}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v8

    iget-object v4, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v4}, Lcom/paypal/android/a/a/g;->c()Ljava/lang/String;

    move-result-object v9

    iget-object v4, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v4}, Lcom/paypal/android/a/a/g;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    new-instance v10, Lcom/paypal/android/b/f;

    sget-object v5, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    sget-object v11, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-direct {v10, p1, v5, v11}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const-string v11, "fr_"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_3
    const-string v11, "BALANCE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    if-eqz v5, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    :goto_4
    invoke-static {v8, v6}, Lcom/paypal/android/a/h;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const-string v2, "BANK_DELAYED"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v9, -0x2

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-virtual {v2, v4, v5, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v4, "ANDROID_echeck_note"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    const/4 v4, 0x0

    new-instance v2, Ljava/math/BigDecimal;

    const-string v5, "0"

    invoke-direct {v2, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/paypal/android/a/a/c;->b:Lcom/paypal/android/a/a/a;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/paypal/android/a/a/c;->b:Lcom/paypal/android/a/a/a;

    invoke-virtual {v5}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v2, v3, Lcom/paypal/android/a/a/c;->b:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v2

    :cond_3
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getTotal()Ljava/math/BigDecimal;

    move-result-object v5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v9

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPal;->getPayment()Lcom/paypal/android/MEP/PayPalAdvancedPayment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/paypal/android/MEP/PayPalAdvancedPayment;->getCurrencyType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    iget-object v2, v3, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v4, v3, Lcom/paypal/android/a/a/c;->c:Lcom/paypal/android/a/a/f;

    iget-object v4, v4, Lcom/paypal/android/a/a/f;->b:Lcom/paypal/android/a/a/a;

    invoke-virtual {v4}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    iget-object v2, v3, Lcom/paypal/android/a/a/c;->c:Lcom/paypal/android/a/a/f;

    iget-object v2, v2, Lcom/paypal/android/a/a/f;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v2, 0x0

    move v6, v2

    :goto_5
    iget-object v2, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v6, v2, :cond_16

    iget-object v2, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/k;

    iget-object v8, v3, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v8}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v9}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    :goto_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-object v5, v4

    move-object v4, v2

    goto :goto_5

    :cond_4
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/c;

    :try_start_0
    const-string v4, "FundingPlanId"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/paypal/android/a/a/c;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object v3, v2

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    const-string v11, "BANK_DELAYED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ANDROID_echeck"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ANDROID_echeck"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    if-eqz v5, :cond_c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ANDROID_echeck"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ANDROID_echeck"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    const-string v5, "BANK_INSTANT"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_f

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const-string v5, "CREDITCARD"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "DEBITCARD"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_13

    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    iget-object v2, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    iget-object v2, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v4, v5

    goto/16 :goto_6

    :cond_16
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_17

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v4, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    const/4 v2, 0x1

    :goto_7
    if-eqz v2, :cond_18

    sget-object v2, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v4, v5, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x2

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const-string v4, "ANDROID_negative_balance"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_18
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_2

    :cond_19
    const/4 v2, 0x0

    goto :goto_7

    :cond_1a
    invoke-virtual {v5, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-lez v2, :cond_35

    const/4 v2, 0x1

    goto :goto_7

    :cond_1b
    iget-object v2, v3, Lcom/paypal/android/a/a/c;->c:Lcom/paypal/android/a/a/f;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/paypal/android/a/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    new-instance v5, Lcom/paypal/android/b/f;

    sget-object v6, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    sget-object v7, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-direct {v5, p1, v6, v7}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/paypal/android/a/a/f;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v7}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/paypal/android/a/a/f;->b:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v5, v2}, Lcom/paypal/android/b/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1c
    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_20

    const/4 v1, 0x1

    :goto_8
    move v2, v1

    :cond_1d
    iget-object v1, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/k;

    iget-object v1, v1, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v1}, Lcom/paypal/android/a/a/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BALANCE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v3, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1e

    const/4 v2, 0x0

    :cond_1e
    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    :cond_1f
    :goto_9
    return-void

    :cond_20
    const/4 v1, 0x0

    goto :goto_8

    :cond_21
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->b:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_27

    :try_start_1
    const-string v1, "FundingPlanId"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "FundingPlans"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_24

    :cond_22
    const-string v1, "DefaultFundingPlan"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_a
    if-eqz v1, :cond_1f

    iget-object v1, v1, Lcom/paypal/android/a/a/c;->b:Lcom/paypal/android/a/a/a;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/paypal/android/a/a/a;->a()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/paypal/android/b/f;

    sget-object v4, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    sget-object v5, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-direct {v3, p1, v4, v5}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    sget-object v4, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v4}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-lez v4, :cond_25

    const-string v4, "ANDROID_i_pay"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    :goto_b
    invoke-static {v2, v1}, Lcom/paypal/android/a/h;->a(Ljava/math/BigDecimal;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/paypal/android/b/f;->b(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_23

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    :cond_23
    :goto_c
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    goto :goto_9

    :cond_24
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_a

    :cond_25
    const-string v4, "ANDROID_free"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_26
    new-instance v1, Lcom/paypal/android/b/f;

    sget-object v2, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    sget-object v3, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-direct {v1, p1, v2, v3}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    const-string v2, "ANDROID_free"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_27
    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    sget-object v2, Lcom/paypal/android/MEP/b/a$a;->c:Lcom/paypal/android/MEP/b/a$a;

    if-ne v1, v2, :cond_1f

    const-string v1, "AvailableAddresses"

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    const-string v2, "ShippingAddressId"

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1f

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v13, v3

    move-object v3, v4

    move v4, v13

    :goto_d
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_28

    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/paypal/android/a/a/h;

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_28
    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/paypal/android/a/a/h;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/paypal/android/b/f;

    sget-object v9, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    sget-object v10, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-direct {v8, p1, v9, v10}, Lcom/paypal/android/b/f;-><init>(Landroid/content/Context;Lcom/paypal/android/a/o$a;Lcom/paypal/android/a/o$a;)V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_29

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\n"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2a

    const-string v2, ", "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2a
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2b

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2b
    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2d

    :cond_2c
    if-eqz v5, :cond_2e

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2e

    :cond_2d
    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    if-eqz v6, :cond_31

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v7, :cond_2f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_30

    :cond_2f
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    :cond_30
    const-string v2, ", "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    if-eqz v7, :cond_32

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v3, :cond_32

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_32

    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_32
    if-eqz v3, :cond_33

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_33

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_33
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/paypal/android/b/f;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_34

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_34
    const/4 v1, 0x0

    goto :goto_e

    :catch_1
    move-exception v1

    goto/16 :goto_9

    :cond_35
    move v2, v4

    goto/16 :goto_7
.end method

.method static synthetic b(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->o:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic c(Lcom/paypal/android/MEP/b/a;)Lcom/paypal/android/MEP/a/a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/MEP/a/a;

    return-object v0
.end method

.method private c(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->a()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/paypal/android/MEP/b/a;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private e()V
    .locals 9

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_0
    const-string v1, "FundingPlans"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    move v3, v4

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/c;

    iget-object v2, v1, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/k;

    iget-object v6, v2, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    invoke-virtual {v6}, Lcom/paypal/android/a/a/g;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/paypal/android/a/a/g;->a()Ljava/lang/String;

    move-result-object v5

    const-string v8, "BALANCE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    const-string v5, "BANK_DELAYED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ANDROID_echeck"

    invoke-static {v5}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    const-string v6, "label"

    invoke-virtual {v5, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "plan"

    invoke-virtual {v5, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v2, "BANK_DELAYED"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "BANK_INSTANT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "CREDITCARD"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DEBITCARD"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-virtual {v6}, Lcom/paypal/android/a/a/g;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lcom/paypal/android/a/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Lcom/paypal/android/a/a/g;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/paypal/android/MEP/a/d$1;->b()V

    return-void

    :cond_5
    move-object v2, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/paypal/android/MEP/b/a;->r:I

    if-ne p1, v5, :cond_8

    sget-object v0, Lcom/paypal/android/MEP/b/a$1;->a:[I

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v6, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_1
    const-string v1, "FundingPlans"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0, v5}, Lcom/paypal/android/MEP/b/a;->c(Z)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/paypal/android/MEP/b/a;->e()V

    invoke-super {p0, p1}, Lcom/paypal/android/b/k;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->d()V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "PricingDetails"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "FeeBearer"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID_choose_who_pays_the_fee"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    const-string v1, "ApplyFeeToReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ANDROID_i_pay"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    invoke-interface {v1, p0, v0}, Lcom/paypal/android/MEP/b/a$b;->a(Lcom/paypal/android/MEP/b/a;I)V

    :cond_3
    invoke-super {p0, p1}, Lcom/paypal/android/b/k;->a(I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NDROID_recipient_pays"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-eq v0, v6, :cond_6

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/b;

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "AvailableAddresses"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_5

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    :goto_3
    invoke-static {}, Lcom/paypal/android/MEP/a/d$1;->b()V

    invoke-super {p0, p1}, Lcom/paypal/android/b/k;->a(I)V

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v1, "AvailableAddresses"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->d()V

    iput-object v2, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-super {p0, p1}, Lcom/paypal/android/b/k;->a(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/b/a;->q:Z

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    :try_start_0
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :cond_1
    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/paypal/android/MEP/b/a;->e()V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "FundingPlans"

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Z)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->CREATE_PAYMENT_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/paypal/android/MEP/b/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/paypal/android/MEP/b/a$a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 15

    const/4 v10, 0x2

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->u:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/MEP/a/a;

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/a/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/paypal/android/MEP/b/a;->u:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/paypal/android/MEP/b/a;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/paypal/android/MEP/b/a;->c(Z)V

    invoke-super {p0, v7}, Lcom/paypal/android/b/k;->a(I)V

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->d()V

    sget-object v0, Lcom/paypal/android/MEP/b/a$1;->a:[I

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_change_funding"

    invoke-static {v1}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v8}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    :cond_2
    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_6

    :try_start_0
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const-string v1, "plan"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/paypal/android/a/a/c;

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v2

    if-ne v2, v10, :cond_5

    sget-object v2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    :goto_2
    const-string v9, "FundingPlanId"

    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/paypal/android/a/a/c;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v9, "label"

    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v2, v0, v6}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v0

    iget-object v9, p0, Lcom/paypal/android/MEP/b/a;->p:Ljava/util/Vector;

    invoke-virtual {v1}, Lcom/paypal/android/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    if-nez v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V

    move v5, v7

    :cond_3
    add-int/lit8 v6, v6, 0x1

    move v4, v0

    :cond_4
    move v2, v4

    move v1, v5

    move v4, v6

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v1

    move v6, v4

    move v4, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v2, v4

    move v1, v5

    move v4, v6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->s:Lcom/paypal/android/MEP/b/a$b;

    invoke-interface {v0, p0, v4}, Lcom/paypal/android/MEP/b/a$b;->a(Lcom/paypal/android/MEP/b/a;I)V

    :cond_7
    if-nez v6, :cond_1

    const-string v0, " "

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v0

    if-ne v0, v10, :cond_b

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    move-object v1, v0

    :goto_4
    const-string v0, "AvailableAddresses"

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    const-string v3, "ShippingAddressId"

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v3, v7, :cond_1

    sget-object v3, Lcom/paypal/android/a/o$a;->d:Lcom/paypal/android/a/o$a;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v3

    if-ne v3, v7, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_change_mailing_address_to"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v8}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/b/a;->o:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    move v5, v2

    move v3, v2

    move v4, v2

    :goto_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v5, v2, :cond_10

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/paypal/android/a/a/h;

    :try_start_1
    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->e()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->g()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->f()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    const-string v6, "\n"

    :goto_7
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v9, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_e

    const-string v6, "\n"

    :goto_8
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v11, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_9
    if-eqz v12, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a
    if-eqz v1, :cond_f

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    if-eqz v9, :cond_f

    move v2, v4

    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto/16 :goto_6

    :cond_b
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->g()Ljava/util/Hashtable;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_change_shipping_to"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_d
    :try_start_2
    const-string v6, ""

    goto/16 :goto_7

    :cond_e
    const-string v6, ""

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {p0, v9, v6, v4}, Lcom/paypal/android/MEP/b/a;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->getId()I

    move-result v9

    iget-object v10, p0, Lcom/paypal/android/MEP/b/a;->o:Ljava/util/Vector;

    invoke-virtual {v2}, Lcom/paypal/android/a/a/h;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v6}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    if-nez v3, :cond_12

    invoke-virtual {p0, v9}, Lcom/paypal/android/MEP/b/a;->setNextFocusDownId(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v2, v7

    :goto_a
    add-int/lit8 v3, v4, 0x1

    move v14, v2

    move v2, v3

    move v3, v14

    goto :goto_9

    :catch_1
    move-exception v2

    move v2, v4

    goto :goto_9

    :cond_10
    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->a(Landroid/view/View;)V

    :cond_11
    if-nez v4, :cond_1

    const-string v0, " "

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_12
    move v2, v3

    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/paypal/android/MEP/b/a;->u:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/b/a;->q:Z

    invoke-static {}, Lcom/paypal/android/MEP/a/d$1;->b()V

    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/paypal/android/MEP/b/a$1;->a:[I

    iget-object v1, p0, Lcom/paypal/android/MEP/b/a;->i:Lcom/paypal/android/MEP/b/a$a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/b/a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->e:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/paypal/android/MEP/b/a;->e:Z

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/paypal/android/MEP/b/a;->e:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/paypal/android/MEP/b/a;->e:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/paypal/android/MEP/b/a;->r:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->n:Lcom/paypal/android/MEP/a/a;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/a/a;->d()V

    :cond_0
    invoke-super {p0, p1}, Lcom/paypal/android/b/k;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->g:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/b/a;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/b/a;->h:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/b/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
