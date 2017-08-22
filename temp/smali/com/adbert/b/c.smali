.class public Lcom/adbert/b/c;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adbert/b/c$a;,
        Lcom/adbert/b/c$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Lcom/adbert/b/g$a;

.field private c:Landroid/content/Context;

.field private d:Lcom/adbert/a/a/a;

.field private e:I

.field private f:Lcom/adbert/a/c/a;

.field private g:F

.field private h:F

.field private i:I

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/ImageView;

.field private m:Ljava/lang/String;

.field private n:Lcom/adbert/b/h;

.field private o:Landroid/widget/FrameLayout;

.field private p:Landroid/os/Handler;

.field private q:Z

.field private r:Z

.field private s:Landroid/graphics/Bitmap;

.field private t:Lcom/adbert/b/c$b;

.field private u:Lcom/adbert/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adbert/a/a/a;ILcom/adbert/a/c/a;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/adbert/b/c;->i:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/adbert/b/c;->m:Ljava/lang/String;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/adbert/b/c;->p:Landroid/os/Handler;

    .line 47
    iput-boolean v1, p0, Lcom/adbert/b/c;->q:Z

    .line 48
    iput-boolean v1, p0, Lcom/adbert/b/c;->r:Z

    .line 373
    new-instance v0, Lcom/adbert/b/c$8;

    invoke-direct {v0, p0}, Lcom/adbert/b/c$8;-><init>(Lcom/adbert/b/c;)V

    iput-object v0, p0, Lcom/adbert/b/c;->a:Ljava/lang/Runnable;

    .line 461
    new-instance v0, Lcom/adbert/b/c$9;

    invoke-direct {v0, p0}, Lcom/adbert/b/c$9;-><init>(Lcom/adbert/b/c;)V

    iput-object v0, p0, Lcom/adbert/b/c;->b:Lcom/adbert/b/g$a;

    .line 53
    iput-object p1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    .line 55
    int-to-double v0, p3

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/adbert/b/c;->e:I

    .line 56
    new-instance v0, Lcom/adbert/a/j;

    invoke-direct {v0, p1}, Lcom/adbert/a/j;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v0}, Lcom/adbert/a/j;->a()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/adbert/b/c;->h:F

    .line 58
    invoke-virtual {v0}, Lcom/adbert/a/j;->b()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/adbert/b/c;->g:F

    .line 59
    iput-object p4, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    .line 60
    new-instance v0, Lcom/adbert/b/c$1;

    invoke-direct {v0, p0}, Lcom/adbert/b/c$1;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {p0, v0}, Lcom/adbert/b/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/adbert/b/c;)Lcom/adbert/a/c/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/adbert/b/c;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/adbert/a/b/d;->aa:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/adbert/b/c;->m:Ljava/lang/String;

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adbert/b/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/b/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/adbert/b/c;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adbert/b/c;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZZZ)V
    .locals 1

    .prologue
    .line 117
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 118
    sget-object v0, Lcom/adbert/b/c$b;->a:Lcom/adbert/b/c$b;

    iput-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 120
    sget-object v0, Lcom/adbert/b/c$b;->b:Lcom/adbert/b/c$b;

    iput-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    goto :goto_0

    .line 121
    :cond_1
    if-eqz p3, :cond_2

    .line 122
    sget-object v0, Lcom/adbert/b/c$b;->e:Lcom/adbert/b/c$b;

    iput-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    goto :goto_0

    .line 123
    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 124
    sget-object v0, Lcom/adbert/b/c$b;->d:Lcom/adbert/b/c$b;

    iput-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    goto :goto_0

    .line 126
    :cond_3
    sget-object v0, Lcom/adbert/b/c$b;->c:Lcom/adbert/b/c$b;

    iput-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    goto :goto_0
.end method

