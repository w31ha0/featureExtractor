.class public final Lcom/paypal/android/MEP/a/d;
.super Lcom/paypal/android/b/j;

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/paypal/android/MEP/a$b;
.implements Lcom/paypal/android/b/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/paypal/android/MEP/a/d$1;,
        Lcom/paypal/android/MEP/a/d$b;,
        Lcom/paypal/android/MEP/a/d$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static l:Lcom/paypal/android/b/e;


# instance fields
.field private b:Lcom/paypal/android/MEP/a/d$a;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/paypal/android/MEP/b/b;

.field private h:Lcom/paypal/android/b/i;

.field private i:Lcom/paypal/android/b/i;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Lcom/paypal/android/MEP/b/e;

.field private o:Lcom/paypal/android/b/a;

.field private p:Landroid/webkit/WebView;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/a/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/paypal/android/b/j;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->r:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/MEP/a/d;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/e;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/paypal/android/a/h;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/paypal/android/a/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    :goto_1
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->d()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->b:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    invoke-static {}, Lcom/paypal/android/MEP/a;->a()Lcom/paypal/android/MEP/a;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Lcom/paypal/android/MEP/a;->a(Lcom/paypal/android/MEP/a$b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private e()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/paypal/android/a/h;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/paypal/android/a/h;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v3, v0

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/d;->b()V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v2, Lcom/paypal/android/MEP/a/d$a;->b:Lcom/paypal/android/MEP/a/d$a;

    if-ne v1, v2, :cond_0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string v1, "currentUser"

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/paypal/android/a/b;->j()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/paypal/android/a/b;->i()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 11

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-super {p0, p1}, Lcom/paypal/android/b/j;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->a:Lcom/paypal/android/MEP/a/d$a;

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0xf

    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v2, Lcom/paypal/android/a/o$a;->a:Lcom/paypal/android/a/o$a;

    invoke-static {v2, p1}, Lcom/paypal/android/a/o;->b(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/paypal/android/MEP/b/b;

    invoke-direct {v2, p1, p0}, Lcom/paypal/android/MEP/b/b;-><init>(Landroid/content/Context;Lcom/paypal/android/b/j;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, p0}, Lcom/paypal/android/MEP/b/b;->a(Lcom/paypal/android/b/g$a;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, v7, v9}, Lcom/paypal/android/MEP/b/b;->a(ZZ)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/paypal/android/a/d;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Lcom/paypal/android/b/h;

    const-string v2, "ANDROID_login"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/paypal/android/b/h;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/b/i;

    sget-object v2, Lcom/paypal/android/b/i$a;->a:Lcom/paypal/android/b/i$a;

    invoke-direct {v0, p1, v2}, Lcom/paypal/android/b/i;-><init>(Landroid/content/Context;Lcom/paypal/android/b/i$a;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    const-string v2, "Placeholder"

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v7, v6, v7, v6}, Lcom/paypal/android/b/i;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/b/i;

    sget-object v2, Lcom/paypal/android/b/i$a;->d:Lcom/paypal/android/b/i$a;

    invoke-direct {v0, p1, v2}, Lcom/paypal/android/b/i;-><init>(Landroid/content/Context;Lcom/paypal/android/b/i$a;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    const-string v2, "ANDROID_not_you_message"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v7, v6, v7, v6}, Lcom/paypal/android/b/i;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/MEP/b/e;

    invoke-direct {v0, p1}, Lcom/paypal/android/MEP/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->c()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->d()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v6, v6, v6, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v2, Lcom/paypal/android/b/a;

    invoke-direct {v2, p1}, Lcom/paypal/android/b/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getIsRememberMe()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/paypal/android/b/a;->setChecked(Z)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    invoke-virtual {v2, p0}, Lcom/paypal/android/b/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getAuthSetting()I

    move-result v2

    if-ne v2, v9, :cond_1

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    new-instance v3, Lcom/paypal/android/MEP/a/d$b;

    invoke-direct {v3, p0}, Lcom/paypal/android/MEP/a/d$b;-><init>(Lcom/paypal/android/MEP/a/d;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<html><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><head><style type=\"text/css\">b {color:#1B3664; font-family:Helvetica; font-size:12;}a {color:#686868; font-family:Helvetica; font-size:12;}</style></head><body><b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ANDROID_checkbox_opt_in"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<a href=\"About.Quick.Pay\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ANDROID_checkbox_whats_this"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</body>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/html"

    const-string v5, "utf-8"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getAuthSetting()I

    move-result v2

    if-ne v2, v9, :cond_2

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getShippingEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->isPersonalPayment()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v4

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const v3, 0xafe1982

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const-string v3, "ANDROID_login"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/a/e;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v4

    invoke-direct {v3, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    const-string v3, "ANDROID_cancel"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/a/e;->b()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/paypal/android/a/o$a;->f:Lcom/paypal/android/a/o$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v5, 0xa

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    const v2, -0xffff01

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "ANDROID_help"

    invoke-static {v2}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v2, v7, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/paypal/android/a/d;->a()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    if-nez v0, :cond_9

    new-instance v0, Lcom/paypal/android/b/e;

    invoke-direct {v0, p1}, Lcom/paypal/android/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    :goto_2
    sget-object v0, Lcom/paypal/android/a/o$a;->b:Lcom/paypal/android/a/o$a;

    invoke-static {v0, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/MEP/a/d;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->m:Landroid/widget/TextView;

    const v3, -0xcc9967

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->m:Landroid/widget/TextView;

    const-string v3, "ANDROID_logging_in_message"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->m:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getIsRememberMe()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->b:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->d()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "quickPay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    :cond_4
    sget-boolean v0, Lcom/paypal/android/MEP/a/d;->a:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->c:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->canShowCart()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v2, v7, v7}, Lcom/paypal/android/MEP/b/b;->a(ZZ)V

    goto/16 :goto_0

    :cond_7
    invoke-static {p1, v8, v10}, Lcom/paypal/android/a/d;->a(Landroid/content/Context;II)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v6, v7, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    sget-object v3, Lcom/paypal/android/a/o$a;->h:Lcom/paypal/android/a/o$a;

    invoke-static {v3, p1}, Lcom/paypal/android/a/o;->a(Lcom/paypal/android/a/o$a;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "ANDROID_review_text"

    invoke-static {v4}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7, v7, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getTextType()I

    move-result v2

    if-ne v2, v9, :cond_8

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    const-string v3, "ANDROID_donate"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/a/e;->a()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/paypal/android/a/d;->b()I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v2, v8, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v6, v7, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const v3, 0xafe1982

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const-string v3, "ANDROID_review"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-static {}, Lcom/paypal/android/a/e;->b()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_8
    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    const-string v3, "ANDROID_pay"

    invoke-static {v3}, Lcom/paypal/android/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto/16 :goto_2
.end method

.method public final a(Lcom/paypal/android/MEP/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    invoke-static {}, Lcom/paypal/android/MEP/a/d$1;->b()V

    return-void
.end method

.method public final a(Lcom/paypal/android/b/g;I)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->r:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->c()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/e;->d()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/paypal/android/MEP/a/d;->b()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->b:Lcom/paypal/android/MEP/a/d$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->d:Lcom/paypal/android/MEP/a/d$a;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v2, v4}, Lcom/paypal/android/MEP/b/b;->a(ZZ)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->a:Lcom/paypal/android/MEP/a/d$a;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->c:Lcom/paypal/android/MEP/a/d$a;

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->canShowCart()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->g:Lcom/paypal/android/MEP/b/b;

    invoke-virtual {v0, v4, v2}, Lcom/paypal/android/MEP/b/b;->a(ZZ)V

    :cond_4
    sget-object v0, Lcom/paypal/android/MEP/a/d;->l:Lcom/paypal/android/b/e;

    invoke-virtual {v0}, Lcom/paypal/android/b/e;->b()V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->c:Lcom/paypal/android/MEP/a/d$a;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/paypal/android/MEP/a/d;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/i;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->i:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v3}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    invoke-virtual {v0, v2}, Lcom/paypal/android/b/i;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->h:Lcom/paypal/android/b/i;

    iget-object v1, p0, Lcom/paypal/android/MEP/a/d;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/i;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final c()Lcom/paypal/android/MEP/a/d$a;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/paypal/android/MEP/a/d;->a:Z

    iput-object p1, p0, Lcom/paypal/android/MEP/a/d;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->b:Lcom/paypal/android/MEP/a/d$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->c:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->b:Lcom/paypal/android/MEP/a/d$a;

    sget-object v1, Lcom/paypal/android/MEP/a/d$a;->d:Lcom/paypal/android/MEP/a/d$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/paypal/android/MEP/a/d$a;->c:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v0}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    goto :goto_0
.end method

.method public final l()V
    .locals 4

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "usernameOrPhone"

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->r:Ljava/util/Hashtable;

    const-string v3, "usernameOrPhone"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "passwordOrPin"

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->r:Ljava/util/Hashtable;

    const-string v3, "passwordOrPin"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {v0, v1, p0}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/a/b;->a(I)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/paypal/android/a/b;->e()Lcom/paypal/android/a/b;

    move-result-object v0

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v1

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->o:Lcom/paypal/android/b/a;

    invoke-virtual {v0}, Lcom/paypal/android/b/a;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/paypal/android/MEP/PayPal;->setIsRememberMe(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->p:Landroid/webkit/WebView;

    if-ne p1, v3, :cond_2

    invoke-static {v4}, Lcom/paypal/android/MEP/a/d$1;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->d:Landroid/widget/Button;

    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/paypal/android/MEP/a/d$a;->a:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v3}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v3}, Lcom/paypal/android/MEP/b/e;->e()V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v1

    if-ne v1, v5, :cond_3

    const-string v1, "27892"

    const-string v3, "PaymentExecStatus"

    invoke-virtual {v0, v3}, Lcom/paypal/android/a/b;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v4}, Lcom/paypal/android/MEP/PayPalActivity;->paymentSucceeded(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v1, "quickPay"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/d;->d()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/paypal/android/MEP/a/d;->e:Landroid/widget/Button;

    if-ne p1, v3, :cond_7

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/d;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/paypal/android/MEP/a/d$a;->a:Lcom/paypal/android/MEP/a/d$a;

    invoke-virtual {p0, v2}, Lcom/paypal/android/MEP/a/d;->a(Lcom/paypal/android/MEP/a/d$a;)V

    iget-object v2, p0, Lcom/paypal/android/MEP/a/d;->n:Lcom/paypal/android/MEP/b/e;

    invoke-virtual {v2}, Lcom/paypal/android/MEP/b/e;->e()V

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getServer()I

    move-result v2

    if-ne v2, v5, :cond_6

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPayType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {v1}, Lcom/paypal/android/MEP/PayPal;->getPreapproval()Lcom/paypal/android/MEP/PayPalPreapproval;

    move-result-object v0

    const-string v1, "2011-07-06T23:59:49.000-07:00"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->setStartDate(Ljava/lang/String;)V

    const-string v1, "2011-08-07T23:59:49.000-07:00"

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalPreapproval;->setEndDate(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/paypal/android/MEP/PayPalPreapproval;->setPinRequired(Z)V

    :cond_5
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Lcom/paypal/android/a/a/c;

    invoke-direct {v2}, Lcom/paypal/android/a/a/c;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a/c;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/paypal/android/a/a/a;

    invoke-direct {v3}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "USD"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "2.00"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    new-instance v3, Lcom/paypal/android/a/a/k;

    invoke-direct {v3}, Lcom/paypal/android/a/a/k;-><init>()V

    new-instance v4, Lcom/paypal/android/a/a/a;

    invoke-direct {v4}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "USD"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "2.00"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/paypal/android/a/a/g;

    invoke-direct {v4}, Lcom/paypal/android/a/a/g;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "2093"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->a(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "BANK_INSTANT"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->b(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/paypal/android/a/a/c;

    invoke-direct {v2}, Lcom/paypal/android/a/a/c;-><init>()V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a/c;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/paypal/android/a/a/a;

    invoke-direct {v3}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "USD"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "2.00"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    new-instance v3, Lcom/paypal/android/a/a/k;

    invoke-direct {v3}, Lcom/paypal/android/a/a/k;-><init>()V

    new-instance v4, Lcom/paypal/android/a/a/a;

    invoke-direct {v4}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "USD"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "2.00"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/paypal/android/a/a/g;

    invoke-direct {v4}, Lcom/paypal/android/a/a/g;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "9853"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->a(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "CREDITCARD"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->b(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/paypal/android/a/a/c;

    invoke-direct {v2}, Lcom/paypal/android/a/a/c;-><init>()V

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lcom/paypal/android/a/a/c;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/paypal/android/a/a/a;

    invoke-direct {v3}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "USD"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/paypal/android/a/a/c;->a:Lcom/paypal/android/a/a/a;

    const-string v4, "2.00"

    invoke-virtual {v3, v4}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    new-instance v3, Lcom/paypal/android/a/a/k;

    invoke-direct {v3}, Lcom/paypal/android/a/a/k;-><init>()V

    new-instance v4, Lcom/paypal/android/a/a/a;

    invoke-direct {v4}, Lcom/paypal/android/a/a/a;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "USD"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->b(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->a:Lcom/paypal/android/a/a/a;

    const-string v5, "2.00"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/a;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/paypal/android/a/a/g;

    invoke-direct {v4}, Lcom/paypal/android/a/a/g;-><init>()V

    iput-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "9691"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->a(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/paypal/android/a/a/k;->b:Lcom/paypal/android/a/a/g;

    const-string v5, "CREDITCARD"

    invoke-virtual {v4, v5}, Lcom/paypal/android/a/a/g;->b(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/paypal/android/a/a/c;->d:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v3, "FundingPlanId"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v3, "FundingPlans"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/paypal/android/a/a/h;

    invoke-direct {v0}, Lcom/paypal/android/a/a/h;-><init>()V

    const-string v2, "Trenton"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->a(Ljava/lang/String;)V

    const-string v2, "123 Home St"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->c(Ljava/lang/String;)V

    const-string v2, "Apt B"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->d(Ljava/lang/String;)V

    const-string v2, "08601"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->e(Ljava/lang/String;)V

    const-string v2, "NJ"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->f(Ljava/lang/String;)V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->g(Ljava/lang/String;)V

    const-string v2, "US"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/paypal/android/a/a/h;

    invoke-direct {v0}, Lcom/paypal/android/a/a/h;-><init>()V

    const-string v2, "Hamlin"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->a(Ljava/lang/String;)V

    const-string v2, "3012 Church Rd"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->c(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->d(Ljava/lang/String;)V

    const-string v2, "14464"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->e(Ljava/lang/String;)V

    const-string v2, "NY"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->f(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->g(Ljava/lang/String;)V

    const-string v2, "US"

    invoke-virtual {v0, v2}, Lcom/paypal/android/a/a/h;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "ShippingAddressId"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/MEP/a/a;->a:Ljava/util/Hashtable;

    const-string v2, "AvailableAddresses"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/paypal/android/MEP/PayPalActivity;->getInstance()Lcom/paypal/android/MEP/PayPalActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/paypal/android/MEP/PayPalActivity;->LOGIN_SUCCESS:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/PayPalActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "quickPay"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/paypal/android/MEP/a/d;->d()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_8

    new-instance v0, Lcom/paypal/android/MEP/b/f;

    invoke-direct {v0, v2}, Lcom/paypal/android/MEP/b/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/paypal/android/MEP/b/f;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/MEP/a/d;->f:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    invoke-static {v5}, Lcom/paypal/android/MEP/a/d$1;->a(I)V

    goto/16 :goto_0
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