.method static synthetic b(Lcom/adbert/b/c;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/adbert/b/c;->i:I

    return p1
.end method

.method static synthetic b(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adbert/b/c;->h()V

    return-void
.end method

.method static synthetic c(Lcom/adbert/b/c;)Lcom/adbert/a/a/a;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adbert/b/c;->g()V

    return-void
.end method

.method static synthetic e(Lcom/adbert/b/c;)Lcom/adbert/b/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/adbert/b/c;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private f()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 132
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    invoke-virtual {p0, v6, v0}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/adbert/b/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {p0, v6, v0}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/adbert/b/c;->getVideoHeight()I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    new-instance v1, Lcom/adbert/b/c$2;

    invoke-direct {v1, p0}, Lcom/adbert/b/c$2;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/adbert/b/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    .line 148
    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 149
    new-instance v0, Landroid/view/View;

    iget-object v4, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    invoke-virtual {p0, v0}, Lcom/adbert/b/c;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v5, p0, Lcom/adbert/b/c;->h:F

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {p0}, Lcom/adbert/b/c;->getBgColorAreaHeight()I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    sget-object v4, Lcom/adbert/a/b/e;->a:Lcom/adbert/a/b/e;

    invoke-virtual {v4}, Lcom/adbert/a/b/e;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 154
    if-ne v1, v6, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 156
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0, v3}, Lcom/adbert/b/c;->setVideoView(Landroid/view/ViewGroup;)V

    .line 161
    invoke-direct {p0, v2}, Lcom/adbert/b/c;->setLoadingBar(Landroid/view/ViewGroup;)V

    .line 162
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->a:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_2

    .line 163
    invoke-direct {p0, v2}, Lcom/adbert/b/c;->setCPMVideoImage(Landroid/view/ViewGroup;)V

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/adbert/b/c;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->d:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_4

    .line 167
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/adbert/b/c;->addView(Landroid/view/View;)V

    .line 169
    sget-object v0, Lcom/adbert/a/b/f;->a:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    iget v0, p0, Lcom/adbert/b/c;->e:I

    int-to-float v0, v0

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr v0, v3

    float-to-int v3, v0

    .line 172
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/adbert/b/c;->e:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v4, p0, Lcom/adbert/b/c;->e:I

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 176
    new-instance v0, Lcom/adbert/b/c$3;

    invoke-direct {v0, p0}, Lcom/adbert/b/c$3;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_4
    invoke-direct {p0}, Lcom/adbert/b/c;->i()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->e:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_7

    .line 186
    :cond_5
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    :cond_6
    :goto_1
    return-void

    .line 187
    :cond_7
    iget-boolean v0, p0, Lcom/adbert/b/c;->q:Z

    if-nez v0, :cond_6

    .line 188
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/adbert/b/c;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->p:Z

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    sget-object v1, Lcom/adbert/a/b/f;->h:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->c()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    sget-object v1, Lcom/adbert/a/b/f;->j:Lcom/adbert/a/b/f;

    invoke-virtual {p0}, Lcom/adbert/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/adbert/a/b/f;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->b()V

    goto :goto_0
.end method

.method private getBgColorAreaHeight()I
    .locals 2

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/adbert/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    const/high16 v0, 0x3fc00000    # 1.5f

    iget v1, p0, Lcom/adbert/b/c;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 448
    iget v1, p0, Lcom/adbert/b/c;->g:F

    int-to-float v0, v0

    sub-float v0, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCIPostion()Lcom/adbert/b/c$a;
    .locals 2

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->a:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_0

    .line 392
    sget-object v0, Lcom/adbert/b/c$a;->b:Lcom/adbert/b/c$a;

    .line 402
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->b:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_1

    .line 394
    sget-object v0, Lcom/adbert/b/c$a;->a:Lcom/adbert/b/c$a;

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->e:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_2

    .line 396
    sget-object v0, Lcom/adbert/b/c$a;->a:Lcom/adbert/b/c$a;

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->d:Lcom/adbert/b/c$b;

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/adbert/b/c;->q:Z

    if-eqz v0, :cond_4

    .line 398
    :cond_3
    sget-object v0, Lcom/adbert/b/c$a;->a:Lcom/adbert/b/c$a;

    goto :goto_0

    .line 399
    :cond_4
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->c:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_5

    .line 400
    sget-object v0, Lcom/adbert/b/c$a;->c:Lcom/adbert/b/c$a;

    goto :goto_0

    .line 402
    :cond_5
    sget-object v0, Lcom/adbert/b/c$a;->b:Lcom/adbert/b/c$a;

    goto :goto_0
.end method

.method private getImageHeight()I
    .locals 2

    .prologue
    .line 437
    invoke-direct {p0}, Lcom/adbert/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    const/high16 v0, 0x3fc00000    # 1.5f

    iget v1, p0, Lcom/adbert/b/c;->h:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 439
    invoke-direct {p0}, Lcom/adbert/b/c;->getVideoHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVideoHeight()I
    .locals 3

    .prologue
    const/high16 v2, 0x3f100000    # 0.5625f

    .line 423
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->e:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_0

    .line 424
    iget v0, p0, Lcom/adbert/b/c;->h:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 431
    :goto_0
    return v0

    .line 425
    :cond_0
    invoke-direct {p0}, Lcom/adbert/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget v0, p0, Lcom/adbert/b/c;->h:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 428
    :cond_1
    iget-boolean v0, p0, Lcom/adbert/b/c;->r:Z

    if-nez v0, :cond_2

    .line 429
    iget v0, p0, Lcom/adbert/b/c;->g:F

    float-to-int v0, v0

    add-int/lit8 v1, v0, -0x3

    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/adbert/a/i;->a(Landroid/app/Activity;)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0

    .line 431
    :cond_2
    iget v0, p0, Lcom/adbert/b/c;->g:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method private getViewType()Lcom/adbert/b/c$b;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/adbert/b/c;->t:Lcom/adbert/b/c$b;

    return-object v0
.end method

.method static synthetic h(Lcom/adbert/b/c;)Lcom/adbert/b/g;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->q:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    if-eqz v0, :cond_3

    move v0, v1

    move v2, v1

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->i:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v3, v3, Lcom/adbert/a/a/a;->i:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 353
    add-int/lit8 v2, v2, 0x1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    if-lez v2, :cond_2

    .line 356
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    invoke-virtual {v0, v1}, Lcom/adbert/b/h;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/adbert/b/c;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/b/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 358
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/adbert/b/c;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/adbert/b/c;->a:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 371
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 364
    :goto_1
    iget-object v2, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->i:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 365
    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->i:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4

    .line 366
    const/4 v0, 0x1

    .line 367
    iget-object v2, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    invoke-virtual {v2, v1}, Lcom/adbert/a/c/a;->endingCardAction(I)V

    .line 364
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static synthetic i(Lcom/adbert/b/c;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adbert/b/c;->i:I

    return v0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->a:Lcom/adbert/b/c$b;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v0

    sget-object v1, Lcom/adbert/b/c$b;->b:Lcom/adbert/b/c$b;

    if-ne v0, v1, :cond_1

    .line 407
    :cond_0
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 520
    iget v0, p0, Lcom/adbert/b/c;->i:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 524
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 529
    :cond_2
    return-void
.end method

.method static synthetic j(Lcom/adbert/b/c;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adbert/b/c;->j()V

    return-void
.end method

.method private setCPMVideoImage(Landroid/view/ViewGroup;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 283
    invoke-virtual {p0, v7, v6}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/adbert/b/c;->getImageHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 287
    iget-object v1, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/adbert/a/i;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-boolean v1, v1, Lcom/adbert/a/a/a;->C:Z

    if-eqz v1, :cond_2

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    .line 289
    new-instance v2, Lcom/adbert/b/d;

    iget-object v3, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    iget-object v5, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v5, v5, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/adbert/b/d;-><init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V

    .line 290
    invoke-virtual {p0, v7, v6}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v3, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    invoke-virtual {v2, v1, v3}, Lcom/adbert/b/d;->a(Ljava/lang/String;Lcom/adbert/a/a/a;)V

    .line 292
    invoke-virtual {v2}, Lcom/adbert/b/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/adbert/b/c;->h:F

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    invoke-virtual {v2}, Lcom/adbert/b/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0}, Lcom/adbert/b/c;->getImageHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 294
    invoke-virtual {v2}, Lcom/adbert/b/d;->getCover()Landroid/widget/RelativeLayout;

    move-result-object v1

    new-instance v2, Lcom/adbert/b/c$5;

    invoke-direct {v2, p0}, Lcom/adbert/b/c$5;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-boolean v1, v1, Lcom/adbert/a/a/a;->q:Z

    if-nez v1, :cond_1

    .line 318
    invoke-direct {p0, v0}, Lcom/adbert/b/c;->setEndingCard(Landroid/view/ViewGroup;)V

    .line 320
    :cond_1
    return-void

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v2, v2, Lcom/adbert/a/a/a;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {p0, v7, v6}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, p0, Lcom/adbert/b/c;->h:F

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0}, Lcom/adbert/b/c;->getImageHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    new-instance v3, Lcom/adbert/b/c$6;

    invoke-direct {v3, p0}, Lcom/adbert/b/c$6;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    .line 314
    iget-object v1, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setEndingCard(Landroid/view/ViewGroup;)V
    .locals 6

    .prologue
    .line 323
    const/4 v0, -0x1

    .line 324
    const/4 v1, -0x2

    .line 325
    iget v2, p0, Lcom/adbert/b/c;->e:I

    int-to-double v2, v2

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 326
    invoke-direct {p0}, Lcom/adbert/b/c;->getViewType()Lcom/adbert/b/c$b;

    move-result-object v3

    sget-object v4, Lcom/adbert/b/c$b;->a:Lcom/adbert/b/c$b;

    if-ne v3, v4, :cond_0

    .line 327
    new-instance v3, Lcom/adbert/b/h;

    iget-object v4, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/adbert/b/h;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    .line 328
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 331
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    invoke-virtual {v0}, Lcom/adbert/b/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/adbert/b/h;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    iget-object v1, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v1, v1, Lcom/adbert/a/a/a;->i:[Z

    iget v2, p0, Lcom/adbert/b/c;->e:I

    new-instance v3, Lcom/adbert/b/c$7;

    invoke-direct {v3, p0}, Lcom/adbert/b/c$7;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/adbert/b/h;->a([ZILcom/adbert/b/h$a;)V

    .line 346
    return-void

    .line 333
    :cond_0
    new-instance v3, Lcom/adbert/b/h;

    iget-object v4, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/adbert/b/h;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    .line 334
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 335
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    invoke-virtual {p1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 337
    iget-object v0, p0, Lcom/adbert/b/c;->n:Lcom/adbert/b/h;

    invoke-virtual {v0}, Lcom/adbert/b/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0
.end method

.method private setLoadingBar(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    .line 194
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 196
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/high16 v1, -0x10000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 197
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 198
    iget-object v0, p0, Lcom/adbert/b/c;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    return-void
.end method

.method private setVideoView(Landroid/view/ViewGroup;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 205
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 206
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 208
    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    .line 209
    invoke-direct {p0}, Lcom/adbert/b/c;->getCIPostion()Lcom/adbert/b/c$a;

    move-result-object v0

    .line 210
    sget-object v2, Lcom/adbert/b/c$a;->a:Lcom/adbert/b/c$a;

    if-ne v0, v2, :cond_3

    .line 211
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    iget-object v2, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    iget v3, p0, Lcom/adbert/b/c;->e:I

    iget v4, p0, Lcom/adbert/b/c;->e:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 214
    iget-object v2, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    invoke-virtual {v2, v0, v8}, Lcom/adbert/a/c/a;->setLogo(Landroid/view/ViewGroup;Z)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    new-instance v2, Lcom/adbert/b/c$4;

    invoke-direct {v2, p0}, Lcom/adbert/b/c$4;-><init>(Lcom/adbert/b/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    .line 238
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    const v2, -0x777778

    invoke-virtual {v0, v6, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 239
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 240
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/adbert/b/c;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    iget-object v0, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-boolean v0, v0, Lcom/adbert/a/a/a;->q:Z

    if-nez v0, :cond_1

    .line 244
    invoke-direct {p0, p1}, Lcom/adbert/b/c;->setEndingCard(Landroid/view/ViewGroup;)V

    .line 247
    :cond_1
    new-instance v0, Lcom/adbert/b/g;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    iget v3, p0, Lcom/adbert/b/c;->h:F

    float-to-int v3, v3

    invoke-direct {p0}, Lcom/adbert/b/c;->getVideoHeight()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/adbert/b/g;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    .line 248
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 251
    iget-object v2, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    iget-object v2, p0, Lcom/adbert/b/c;->b:Lcom/adbert/b/g$a;

    invoke-virtual {v0, v2}, Lcom/adbert/b/g;->setListener(Lcom/adbert/b/g$a;)V

    .line 254
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    .line 255
    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 256
    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v5, v8}, Lcom/adbert/b/c;->a(ZZ)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/adbert/b/c;->getVideoHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 259
    iget-object v0, p0, Lcom/adbert/b/c;->d:Lcom/adbert/a/a/a;

    iget-object v0, v0, Lcom/adbert/a/a/a;->f:Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    iget-object v1, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_2
    iget-object v1, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v1, v0}, Lcom/adbert/b/g;->setUrl(Ljava/lang/String;)V

    .line 264
    return-void

    .line 216
    :cond_3
    sget-object v2, Lcom/adbert/b/c$a;->b:Lcom/adbert/b/c$a;

    if-ne v0, v2, :cond_4

    .line 217
    iget-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    iget v2, p0, Lcom/adbert/b/c;->e:I

    iget v3, p0, Lcom/adbert/b/c;->e:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 218
    iget-object v0, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    invoke-virtual {v0, p0, v5}, Lcom/adbert/a/c/a;->setLogo(Landroid/view/ViewGroup;Z)V

    goto/16 :goto_0

    .line 219
    :cond_4
    sget-object v2, Lcom/adbert/b/c$a;->c:Lcom/adbert/b/c$a;

    if-ne v0, v2, :cond_0

    .line 220
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 222
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 223
    iget v3, p0, Lcom/adbert/b/c;->e:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/adbert/b/c;->e:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 224
    iget-object v2, p0, Lcom/adbert/b/c;->f:Lcom/adbert/a/c/a;

    invoke-virtual {v2, v0, v8}, Lcom/adbert/a/c/a;->setLogo(Landroid/view/ViewGroup;Z)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/adbert/b/c;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/adbert/b/c;->l:Landroid/widget/ImageView;

    iget v2, p0, Lcom/adbert/b/c;->e:I

    iget v3, p0, Lcom/adbert/b/c;->e:I

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(ZZ)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 414
    const/4 v0, -0x1

    .line 415
    const/4 v1, -0x2

    .line 416
    if-eqz p1, :cond_0

    move v2, v0

    .line 417
    :goto_0
    if-eqz p2, :cond_1

    .line 418
    :goto_1
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 419
    return-object v1

    :cond_0
    move v2, v1

    .line 416
    goto :goto_0

    :cond_1
    move v0, v1

    .line 417
    goto :goto_1
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/adbert/b/c;->a(ZZZ)V

    .line 101
    iput-boolean v2, p0, Lcom/adbert/b/c;->q:Z

    .line 102
    iput-boolean v2, p0, Lcom/adbert/b/c;->r:Z

    .line 103
    invoke-direct {p0}, Lcom/adbert/b/c;->f()V

    .line 104
    return-void
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 70
    int-to-float v0, p1

    iput v0, p0, Lcom/adbert/b/c;->h:F

    .line 71
    int-to-float v0, p2

    iput v0, p0, Lcom/adbert/b/c;->g:F

    .line 72
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/adbert/b/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/adbert/a/i;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v1, v0, v1}, Lcom/adbert/b/c;->a(ZZZ)V

    .line 93
    iput p1, p0, Lcom/adbert/b/c;->i:I

    .line 94
    iput-boolean p2, p0, Lcom/adbert/b/c;->q:Z

    .line 95
    iput-boolean p3, p0, Lcom/adbert/b/c;->r:Z

    .line 96
    invoke-direct {p0}, Lcom/adbert/b/c;->f()V

    .line 97
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/adbert/b/c;->e()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/adbert/b/c;->a(ZZZ)V

    .line 88
    invoke-direct {p0}, Lcom/adbert/b/c;->f()V

    .line 89
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->pause()V

    .line 534
    iget-object v0, p0, Lcom/adbert/b/c;->o:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 536
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->start()V

    .line 542
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->a()V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adbert/b/c;->s:Landroid/graphics/Bitmap;

    .line 552
    :cond_1
    return-void
.end method

.method public getSeekTo()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/adbert/b/c;->u:Lcom/adbert/b/g;

    invoke-virtual {v0}, Lcom/adbert/b/g;->getCurrentPosition()I

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/adbert/b/c;->i:I

    goto :goto_0
.end method
